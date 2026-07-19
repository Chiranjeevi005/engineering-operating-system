import { createGreeting, Greeting } from '../domain/greeting';

export class GreetingService {
  public getGreetingForUser(name: string): Greeting {
    return createGreeting(name);
  }
}
