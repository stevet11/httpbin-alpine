stevet/httpbin-alpine
============

What is httpbin?
=========
[httpbin](http://httpbin.org/) HTTP Request & Response Debugging

Example usage
=========
    docker run -p 8000 stevet/httpbin-alpine

Docker compose
=============
    version: "2"
      services:
         httpbin:
           image: stevet/httpbin-alpine:latest
           ports:
             - "8000:8000"
  
AUTHOR
------
[Kenneth Reitz](http://www.kennethreitz.org/) Project.

SEE ALSO
--------
http://python-requests.org
https://hub.docker.com/r/citizenstig/httpbin/
