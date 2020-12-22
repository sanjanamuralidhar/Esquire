        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregate_address.g.dart';

abstract class AggregateAddress implements Built<AggregateAddress, AggregateAddressBuilder> {

    
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
    AggregateAddress._();

    factory AggregateAddress([updates(AggregateAddressBuilder b)]) = _$AggregateAddress;
    static Serializer<AggregateAddress> get serializer => _$aggregateAddressSerializer;

}

