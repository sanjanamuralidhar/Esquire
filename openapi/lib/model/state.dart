        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'state.g.dart';

abstract class State implements Built<State, StateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    // Boilerplate code needed to wire-up generated code
    State._();

    factory State([updates(StateBuilder b)]) = _$State;
    static Serializer<State> get serializer => _$stateSerializer;

}

