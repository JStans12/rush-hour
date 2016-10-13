$.ajax({
      url: "http://localhost:9393/sources/google/data",
      type: 'POST',
      dataType: 'json',
      contentType: 'application/json',
      processData: false,
      data: { value: 'url="http://jumpstartlab.com/blog"&requestedAt="2013-02-16 21=38=28 -0700"&respondedIn=37&referredBy="http=//jumpstartlab.com"&requestType="GET"&eventName="socialLogin"&userAgent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17"&resolutionWidth="1920"&resolutionHeight="1280"&ip="63.29.38.211"' },
      success: function (data) {
        alert(JSON.stringify(data));
      },
      error: function(){
        alert("Cannot get data");
      }
});
