"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.GreetingService = void 0;
const greeting_1 = require("../domain/greeting");
class GreetingService {
    getGreetingForUser(name) {
        return (0, greeting_1.createGreeting)(name);
    }
}
exports.GreetingService = GreetingService;
