        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_dto.g.dart';

abstract class CustomerDTO implements Built<CustomerDTO, CustomerDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'customerRank')
    String get customerRank;
    
        @nullable
    @BuiltValueField(wireName: r'customerSince')
    DateTime get customerSince;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    /* This shop specific id */
        @nullable
    @BuiltValueField(wireName: r'internalId')
    String get internalId;
    
        @nullable
    @BuiltValueField(wireName: r'linkedAccountId')
    int get linkedAccountId;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'overallRatingId')
    int get overallRatingId;
    
        @nullable
    @BuiltValueField(wireName: r'phone')
    String get phone;
    
        @nullable
    @BuiltValueField(wireName: r'phoneVerified')
    bool get phoneVerified;
    
        @nullable
    @BuiltValueField(wireName: r'systemId')
    String get systemId;
    
        @nullable
    @BuiltValueField(wireName: r'userId')
    int get userId;
    
        @nullable
    @BuiltValueField(wireName: r'userLogin')
    String get userLogin;

    // Boilerplate code needed to wire-up generated code
    CustomerDTO._();

    factory CustomerDTO([updates(CustomerDTOBuilder b)]) = _$CustomerDTO;
    static Serializer<CustomerDTO> get serializer => _$customerDTOSerializer;

}

