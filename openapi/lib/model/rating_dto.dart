        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_dto.g.dart';

abstract class RatingDTO implements Built<RatingDTO, RatingDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'callCenterExectiveId')
    int get callCenterExectiveId;
    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    int get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'data')
    String get data;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'overallRating')
    int get overallRating;
    /* username of the rated user */
        @nullable
    @BuiltValueField(wireName: r'ratedBy')
    String get ratedBy;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutiveId')
    int get serviceExecutiveId;

    // Boilerplate code needed to wire-up generated code
    RatingDTO._();

    factory RatingDTO([updates(RatingDTOBuilder b)]) = _$RatingDTO;
    static Serializer<RatingDTO> get serializer => _$ratingDTOSerializer;

}

