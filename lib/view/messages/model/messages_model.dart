import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/model/base_model.dart';

part 'messages_model.g.dart';

@JsonSerializable()
class MessagesModel extends BaseModel {
  int? userId;


  Map<String, dynamic> toJson() {
    return _$MessagesModelToJson(this);
  }

  @override
  fromJson(Map<String, Object> json) {
    return _$MessagesModelFromJson(json);
  }
}
