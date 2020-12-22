            import 'package:openapi/model/brand.dart';
            import 'package:openapi/model/product_warranty.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/category.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'brand')
    Brand get brand;
    
        @nullable
    @BuiltValueField(wireName: r'category')
    Category get category;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'imageUrl')
    String get imageUrl;
    
        @nullable
    @BuiltValueField(wireName: r'internalProductId')
    String get internalProductId;
    
        @nullable
    @BuiltValueField(wireName: r'model')
    String get model;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'otherDetails')
    String get otherDetails;
    
        @nullable
    @BuiltValueField(wireName: r'price')
    num get price;
    
        @nullable
    @BuiltValueField(wireName: r'specification')
    String get specification;
    
        @nullable
    @BuiltValueField(wireName: r'warranties')
    BuiltList<ProductWarranty> get warranties;

    // Boilerplate code needed to wire-up generated code
    Product._();

    factory Product([updates(ProductBuilder b)]) = _$Product;
    static Serializer<Product> get serializer => _$productSerializer;

}

