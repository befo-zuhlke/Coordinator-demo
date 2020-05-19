# Coordinator-demo

A demo that shows coordinator in action.

The main function of this repo is to hopefully address any questions or concerns about using this pattern in certain flows.

The Gist of the coordinator pattern is to allow you to use Storyboards without the hard coupling of segue's, it keeps your view controller's completely isolated. This gives you the following benefits

- Universal link and deep link: when supporting deep link, you might need to open specific view regardless of the navigation history. Coordinator pattern is really helpful to keep things tidy there and avoid creating extra dependencies in the flow
- A/B testing and feature flag: when you want to trigger different kind of view or a different flow, using Coordinator pattern helps a lot to overload your View layer.
- Testability: Coordinator pattern is fully testable since it relies to protocol implementation. It can be helpful to create unit test of user flow or bypass specific one during ui tests.

*from* [Coordinator-pattern-swift](https://benoitpasquier.com/coordinator-pattern-swift/)

Your coordinator's handle all navigation logic and also inject dependencies into the view's they have domain over.

Another good resource for understanding and implementing this pattern yourself [is here](https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps)


