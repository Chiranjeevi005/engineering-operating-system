"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const greeting_service_1 = require("../../src/application/greeting-service");
describe('GreetingService', () => {
    it('should return a properly formatted greeting', () => {
        const service = new greeting_service_1.GreetingService();
        const result = service.getGreetingForUser('Engineer');
        expect(result.message).toBe('Hello, Engineer! Welcome to the Enterprise.');
        expect(result.timestamp).toBeInstanceOf(Date);
    });
});
