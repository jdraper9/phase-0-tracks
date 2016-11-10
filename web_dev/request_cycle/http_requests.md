#HTTP Requests

1. What are some common HTTP status codes?
	* 200 - successful response
	* 1xx - informational message (rarely seen)
	* 2xx - succesful response
	* 3xx - redirection response
	* 4xx - client side error (i.e. user typing wrong URL in address bar)
	* 5xx - server side error (database server down, out of disk space, etc)
	* Common examples
		* 404 - requested resource not found
		* 403 - forbidden, not related to authentication problem (i.e. server maintaining whitelist of machines that can access that system and user's machine not being on it)
		* 401 - unauthorized error
		* 500 - internal server error. Called when no other errors make sense or are specified
		* 503 - service unavailable. Could be temporary
		* 504 - gateway timeout. "A proxy server needs to communicate with a secondary web server, such as an apache server, and access to that server timed out"
2. What is the difference between a GET request and a POST request? When might each be used?
	* GET usually intended to retrieve some data, with no side effects when called repeatedly. Used for viewing something without changing it (i.e. search page)
	* POST can have side effects, and is used to change something (i.e. can change your password)
3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	* "A small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server."
	* Used mainly for
		1. Session management (login info)
		2. Personalization (user preferences)
		3. Tracking (analyzing user behavior)