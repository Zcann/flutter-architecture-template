import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

//import 'messages_model.dart';

//part 'messages_response_model.g.dart';

class Product_Response extends INetworkModel<Product_Response>{
  List<Data>? data;
  bool? success;
  String? message;

  Product_Response({this.data, this.success, this.message});

  Product_Response.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data =  <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    data['message'] = this.message;
    return data;
  }

  @override
  Product_Response fromJson(Map<String, dynamic> json) {
    return Product_Response.fromJson(json);
  }
}

class Data {
  int? productId;
  int? categoryId;
  String? productName;
  int? unitsInStock;
  double? unitPrice;

  Data(
      {this.productId,
      this.categoryId,
      this.productName,
      this.unitsInStock,
      this.unitPrice});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    categoryId = json['categoryId'];
    productName = json['productName'];
    unitsInStock = json['unitsInStock'];
    unitPrice = json['unitPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['categoryId'] = this.categoryId;
    data['productName'] = this.productName;
    data['unitsInStock'] = this.unitsInStock;
    data['unitPrice'] = this.unitPrice;
    return data;
  }
}