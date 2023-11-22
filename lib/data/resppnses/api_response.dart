
import 'package:login_getx/data/resppnses/status.dart';

class APIResponse<T>{
  Status? status;
  T? data;
  String? message;

  APIResponse(this.status,this.data,this.message);

  APIResponse.loading(): status=Status.Loading;
  APIResponse.done():status=Status.Done;
  APIResponse.error():status=Status.Error;

  @override
  String toString(){
    return '$status$data$message';
  }
}