        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'served_product_warranty_dto.g.dart';

abstract class ServedProductWarrantyDTO implements Built<ServedProductWarrantyDTO, ServedProductWarrantyDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'endDate')
    DateTime get endDate;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'internalWarrantyNumber')
    String get internalWarrantyNumber;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'productWarrantyId')
    int get productWarrantyId;
    
        @nullable
    @BuiltValueField(wireName: r'remarks')
    String get remarks;
    
        @nullable
    @BuiltValueField(wireName: r'startDate')
    DateTime get startDate;

    // Boilerplate code needed to wire-up generated code
    ServedProductWarrantyDTO._();

    factory ServedProductWarrantyDTO([updates(ServedProductWarrantyDTOBuilder b)]) = _$ServedProductWarrantyDTO;
    static Serializer<ServedProductWarrantyDTO> get serializer => _$servedProductWarrantyDTOSerializer;

}

