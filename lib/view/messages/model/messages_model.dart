import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'messages_model.g.dart';

@JsonSerializable()
class ProductModel extends INetworkModel<ProductModel> {
  int? productId;
  int? categoryId;
  String? productName;
  int? unitsInStock;
  int? unitPrice;

  ProductModel(
      {this.productId,
      this.categoryId,
      this.productName,
      this.unitsInStock,
      this.unitPrice});

  @override
  ProductModel fromJson(Map<String, Object?> json) {
    return _$ProductModelFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$ProductModelToJson(this);
  }
}
