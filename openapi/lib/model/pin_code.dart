        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pin_code.g.dart';

abstract class PinCode implements Built<PinCode, PinCodeBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'pinCode')
    String get pinCode;

    // Boilerplate code needed to wire-up generated code
    PinCode._();

    factory PinCode([updates(PinCodeBuilder b)]) = _$PinCode;
    static Serializer<PinCode> get serializer => _$pinCodeSerializer;

}

