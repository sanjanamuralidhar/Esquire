        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overall_rating.g.dart';

abstract class OverallRating implements Built<OverallRating, OverallRatingBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'data')
    String get data;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'overallRating')
    int get overallRating;
    
        @nullable
    @BuiltValueField(wireName: r'totalFeedbacks')
    int get totalFeedbacks;

    // Boilerplate code needed to wire-up generated code
    OverallRating._();

    factory OverallRating([updates(OverallRatingBuilder b)]) = _$OverallRating;
    static Serializer<OverallRating> get serializer => _$overallRatingSerializer;

}

