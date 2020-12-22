        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address_aggregate.g.dart';

abstract class AddressAggregate implements Built<AddressAggregate, AddressAggregateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'city')
    String get city;
    
        @nullable
    @BuiltValueField(wireName: r'customerName')
    String get customerName;
    
        @nullable
    @BuiltValueField(wireName: r'district')
    String get district;
    
        @nullable
    @BuiltValueField(wireName: r'geoLocation')
    String get geoLocation;
    
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
    @BuiltValueField(wireName: r'phone')
    String get phone;
    
        @nullable
    @BuiltValueField(wireName: r'pinCode')
    String get pinCode;
    
        @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    // Boilerplate code needed to wire-up generated code
    AddressAggregate._();

    factory AddressAggregate([updates(AddressAggregateBuilder b)]) = _$AddressAggregate;
    static Serializer<AddressAggregate> get serializer => _$addressAggregateSerializer;

}

