            import 'package:openapi/model/ticket.dart';
            import 'package:openapi/model/service_executive.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_history.g.dart';

abstract class TicketHistory implements Built<TicketHistory, TicketHistoryBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'loggedBy')
    String get loggedBy;
    
        @nullable
    @BuiltValueField(wireName: r'loggedDate')
    DateTime get loggedDate;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutive')
    ServiceExecutive get serviceExecutive;
    
        @nullable
    @BuiltValueField(wireName: r'serviceStatus')
    String get serviceStatus;
        //enum serviceStatusEnum {  OPEN,  PROCESSED,  EXECUTIVE_ARRIVING,  PRODUCT_COLLECTED,  PENDING,  REPAIR_PENDING,  UNDER_REPAIR,  REPLACING_PRODUCT,  TRANSFERRED_TO_COMPANY,  PRODUCT_ARRIVED,  CANCELLED,  SERVICE_COMPLETED,  ELIGIBLE_TO_CLOSE,  CLOSED,  MOVED_TO_HISTORY,  };
    
        @nullable
    @BuiltValueField(wireName: r'ticket')
    Ticket get ticket;
    
        @nullable
    @BuiltValueField(wireName: r'ticketLog')
    String get ticketLog;
    
        @nullable
    @BuiltValueField(wireName: r'verifiedStatus')
    String get verifiedStatus;
        //enum verifiedStatusEnum {  OPEN,  APPROVED,  VERIFIED,  TO_BE_VERIFIED,  NOT_APPROVED,  };

    // Boilerplate code needed to wire-up generated code
    TicketHistory._();

    factory TicketHistory([updates(TicketHistoryBuilder b)]) = _$TicketHistory;
    static Serializer<TicketHistory> get serializer => _$ticketHistorySerializer;

}

