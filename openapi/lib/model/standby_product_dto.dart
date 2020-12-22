        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'standby_product_dto.g.dart';

abstract class StandbyProductDTO implements Built<StandbyProductDTO, StandbyProductDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'brand')
    String get brand;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'model')
    String get model;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    String get productId;
    
        @nullable
    @BuiltValueField(wireName: r'serialNumber')
    String get serialNumber;

    // Boilerplate code needed to wire-up generated code
    StandbyProductDTO._();

    factory StandbyProductDTO([updates(StandbyProductDTOBuilder b)]) = _$StandbyProductDTO;
    static Serializer<StandbyProductDTO> get serializer => _$standbyProductDTOSerializer;

}

