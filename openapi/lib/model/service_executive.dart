            import 'package:openapi/model/user.dart';
            import 'package:openapi/model/rating.dart';
            import 'package:openapi/model/service_section.dart';
            import 'package:openapi/model/ticket_history.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/overall_rating.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_executive.g.dart';

abstract class ServiceExecutive implements Built<ServiceExecutive, ServiceExecutiveBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;
    
        @nullable
    @BuiltValueField(wireName: r'alternatePhoneNumberOne')
    String get alternatePhoneNumberOne;
    
        @nullable
    @BuiltValueField(wireName: r'alternatePhoneNumberTwo')
    String get alternatePhoneNumberTwo;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'geoLocation')
    String get geoLocation;
    
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
    @BuiltValueField(wireName: r'phoneNumbersVerified')
    bool get phoneNumbersVerified;
    
        @nullable
    @BuiltValueField(wireName: r'ratings')
    BuiltList<Rating> get ratings;
    
        @nullable
    @BuiltValueField(wireName: r'serviceEngineerId')
    String get serviceEngineerId;
    
        @nullable
    @BuiltValueField(wireName: r'serviceSection')
    ServiceSection get serviceSection;
    
        @nullable
    @BuiltValueField(wireName: r'ticketHistories')
    BuiltList<TicketHistory> get ticketHistories;
    
        @nullable
    @BuiltValueField(wireName: r'user')
    User get user;

    // Boilerplate code needed to wire-up generated code
    ServiceExecutive._();

    factory ServiceExecutive([updates(ServiceExecutiveBuilder b)]) = _$ServiceExecutive;
    static Serializer<ServiceExecutive> get serializer => _$serviceExecutiveSerializer;

}

