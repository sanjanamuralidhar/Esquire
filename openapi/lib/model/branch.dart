            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/service_section.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/call_center_executive.dart';
            import 'package:openapi/model/feedback.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch.g.dart';

abstract class Branch implements Built<Branch, BranchBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'address')
    Address get address;
    
        @nullable
    @BuiltValueField(wireName: r'alternatePhoneNumber')
    String get alternatePhoneNumber;
    
        @nullable
    @BuiltValueField(wireName: r'branchLocation')
    String get branchLocation;
    
        @nullable
    @BuiltValueField(wireName: r'callCenterExecutives')
    BuiltList<CallCenterExecutive> get callCenterExecutives;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'feedbacks')
    BuiltList<Feedback> get feedbacks;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'phoneNumber')
    String get phoneNumber;
    
        @nullable
    @BuiltValueField(wireName: r'serviceSections')
    BuiltList<ServiceSection> get serviceSections;

    // Boilerplate code needed to wire-up generated code
    Branch._();

    factory Branch([updates(BranchBuilder b)]) = _$Branch;
    static Serializer<Branch> get serializer => _$branchSerializer;

}

