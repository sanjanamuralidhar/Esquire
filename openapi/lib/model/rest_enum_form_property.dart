        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rest_enum_form_property.g.dart';

abstract class RestEnumFormProperty implements Built<RestEnumFormProperty, RestEnumFormPropertyBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    RestEnumFormProperty._();

    factory RestEnumFormProperty([updates(RestEnumFormPropertyBuilder b)]) = _$RestEnumFormProperty;
    static Serializer<RestEnumFormProperty> get serializer => _$restEnumFormPropertySerializer;

}

