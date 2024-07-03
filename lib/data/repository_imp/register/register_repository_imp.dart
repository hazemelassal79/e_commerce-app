import 'package:e_commerce/data/data_sources/register/register_data_source.dart';
import 'package:e_commerce/domain/repository/register/register_repository.dart';

class RegisterRepositoryImp implements RegisterRepository {
  final RegisterDataSource _registerdataSource;
  RegisterRepositoryImp(this._registerdataSource);

  @override
  Future<void> register() async{
  var response =await _registerdataSource.register();
  if (response.statusCode==201&& response.data["message"]=="success"){

   }
  else if (response.statusCode==409){
    
   }
  else{

  }
  }
}
