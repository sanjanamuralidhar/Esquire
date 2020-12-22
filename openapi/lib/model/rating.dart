            import 'package:openapi/model/customer.dart';
            import 'package:openapi/model/service_executive.dart';
            import 'package:openapi/model/call_center_executive.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating.g.dart';

abstract class Rating implements Built<Rating, RatingBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'callCenterExective')
    CallCenterExecutive get callCenterExective;
    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
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
    @BuiltValueField(wireName: r'ratedBy')
    String get ratedBy;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutive')
    ServiceExecutive get serviceExecutive;

    // Boilerplate code needed to wire-up generated code
    Rating._();

    factory Rating([updates(RatingBuilder b)]) = _$Rating;
    static Serializer<Rating> get serializer => _$ratingSerializer;

}

