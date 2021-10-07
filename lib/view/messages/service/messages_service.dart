import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_model.dart';


import 'package:vexana/vexana.dart';

abstract class IMessagesService {
  final INetworkManager networkManager;

  IMessagesService(this.networkManager);

  Future<Product_Response?> getMessages(
      );
}

class MessagesService extends IMessagesService {
  final String _path = 'Products/getall';
  MessagesService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<Product_Response?> getMessages() async {
    final response =
        await networkManager.send(_path, parseModel: Product_Response(), method: RequestType.GET);
    return response.data;
  }
}
