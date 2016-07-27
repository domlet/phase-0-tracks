2. What are some common HTTP status codes?

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

Source: https://www.smartlabsoftware.com/ref/http-status-codes.htm

3. What is the difference between a GET request and a POST request? When might each be used?

GET 
- url includes key-value pairs
- not good for sensitive information)
- not good for high character count submissions 

POST
- data not in URL string (but not encrypted)
- data passed thru header file

For my reference: https://www.dropbox.com/s/ucxq12cfhznwgjl/Screenshot%202016-07-26%2023.48.29.png?dl=0

4. Optional bonus question: What is a cookie? How does it relate to HTTP requests?

A cookie is a text file saved to a user's computer by a website. It contains information submitted by the user to the site. The site can access the cookie (and the information in it) to customize the user's experience on their site (displays, shopping cart, etc.).