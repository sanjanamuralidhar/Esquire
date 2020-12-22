            import 'package:openapi/model/served_product_warranty.dart';
            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/customer.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/product.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'served_product.g.dart';

abstract class ServedProduct implements Built<ServedProduct, ServedProductBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customSerialNumber')
    String get customSerialNumber;
    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'invoiceNo')
    String get invoiceNo;
    
        @nullable
    @BuiltValueField(wireName: r'mainProduct')
    ServedProduct get mainProduct;
    
        @nullable
    @BuiltValueField(wireName: r'product')
    Product get product;
    
        @nullable
    @BuiltValueField(wireName: r'productLocation')
    Address get productLocation;
    
        @nullable
    @BuiltValueField(wireName: r'purchasedDate')
    DateTime get purchasedDate;
    
        @nullable
    @BuiltValueField(wireName: r'purchasedFromHere')
    bool get purchasedFromHere;
    
        @nullable
    @BuiltValueField(wireName: r'purchasedPrice')
    num get purchasedPrice;
    
        @nullable
    @BuiltValueField(wireName: r'serialNumber')
    String get serialNumber;
    
        @nullable
    @BuiltValueField(wireName: r'serviceType')
    String get serviceType;
        //enum serviceTypeEnum {  CARRY_IN,  PER_CALL,  ONSITE,  };
    
        @nullable
    @BuiltValueField(wireName: r'specification')
    String get specification;
    
        @nullable
    @BuiltValueField(wireName: r'subProducts')
    BuiltList<ServedProduct> get subProducts;
    
        @nullable
    @BuiltValueField(wireName: r'warranties')
    BuiltList<ServedProductWarranty> get warranties;

    // Boilerplate code needed to wire-up generated code
    ServedProduct._();

    factory ServedProduct([updates(ServedProductBuilder b)]) = _$ServedProduct;
    static Serializer<ServedProduct> get serializer => _$servedProductSerializer;

}

