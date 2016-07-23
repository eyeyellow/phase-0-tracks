## Common HTTP Status Codes

# 2xx class - indicates the action requested by the client was received, understood, accepted, and processed successfully
  200 - OK - everything is fine
  204 - server processed request, but it is not returning any content

# 3xx class - indicates the client must take additional action to complete the request, like with URL redirection
  301 - moved permanently - direct to another URI
  307 - temporary redirect - could change in the future
  308 - permanent redirect

# 4xx class - intended for situations in which the client seems to have erred
  400 - bad request - b/c client error like with wrong syntax
  401 - forbidden - when authorization is required but has failed
  403 - forbidden - valid request, but user does not have the necessary permission
  404 - not found - client communicated with server, but server could not find what was requested
  451 - Unavailable for legal reasons - server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource

# 5xx class - The server failed to fulfill an apparently valid request
  500 - internal server error - unexpected condition was encountered
  502 - bad gateway - server received invalid request from an upstream server
  504 - gateway timeout - server was acting as gateway and did not receive timely response from upsteram server
  511 - network authentication required - client needs to authenticate to gain access