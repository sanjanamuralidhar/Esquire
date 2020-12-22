            import 'package:openapi/model/chat.dart';
            import 'package:openapi/model/customer.dart';
            import 'package:openapi/model/service_executive.dart';
            import 'package:openapi/model/call_center_executive.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'attachment')
    String get attachment;
    
        @nullable
    @BuiltValueField(wireName: r'callCenterExecutive')
    CallCenterExecutive get callCenterExecutive;
    
        @nullable
    @BuiltValueField(wireName: r'chat')
    Chat get chat;
    
        @nullable
    @BuiltValueField(wireName: r'customer')
    Customer get customer;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;
    
        @nullable
    @BuiltValueField(wireName: r'serviceExecutive')
    ServiceExecutive get serviceExecutive;
    
        @nullable
    @BuiltValueField(wireName: r'subject')
    String get subject;
    
        @nullable
    @BuiltValueField(wireName: r'time')
    DateTime get time;
    
        @nullable
    @BuiltValueField(wireName: r'visibleToCustomer')
    bool get visibleToCustomer;

    // Boilerplate code needed to wire-up generated code
    Message._();

    factory Message([updates(MessageBuilder b)]) = _$Message;
    static Serializer<Message> get serializer => _$messageSerializer;

}

