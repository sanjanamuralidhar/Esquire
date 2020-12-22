            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/promotional_message.dart';
            import 'package:openapi/model/answer.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question.g.dart';

abstract class Question implements Built<Question, QuestionBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'answers')
    BuiltList<Answer> get answers;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'promotionalMessage')
    PromotionalMessage get promotionalMessage;
    
        @nullable
    @BuiltValueField(wireName: r'question')
    String get question;

    // Boilerplate code needed to wire-up generated code
    Question._();

    factory Question([updates(QuestionBuilder b)]) = _$Question;
    static Serializer<Question> get serializer => _$questionSerializer;

}

