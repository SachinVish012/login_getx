import 'dart:convert';
import 'package:login_getx/data/app_exception.dart';
import 'package:login_getx/data/resppnses/network/base_api.dart';
import 'package:http/http.dart' as http;

class NetworkAPIService extends BaseApiService{
  @override
  Future getAPI(String url) async{
    dynamic responseJson;
    try{
      final response= await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson=returnJsonData(response);
    }
    on RequestTimeout{
      throw RequestTimeout("");
    }
    return responseJson;
  }

  @override
  Future postAPI(var data,String url) async{
    dynamic responseJson;
    try{
      final response= await http.post(Uri.parse(url),body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responseJson=returnJsonData(response);
    }
    on RequestTimeout{
      throw RequestTimeout("");
    }
    return responseJson;
  }

  Future returnJsonData(http.Response response){
    switch(response.statusCode){
      case 200:
        return jsonDecode(response.body);
      default:
        throw ServerError("");
    }
  }


}