
Background: Create and initialize base Url
	Given url: 'http://localhost:8080

@PKCS7Controller.parseToken.OK
Scenario: parseToken OK
# Parse Token
Given path '/api/v1/pkcs7/parseToken'
And request { "token": "-----BEGIN PKCS7---- <resto-del-token> ------END PKCS7-----" }
And headers {Accept : 'application/json', Content-Type: 'application/json'}
When method post
And status 200
And print response
And match response.responseCode == "00"
