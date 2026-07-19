$mdFiles = Get-ChildItem -Path "docs", "records" -Filter "*.md" -Recurse | Where-Object { $_.FullName -notmatch 'starter-kits[\\/]SK-101[\\/]template' }
$report = @()

foreach ($file in $mdFiles) {
    # Exclude READMEs in records, and .gitkeep (though .gitkeep isn't .md usually)
    if ($file.Name -eq "README.md" -and $file.FullName -match 'records') {
        continue
    }

    $content = Get-Content $file.FullName -Raw
    $hasFrontmatter = $content -match '(?s)^---\r?\n(.*?)\r?\n---(.*)'
    $oldFrontmatter = ""
    $body = ""
    
    if ($hasFrontmatter) {
        $oldFrontmatter = $matches[1]
        $body = "`n" + $matches[2].TrimStart()
    } else {
        $body = "`n" + $content.TrimStart()
    }

    # Extract existing fields using regex
    $id = ""
    $title = ""
    $version = "1.0"
    $status = "Active"
    
    if ($oldFrontmatter -match '(?mi)^Document ID:\s*(.+)$') { $id = $matches[1].Trim() }
    elseif ($oldFrontmatter -match '(?mi)^identifier:\s*(.+)$') { $id = $matches[1].Trim() }
    
    if ($oldFrontmatter -match '(?mi)^Title:\s*(.+)$') { $title = $matches[1].Trim() }
    elseif ($oldFrontmatter -match '(?mi)^title:\s*(.+)$') { $title = $matches[1].Trim() }
    
    if ($oldFrontmatter -match '(?mi)^Version:\s*(.+)$') { $version = $matches[1].Trim() }
    elseif ($oldFrontmatter -match '(?mi)^version:\s*(.+)$') { $version = $matches[1].Trim() }
    
    if ($oldFrontmatter -match '(?mi)^Status:\s*(.+)$') { $status = $matches[1].Trim() }
    elseif ($oldFrontmatter -match '(?mi)^status:\s*(.+)$') { $status = $matches[1].Trim() }
    
    # Normalize status
    if ($status -eq "Approved") { $status = "Active" }
    elseif ($status -eq "Pending") { $status = "Review" }
    elseif ($status -match "Superseded") { $status = "Superseded" }

    # Fallback IDs
    if (-not $id) {
        $id = $file.BaseName
    }
    if (-not $title) {
        $title = $file.BaseName.Replace("-", " ")
    }

    $owner = ""
    $lifecycle = ""
    $category = ""
    $governed_by = ""
    $inherits_from = ""
    
    $path = $file.FullName -replace '\\', '/'

    if ($path -match '/docs/01-governance/') {
        $owner = "Governance"
        $lifecycle = "Governance"
        if ($id -eq "HC-001") {
            $category = "Constitution"
            $governed_by = ""
            $inherits_from = ""
        } elseif ($title -match "Charter") {
            $category = "Constitutional Charter"
            $governed_by = "HC-001"
            $inherits_from = "HC-001"
        } else {
            $category = "Governance Standard"
            if ($id -eq "GHS-001") {
                $governed_by = "HC-001"
                $inherits_from = "HC-001"
            } else {
                $governed_by = "GHS-001"
                $inherits_from = "GHS-001"
            }
        }
    } elseif ($path -match '/docs/02-operational/') {
        $owner = "Operational"
        $lifecycle = "Operational"
        $category = "Operational Standard"
        $governed_by = "GHS-001"
        $inherits_from = "GHS-001"
    } elseif ($path -match '/docs/03-systems/') {
        $owner = "Engineering System"
        $lifecycle = "System"
        if ($id -match '^RP-') {
            $category = "System Standard"
            $governed_by = "IAS-001"
            $inherits_from = "IAS-001"
        } elseif ($id -match '^RS-') {
            $category = "System Standard"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        } elseif ($id -match '^PS-') {
            $category = "System Standard"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        } elseif ($id -match '^ES-') {
            $category = "Engineering Standard"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        } elseif ($path -match '/profiles/') {
            $category = "Profile"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        } elseif ($path -match '/processes/') {
            $category = "Process"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        } elseif ($path -match '/guides/') {
            $category = "Guide"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        } else {
            $category = "System Standard"
            $governed_by = "ENG-001"
            $inherits_from = "OM-001"
        }
    } elseif ($path -match '/docs/04-eos/') {
        $owner = "EOS"
        $lifecycle = "EOS"
        if ($path -match '/blueprints/') {
            $category = "Blueprint"
        } elseif ($path -match '/templates/') {
            $category = "Template"
        } elseif ($path -match '/starter-kits/') {
            $category = "Starter Kit"
        } else {
            $category = "Guide"
        }
        $governed_by = "EOS"
        $inherits_from = "ENG-001"
    } elseif ($path -match '/records/') {
        $owner = "Records"
        $lifecycle = "Record"
        if ($path -match '/migration/') {
            $category = "Migration Record"
            $governed_by = "GHS-001"
            $inherits_from = "GHS-001"
        } elseif ($path -match '/architecture/') {
            $category = "Record"
            $governed_by = "OM-001"
            $inherits_from = "OM-001"
        } elseif ($path -match '/releases/') {
            $category = "Release Record"
            $governed_by = "ENG-001"
            $inherits_from = "ENG-001"
        } elseif ($path -match '/verification/') {
            $category = "Verification Record"
            $governed_by = "VER-001"
            $inherits_from = "VER-001"
        } else {
            $category = "Record"
            $governed_by = "Governance"
            $inherits_from = "Governance"
        }
    }

    $newFrontmatter = "---`nidentifier: $id`ntitle: $title`nversion: $version`nstatus: $status`nowner: $owner`naudience: `n  - Architects`n  - Engineers`n  - AI Assistants`ncategory: $category`nlifecycle: $lifecycle`n"
    if ($governed_by) {
        $newFrontmatter += "governed_by: `n  - $governed_by`n"
    } else {
        $newFrontmatter += "governed_by: []`n"
    }
    if ($inherits_from) {
        $newFrontmatter += "inherits_from:`n  - $inherits_from`n"
    } else {
        $newFrontmatter += "inherits_from: []`n"
    }
    $newFrontmatter += "---"
    
    $newContent = $newFrontmatter + $body
    Set-Content -Path $file.FullName -Value $newContent -NoNewline
    
    $report += [PSCustomObject]@{
        Identifier = $id
        Status = $status
        HasAuth = [bool]$governed_by
    }
}
$report | ConvertTo-Json -Depth 3 > metadata_report.json
