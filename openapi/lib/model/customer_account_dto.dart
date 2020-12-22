        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_account_dto.g.dart';

abstract class CustomerAccountDTO implements Built<CustomerAccountDTO, CustomerAccountDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'officeAddressId')
    int get officeAddressId;

    // Boilerplate code needed to wire-up generated code
    CustomerAccountDTO._();

    factory CustomerAccountDTO([updates(CustomerAccountDTOBuilder b)]) = _$CustomerAccountDTO;
    static Serializer<CustomerAccountDTO> get serializer => _$customerAccountDTOSerializer;

}

