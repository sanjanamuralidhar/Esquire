            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/rest_enum_form_property.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rest_form_property.g.dart';

abstract class RestFormProperty implements Built<RestFormProperty, RestFormPropertyBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'datePattern')
    String get datePattern;
    
        @nullable
    @BuiltValueField(wireName: r'enumValues')
    BuiltList<RestEnumFormProperty> get enumValues;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'readable')
    bool get readable;
    
        @nullable
    @BuiltValueField(wireName: r'required')
    bool get required_;
    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'value')
    String get value;
    
        @nullable
    @BuiltValueField(wireName: r'writable')
    bool get writable;

    // Boilerplate code needed to wire-up generated code
    RestFormProperty._();

    factory RestFormProperty([updates(RestFormPropertyBuilder b)]) = _$RestFormProperty;
    static Serializer<RestFormProperty> get serializer => _$restFormPropertySerializer;

}

