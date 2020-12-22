            import 'package:openapi/model/attempt_history.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/loyalty_program.dart';
            import 'package:openapi/model/question.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'promotional_message.g.dart';

abstract class PromotionalMessage implements Built<PromotionalMessage, PromotionalMessageBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'attemptHistories')
    BuiltList<AttemptHistory> get attemptHistories;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'loyaltyProgram')
    LoyaltyProgram get loyaltyProgram;
    
        @nullable
    @BuiltValueField(wireName: r'questions')
    BuiltList<Question> get questions;
    
        @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    // Boilerplate code needed to wire-up generated code
    PromotionalMessage._();

    factory PromotionalMessage([updates(PromotionalMessageBuilder b)]) = _$PromotionalMessage;
    static Serializer<PromotionalMessage> get serializer => _$promotionalMessageSerializer;

}

