            import 'package:openapi/model/standby_product.dart';
            import 'package:openapi/model/customer.dart';
            import 'package:openapi/model/ticket_history.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/served_product.dart';
            import 'package:openapi/model/feedback.dart';
            import 'package:openapi/model/branch.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket.g.dart';

abstract class Ticket implements Built<Ticket, TicketBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'actualServiceDate')
    DateTime get actualServiceDate;
    
        @nullable
    @BuiltValueField(wireName: r'branch')
    Branch get branch;
    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
        @nullable
    @BuiltValueField(wireName: r'expectedDeliveryTime')
    DateTime get expectedDeliveryTime;
    
        @nullable
    @BuiltValueField(wireName: r'feedback')
    Feedback get feedback;
    
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
    @BuiltValueField(wireName: r'product')
    ServedProduct get product;
    
        @nullable
    @BuiltValueField(wireName: r'recordedAudio')
    String get recordedAudio;
    
        @nullable
    @BuiltValueField(wireName: r'remarks')
    String get remarks;
    
        @nullable
    @BuiltValueField(wireName: r'standbyProduct')
    StandbyProduct get standbyProduct;
    
        @nullable
    @BuiltValueField(wireName: r'ticketDescription')
    String get ticketDescription;
    
        @nullable
    @BuiltValueField(wireName: r'ticketHistories')
    BuiltList<TicketHistory> get ticketHistories;
    
        @nullable
    @BuiltValueField(wireName: r'ticketNumber')
    String get ticketNumber;
    
        @nullable
    @BuiltValueField(wireName: r'trackingId')
    String get trackingId;

    // Boilerplate code needed to wire-up generated code
    Ticket._();

    factory Ticket([updates(TicketBuilder b)]) = _$Ticket;
    static Serializer<Ticket> get serializer => _$ticketSerializer;

}

