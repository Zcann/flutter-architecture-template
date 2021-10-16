import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_model.dart';
import 'package:fluttermvvmtemplate/view/register/model/register_model.dart';


import 'package:vexana/vexana.dart';

abstract class IRegisterService {
  final INetworkManager networkManager;

  IRegisterService(this.networkManager);

  Future<RegisterModel?> toReg(RegisterModel newReg);
}

class RegisterService extends IRegisterService {
  final String _path = 'Products/getall';
  RegisterService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<RegisterModel?> toReg(RegisterModel newReg) async {
    final response =
        await networkManager.send(_path, parseModel: RegisterModel(), method: RequestType.POST
        ,data: newReg);
      return response.data;
  }
}
