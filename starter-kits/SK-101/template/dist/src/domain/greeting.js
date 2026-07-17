"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.createGreeting = void 0;
const createGreeting = (name) => {
    return {
        message: `Hello, ${name}! Welcome to the Enterprise.`,
        timestamp: new Date(),
    };
};
exports.createGreeting = createGreeting;
