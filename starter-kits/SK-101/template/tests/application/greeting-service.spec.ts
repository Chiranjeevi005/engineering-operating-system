import { GreetingService } from '../../src/application/greeting-service';

describe('GreetingService', () => {
  it('should return a properly formatted greeting', () => {
    const service = new GreetingService();
    const result = service.getGreetingForUser('Engineer');
    
    expect(result.message).toBe('Hello, Engineer! Welcome to the Enterprise.');
    expect(result.timestamp).toBeInstanceOf(Date);
  });
});
