            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/address_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_contact.g.dart';

abstract class CustomerContact implements Built<CustomerContact, CustomerContactBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'addressList')
    BuiltList<AddressDTO> get addressList;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'phone')
    String get phone;

    // Boilerplate code needed to wire-up generated code
    CustomerContact._();

    factory CustomerContact([updates(CustomerContactBuilder b)]) = _$CustomerContact;
    static Serializer<CustomerContact> get serializer => _$customerContactSerializer;

}

