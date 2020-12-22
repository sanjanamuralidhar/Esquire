            import 'package:openapi/model/question.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer.g.dart';

abstract class Answer implements Built<Answer, AnswerBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'answer')
    String get answer;
    
        @nullable
    @BuiltValueField(wireName: r'correctAnswer')
    bool get correctAnswer;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'question')
    Question get question;

    // Boilerplate code needed to wire-up generated code
    Answer._();

    factory Answer([updates(AnswerBuilder b)]) = _$Answer;
    static Serializer<Answer> get serializer => _$answerSerializer;

}

