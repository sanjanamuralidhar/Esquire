// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatDTO> _$chatDTOSerializer = new _$ChatDTOSerializer();

class _$ChatDTOSerializer implements StructuredSerializer<ChatDTO> {
  @override
  final Iterable<Type> types = const [ChatDTO, _$ChatDTO];
  @override
  final String wireName = 'ChatDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, ChatDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.chatId != null) {
      result
        ..add('chatId')
        ..add(serializers.serialize(object.chatId,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.ticketId != null) {
      result
        ..add('ticketId')
        ..add(serializers.serialize(object.ticketId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ChatDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'chatId':
          result.chatId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ticketId':
          result.ticketId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ChatDTO extends ChatDTO {
  @override
  final String chatId;
  @override
  final int id;
  @override
  final int ticketId;

  factory _$ChatDTO([void Function(ChatDTOBuilder) updates]) =>
      (new ChatDTOBuilder()..update(updates)).build();

  _$ChatDTO._({this.chatId, this.id, this.ticketId}) : super._();

  @override
  ChatDTO rebuild(void Function(ChatDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatDTOBuilder toBuilder() => new ChatDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatDTO &&
        chatId == other.chatId &&
        id == other.id &&
        ticketId == other.ticketId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, chatId.hashCode), id.hashCode), ticketId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatDTO')
          ..add('chatId', chatId)
          ..add('id', id)
          ..add('ticketId', ticketId))
        .toString();
  }
}

class ChatDTOBuilder implements Builder<ChatDTO, ChatDTOBuilder> {
  _$ChatDTO _$v;

  String _chatId;
  String get chatId => _$this._chatId;
  set chatId(String chatId) => _$this._chatId = chatId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _ticketId;
  int get ticketId => _$this._ticketId;
  set ticketId(int ticketId) => _$this._ticketId = ticketId;

  ChatDTOBuilder();

  ChatDTOBuilder get _$this {
    if (_$v != null) {
      _chatId = _$v.chatId;
      _id = _$v.id;
      _ticketId = _$v.ticketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChatDTO;
  }

  @override
  void update(void Function(ChatDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatDTO build() {
    final _$result =
        _$v ?? new _$ChatDTO._(chatId: chatId, id: id, ticketId: ticketId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
