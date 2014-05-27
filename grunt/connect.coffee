# Connect
# Since we don't need a backend server to run our software, we'll use connect to start up a local server with little effort which uses few resources.

module.exports =
  server:
    options:
      base: 'build'
      keepalive: true
      port: 9001
