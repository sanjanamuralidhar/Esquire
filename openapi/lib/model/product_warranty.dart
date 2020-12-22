        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_warranty.g.dart';

abstract class ProductWarranty implements Built<ProductWarranty, ProductWarrantyBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'periodInMonths')
    int get periodInMonths;
    
        @nullable
    @BuiltValueField(wireName: r'periodInYear')
    int get periodInYear;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyType')
    String get warrantyType;
        //enum warrantyTypeEnum {  NORMAL,  ASC,  };

    // Boilerplate code needed to wire-up generated code
    ProductWarranty._();

    factory ProductWarranty([updates(ProductWarrantyBuilder b)]) = _$ProductWarranty;
    static Serializer<ProductWarranty> get serializer => _$productWarrantySerializer;

}

