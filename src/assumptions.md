### Assumptions
  1. Our server is Ubuntu 16.04
  2. Our local computer is also Ubuntu 16.04
  3. We are deploying to a server whose domain will be `pastex.rawcode.in`, we will refer to this as the *server* throughout the book. You can checkout the source code of this app at: https://github.com/minhajuddin/pastex
  4. The server process runs under a user called `pastex`
  6. We'll be running our app server behind nginx
  7. We'll be setting up SSL using [Let's Encrypt](https://letsencrypt.org/)
  8. We'll be using [distillery](https://github.com/bitwalker/distillery) to do the deploys
  9. We'll be using git tags to tag minor version upgrades
  10. We'll be running our builds on the production server in the *Simple Deploy* setup
  11. We'll use docker to build in the *Multi Server Deploy* setup

