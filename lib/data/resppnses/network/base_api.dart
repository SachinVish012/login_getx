
abstract class BaseApiService{
  Future<dynamic> getAPI(String url);
  Future<dynamic> postAPI(dynamic data,String url);
}