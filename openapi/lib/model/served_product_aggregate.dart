            import 'package:openapi/model/product_detail_aggregate.dart';
            import 'package:openapi/model/served_product_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'served_product_aggregate.g.dart';

abstract class ServedProductAggregate implements Built<ServedProductAggregate, ServedProductAggregateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'productDetailAggregate')
    ProductDetailAggregate get productDetailAggregate;
    
        @nullable
    @BuiltValueField(wireName: r'servedProductDTO')
    ServedProductDTO get servedProductDTO;

    // Boilerplate code needed to wire-up generated code
    ServedProductAggregate._();

    factory ServedProductAggregate([updates(ServedProductAggregateBuilder b)]) = _$ServedProductAggregate;
    static Serializer<ServedProductAggregate> get serializer => _$servedProductAggregateSerializer;

}

