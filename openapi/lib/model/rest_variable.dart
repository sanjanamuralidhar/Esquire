            import 'package:built_value/json_object.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rest_variable.g.dart';

abstract class RestVariable implements Built<RestVariable, RestVariableBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'scope')
    String get scope;
    
        @nullable
    @BuiltValueField(wireName: r'type')
    String get type;
    
        @nullable
    @BuiltValueField(wireName: r'value')
    JsonObject get value;
    
        @nullable
    @BuiltValueField(wireName: r'valueUrl')
    String get valueUrl;

    // Boilerplate code needed to wire-up generated code
    RestVariable._();

    factory RestVariable([updates(RestVariableBuilder b)]) = _$RestVariable;
    static Serializer<RestVariable> get serializer => _$restVariableSerializer;

}

