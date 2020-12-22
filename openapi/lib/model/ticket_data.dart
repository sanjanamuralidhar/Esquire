            import 'package:openapi/model/ticket_dto.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ticket_data.g.dart';

abstract class TicketData implements Built<TicketData, TicketDataBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'asc')
    bool get asc;
    
        @nullable
    @BuiltValueField(wireName: r'customerEmail')
    String get customerEmail;
    
        @nullable
    @BuiltValueField(wireName: r'serviceType')
    String get serviceType;
    
        @nullable
    @BuiltValueField(wireName: r'ticketDTO')
    TicketDTO get ticketDTO;
    
        @nullable
    @BuiltValueField(wireName: r'warranty')
    bool get warranty;

    // Boilerplate code needed to wire-up generated code
    TicketData._();

    factory TicketData([updates(TicketDataBuilder b)]) = _$TicketData;
    static Serializer<TicketData> get serializer => _$ticketDataSerializer;

}

