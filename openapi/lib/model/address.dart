            import 'package:openapi/model/customer.dart';
            import 'package:openapi/model/city.dart';
            import 'package:openapi/model/state.dart';
            import 'package:openapi/model/district.dart';
            import 'package:openapi/model/pin_code.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'billingAddress')
    bool get billingAddress;
    
        @nullable
    @BuiltValueField(wireName: r'cityName')
    City get cityName;
    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
        @nullable
    @BuiltValueField(wireName: r'districtName')
    District get districtName;
    
        @nullable
    @BuiltValueField(wireName: r'geoLocation')
    String get geoLocation;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'landMark')
    String get landMark;
    
        @nullable
    @BuiltValueField(wireName: r'locationAddressLineOne')
    String get locationAddressLineOne;
    
        @nullable
    @BuiltValueField(wireName: r'locationAddressLineTwo')
    String get locationAddressLineTwo;
    
        @nullable
    @BuiltValueField(wireName: r'pinCode')
    PinCode get pinCode;
    
        @nullable
    @BuiltValueField(wireName: r'stateName')
    State get stateName;

    // Boilerplate code needed to wire-up generated code
    Address._();

    factory Address([updates(AddressBuilder b)]) = _$Address;
    static Serializer<Address> get serializer => _$addressSerializer;

}

