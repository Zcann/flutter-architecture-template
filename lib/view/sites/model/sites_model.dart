import 'package:json_annotation/json_annotation.dart';
import '../../../core/base/model/base_model.dart';

part 'sites_model.g.dart';

@JsonSerializable()
class SitesModel extends BaseModel {
  String? siteName;


  Map<String, dynamic> toJson() {
    return _$SitesModelToJson(this);
  }

  @override
  fromJson(Map<String, Object> json) {
    return _$SitesModelFromJson(json);
  }
}
