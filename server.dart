import 'dart:io';
main() async{
  const port=55838;
  final InternetAddress address= InternetAddress.loopbackIPv4;
  HttpServer requestServer= await HttpServer.bind(address, port);
  print("listening on LocalHost: ${requestServer.port}");
  await for(HttpRequest request in requestServer){
    if(request.method=="post"){
      request.response..write("good luck")..close();
    }
    else(){
      request.response..write("failed to sign in")..close();
    }
  }

}