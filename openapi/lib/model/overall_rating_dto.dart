        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overall_rating_dto.g.dart';

abstract class OverallRatingDTO implements Built<OverallRatingDTO, OverallRatingDTOBuilder> {

    
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
    OverallRatingDTO._();

    factory OverallRatingDTO([updates(OverallRatingDTOBuilder b)]) = _$OverallRatingDTO;
    static Serializer<OverallRatingDTO> get serializer => _$overallRatingDTOSerializer;

}

