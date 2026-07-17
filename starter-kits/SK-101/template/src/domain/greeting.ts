export interface Greeting {
  message: string;
  timestamp: Date;
}

export const createGreeting = (name: string): Greeting => {
  return {
    message: `Hello, ${name}! Welcome to the Enterprise.`,
    timestamp: new Date(),
  };
};
