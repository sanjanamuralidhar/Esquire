        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_dto.g.dart';

abstract class ProductDTO implements Built<ProductDTO, ProductDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'brandId')
    int get brandId;
    
        @nullable
    @BuiltValueField(wireName: r'categoryId')
    int get categoryId;
    
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

    // Boilerplate code needed to wire-up generated code
    ProductDTO._();

    factory ProductDTO([updates(ProductDTOBuilder b)]) = _$ProductDTO;
    static Serializer<ProductDTO> get serializer => _$productDTOSerializer;

}

