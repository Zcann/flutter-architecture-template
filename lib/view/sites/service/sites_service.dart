import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_model.dart';


import 'package:vexana/vexana.dart';

abstract class ISitesService {
  final INetworkManager networkManager;

  ISitesService(this.networkManager);

  Future<Product_Response?> getSites(
      );
}

class SitesService extends ISitesService {
  final String _path = 'Products/getall';
  SitesService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<Product_Response?> getSites() async {
    final response =
        await networkManager.send(_path, parseModel: Product_Response(), method: RequestType.GET);
    return response.data;
  }
}
