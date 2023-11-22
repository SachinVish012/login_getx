
class AppException implements Exception{
  
  final msg;
  final prefix;
  AppException([this.msg,this.prefix]);

  String toString(){
    return '$prefix$msg';
  }
}

class InternetException extends AppException{
  InternetException([String? msg]):super(msg,"No Internet");
}

class RequestTimeout extends AppException{
  RequestTimeout([String? msg]):super(msg,"Request Timeout");
}

class ServerError extends AppException{
  ServerError([String? msg]):super(msg,"Server Error");
}