
class AppException implements Exception{

  final msg;
  final prefix;
  AppException({this.msg,this.prefix});
}

class InternetException extends AppException{

  //InternetException({})
}