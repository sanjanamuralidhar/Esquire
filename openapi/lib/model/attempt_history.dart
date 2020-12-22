            import 'package:openapi/model/promotional_message.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attempt_history.g.dart';

abstract class AttemptHistory implements Built<AttemptHistory, AttemptHistoryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'address')
    String get address;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'phoneNumber')
    String get phoneNumber;
    
        @nullable
    @BuiltValueField(wireName: r'pointsCollected')
    int get pointsCollected;
    
        @nullable
    @BuiltValueField(wireName: r'promotionalMessage')
    PromotionalMessage get promotionalMessage;
    
        @nullable
    @BuiltValueField(wireName: r'selectedAsWinner')
    bool get selectedAsWinner;
    
        @nullable
    @BuiltValueField(wireName: r'timeStamp')
    DateTime get timeStamp;

    // Boilerplate code needed to wire-up generated code
    AttemptHistory._();

    factory AttemptHistory([updates(AttemptHistoryBuilder b)]) = _$AttemptHistory;
    static Serializer<AttemptHistory> get serializer => _$attemptHistorySerializer;

}

