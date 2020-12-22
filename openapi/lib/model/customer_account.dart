            import 'package:openapi/model/address.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_account.g.dart';

abstract class CustomerAccount implements Built<CustomerAccount, CustomerAccountBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'officeAddress')
    Address get officeAddress;

    // Boilerplate code needed to wire-up generated code
    CustomerAccount._();

    factory CustomerAccount([updates(CustomerAccountBuilder b)]) = _$CustomerAccount;
    static Serializer<CustomerAccount> get serializer => _$customerAccountSerializer;

}

