            import 'package:openapi/model/ticket.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:openapi/model/message.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat.g.dart';

abstract class Chat implements Built<Chat, ChatBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'chatId')
    String get chatId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'messages')
    BuiltList<Message> get messages;
    
        @nullable
    @BuiltValueField(wireName: r'ticket')
    Ticket get ticket;

    // Boilerplate code needed to wire-up generated code
    Chat._();

    factory Chat([updates(ChatBuilder b)]) = _$Chat;
    static Serializer<Chat> get serializer => _$chatSerializer;

}

