var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;

var req = new  XMLHttpRequest();
req.open( "POST", "http://localhost:9393/sources/google/data", true);
req.setRequestHeader("Content-Type", "application/json");
req.send(JSON.stringify({
    payload: {"url":"http://google.com/about","requestedAt":"2013-01-16 21:38:28 -0700","respondedIn":90,"referredBy":"http://apple.com","requestType":"GET","parameters":["what","huh"],"eventName": "show","userAgent":"Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17","resolutionWidth":"1920","resolutionHeight":"1080","ip":"59.29.38.03"}
}));