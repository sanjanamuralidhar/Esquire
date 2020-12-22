        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_dto.g.dart';

abstract class ChatDTO implements Built<ChatDTO, ChatDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'chatId')
    String get chatId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'ticketId')
    int get ticketId;

    // Boilerplate code needed to wire-up generated code
    ChatDTO._();

    factory ChatDTO([updates(ChatDTOBuilder b)]) = _$ChatDTO;
    static Serializer<ChatDTO> get serializer => _$chatDTOSerializer;

}

