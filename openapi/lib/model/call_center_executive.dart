            import 'package:openapi/model/user.dart';
            import 'package:openapi/model/rating.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/overall_rating.dart';
            import 'package:openapi/model/branch.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'call_center_executive.g.dart';

abstract class CallCenterExecutive implements Built<CallCenterExecutive, CallCenterExecutiveBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'branch')
    Branch get branch;
    
        @nullable
    @BuiltValueField(wireName: r'callCenterExecutiveId')
    String get callCenterExecutiveId;
    
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
    @BuiltValueField(wireName: r'overallRating')
    OverallRating get overallRating;
    
        @nullable
    @BuiltValueField(wireName: r'phone')
    String get phone;
    
        @nullable
    @BuiltValueField(wireName: r'phoneVerified')
    bool get phoneVerified;
    
        @nullable
    @BuiltValueField(wireName: r'ratings')
    BuiltList<Rating> get ratings;
    
        @nullable
    @BuiltValueField(wireName: r'user')
    User get user;

    // Boilerplate code needed to wire-up generated code
    CallCenterExecutive._();

    factory CallCenterExecutive([updates(CallCenterExecutiveBuilder b)]) = _$CallCenterExecutive;
    static Serializer<CallCenterExecutive> get serializer => _$callCenterExecutiveSerializer;

}

