        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'served_product_dto.g.dart';

abstract class ServedProductDTO implements Built<ServedProductDTO, ServedProductDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customSerialNumber')
    String get customSerialNumber;
    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    int get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'invoiceNo')
    String get invoiceNo;
    
        @nullable
    @BuiltValueField(wireName: r'mainProductId')
    int get mainProductId;
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'productLocationId')
    int get productLocationId;
    
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

    // Boilerplate code needed to wire-up generated code
    ServedProductDTO._();

    factory ServedProductDTO([updates(ServedProductDTOBuilder b)]) = _$ServedProductDTO;
    static Serializer<ServedProductDTO> get serializer => _$servedProductDTOSerializer;

}

