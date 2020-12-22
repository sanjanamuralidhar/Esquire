        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warranty_history_dto.g.dart';

abstract class WarrantyHistoryDTO implements Built<WarrantyHistoryDTO, WarrantyHistoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'expiresIn')
    DateTime get expiresIn;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'loggedDate')
    DateTime get loggedDate;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyId')
    int get warrantyId;
    
        @nullable
    @BuiltValueField(wireName: r'warrantyLog')
    String get warrantyLog;

    // Boilerplate code needed to wire-up generated code
    WarrantyHistoryDTO._();

    factory WarrantyHistoryDTO([updates(WarrantyHistoryDTOBuilder b)]) = _$WarrantyHistoryDTO;
    static Serializer<WarrantyHistoryDTO> get serializer => _$warrantyHistoryDTOSerializer;

}

