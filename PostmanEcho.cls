public class PostmanEcho {
    public static void getdata(){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
        req.setMethod('GET');
        HttpResponse res = new Http().send(req);
        System.debug('Result: '+res.getBody());
    }
}