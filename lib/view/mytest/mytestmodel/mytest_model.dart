import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
import '../../../core/base/model/base_model.dart';

part 'mytest_model.g.dart';

@JsonSerializable()
class myTestModel extends INetworkModel<myTestModel> {
  String? name;

  myTestModel({this.name});

  @override
  Map<String, dynamic> toJson() {
    return _$myTestModelToJson(this);
  }

  @override
  myTestModel fromJson(Map<String, Object?> json) {
    return _$myTestModelFromJson(json);
  }
}