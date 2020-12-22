            import 'package:openapi/model/address_aggregate.dart';
            import 'package:openapi/model/served_product_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_ticket_aggregate.g.dart';

abstract class ServiceTicketAggregate implements Built<ServiceTicketAggregate, ServiceTicketAggregateBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'branchId')
    int get branchId;
    
        @nullable
    @BuiltValueField(wireName: r'brand')
    String get brand;
    
        @nullable
    @BuiltValueField(wireName: r'category')
    String get category;
    
        @nullable
    @BuiltValueField(wireName: r'customerAddress')
    AddressAggregate get customerAddress;
    
        @nullable
    @BuiltValueField(wireName: r'dateOfAppointment')
    DateTime get dateOfAppointment;
    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'issues')
    String get issues;
    
        @nullable
    @BuiltValueField(wireName: r'preferredTime')
    String get preferredTime;
        //enum preferredTimeEnum {  MORNING,  AFTERNOON,  EVENING,  };
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'productName')
    String get productName;
    
        @nullable
    @BuiltValueField(wireName: r'recordedAudio')
    String get recordedAudio;
    
        @nullable
    @BuiltValueField(wireName: r'servedProductDTO')
    ServedProductDTO get servedProductDTO;

    // Boilerplate code needed to wire-up generated code
    ServiceTicketAggregate._();

    factory ServiceTicketAggregate([updates(ServiceTicketAggregateBuilder b)]) = _$ServiceTicketAggregate;
    static Serializer<ServiceTicketAggregate> get serializer => _$serviceTicketAggregateSerializer;

}

