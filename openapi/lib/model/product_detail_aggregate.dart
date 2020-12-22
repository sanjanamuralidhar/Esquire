            import 'package:openapi/model/product_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_detail_aggregate.g.dart';

abstract class ProductDetailAggregate implements Built<ProductDetailAggregate, ProductDetailAggregateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'brandName')
    String get brandName;
    
        @nullable
    @BuiltValueField(wireName: r'categoryName')
    String get categoryName;
    
        @nullable
    @BuiltValueField(wireName: r'productDTO')
    ProductDTO get productDTO;

    // Boilerplate code needed to wire-up generated code
    ProductDetailAggregate._();

    factory ProductDetailAggregate([updates(ProductDetailAggregateBuilder b)]) = _$ProductDetailAggregate;
    static Serializer<ProductDetailAggregate> get serializer => _$productDetailAggregateSerializer;

}

