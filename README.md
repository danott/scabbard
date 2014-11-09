## Constraints

- Everything works offline except authentication and searching for a new
  passage.
- The server is dumb. It just stores data for the user so they can persist
  across devices.
- The client is the source of truth...but only truth that the server knows how
  to process. When changes come form the client, they are expected to be
  reasonable. If they aren't, fail loudly.
