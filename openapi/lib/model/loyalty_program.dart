            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/promotional_message.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loyalty_program.g.dart';

abstract class LoyaltyProgram implements Built<LoyaltyProgram, LoyaltyProgramBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'endingDate')
    DateTime get endingDate;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'promotionalMessages')
    BuiltList<PromotionalMessage> get promotionalMessages;
    
        @nullable
    @BuiltValueField(wireName: r'startingDate')
    DateTime get startingDate;

    // Boilerplate code needed to wire-up generated code
    LoyaltyProgram._();

    factory LoyaltyProgram([updates(LoyaltyProgramBuilder b)]) = _$LoyaltyProgram;
    static Serializer<LoyaltyProgram> get serializer => _$loyaltyProgramSerializer;

}

