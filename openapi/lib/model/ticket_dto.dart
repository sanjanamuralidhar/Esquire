        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_dto.g.dart';

abstract class TicketDTO implements Built<TicketDTO, TicketDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'actualServiceDate')
    DateTime get actualServiceDate;
    
        @nullable
    @BuiltValueField(wireName: r'branchId')
    int get branchId;
    
        @nullable
    @BuiltValueField(wireName: r'customerId')
    int get customerId;
    
        @nullable
    @BuiltValueField(wireName: r'expectedDeliveryTime')
    DateTime get expectedDeliveryTime;
    
        @nullable
    @BuiltValueField(wireName: r'feedbackId')
    int get feedbackId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'issue')
    String get issue;
    
        @nullable
    @BuiltValueField(wireName: r'preferredAppointmentDate')
    DateTime get preferredAppointmentDate;
    
        @nullable
    @BuiltValueField(wireName: r'preferredTime')
    String get preferredTime;
        //enum preferredTimeEnum {  MORNING,  AFTERNOON,  EVENING,  };
    
        @nullable
    @BuiltValueField(wireName: r'productId')
    int get productId;
    
        @nullable
    @BuiltValueField(wireName: r'recordedAudio')
    String get recordedAudio;
    
        @nullable
    @BuiltValueField(wireName: r'remarks')
    String get remarks;
    
        @nullable
    @BuiltValueField(wireName: r'standbyProductId')
    int get standbyProductId;
    
        @nullable
    @BuiltValueField(wireName: r'ticketDescription')
    String get ticketDescription;
    
        @nullable
    @BuiltValueField(wireName: r'ticketNumber')
    String get ticketNumber;
    
        @nullable
    @BuiltValueField(wireName: r'trackingId')
    String get trackingId;

    // Boilerplate code needed to wire-up generated code
    TicketDTO._();

    factory TicketDTO([updates(TicketDTOBuilder b)]) = _$TicketDTO;
    static Serializer<TicketDTO> get serializer => _$ticketDTOSerializer;

}

