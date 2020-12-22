            import 'package:openapi/model/product_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_detail_model.g.dart';

abstract class ProductDetailModel implements Built<ProductDetailModel, ProductDetailModelBuilder> {

    
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
    ProductDetailModel._();

    factory ProductDetailModel([updates(ProductDetailModelBuilder b)]) = _$ProductDetailModel;
    static Serializer<ProductDetailModel> get serializer => _$productDetailModelSerializer;

}

