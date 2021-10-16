import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';


part 'sites_model.g.dart';

@JsonSerializable()
class SitesModel extends INetworkModel<SitesModel> {
  String? siteName;

  SitesModel({this.siteName});

  @override
  Map<String, dynamic> toJson() {
    return _$SitesModelToJson(this);
  }

  @override
  SitesModel fromJson(Map<String, Object?> json) {
    return _$SitesModelFromJson(json);
  }
}
