# Introduction
Deploying Phoenix Apps is a very involved process. I hope this book guides you
through the complete process. It has a few deployment strategies


### Simple Git Push Deploy
This strategy allows you to deploy your code to a single server with a `git push`.
This is the simplest and should be used if you have just one app server.

### Multi Server Deploy
This strategy allows you to build your release inside a docker container and then
distribute it to your servers for deployment. Use this if you have more than one app server.


> Contribute:
>
> If you find issues or can improve this guide, please create a pull request at: https://github.com/minhajuddin/continuous_deployment_for_phoenix_apps
