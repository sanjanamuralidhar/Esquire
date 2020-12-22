            import 'package:openapi/model/branch.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback.g.dart';

abstract class Feedback implements Built<Feedback, FeedbackBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'branch')
    Branch get branch;
    
        @nullable
    @BuiltValueField(wireName: r'data')
    String get data;
    
        @nullable
    @BuiltValueField(wireName: r'givenBy')
    String get givenBy;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'score')
    int get score;
    
        @nullable
    @BuiltValueField(wireName: r'suggestion')
    String get suggestion;

    // Boilerplate code needed to wire-up generated code
    Feedback._();

    factory Feedback([updates(FeedbackBuilder b)]) = _$Feedback;
    static Serializer<Feedback> get serializer => _$feedbackSerializer;

}

