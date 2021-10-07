// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    productId: json['productId'] as int?,
    categoryId: json['categoryId'] as int?,
    productName: json['productName'] as String?,
    unitsInStock: json['unitsInStock'] as int?,
    unitPrice: json['unitPrice'] as int?,
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'categoryId': instance.categoryId,
      'productName': instance.productName,
      'unitsInStock': instance.unitsInStock,
      'unitPrice': instance.unitPrice,
    };
