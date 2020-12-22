// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Message> _$messageSerializer = new _$MessageSerializer();

class _$MessageSerializer implements StructuredSerializer<Message> {
  @override
  final Iterable<Type> types = const [Message, _$Message];
  @override
  final String wireName = 'Message';

  @override
  Iterable<Object> serialize(Serializers serializers, Message object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.attachment != null) {
      result
        ..add('attachment')
        ..add(serializers.serialize(object.attachment,
            specifiedType: const FullType(String)));
    }
    if (object.callCenterExecutive != null) {
      result
        ..add('callCenterExecutive')
        ..add(serializers.serialize(object.callCenterExecutive,
            specifiedType: const FullType(CallCenterExecutive)));
    }
    if (object.chat != null) {
      result
        ..add('chat')
        ..add(serializers.serialize(object.chat,
            specifiedType: const FullType(Chat)));
    }
    if (object.customer != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(object.customer,
            specifiedType: const FullType(Customer)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.serviceExecutive != null) {
      result
        ..add('serviceExecutive')
        ..add(serializers.serialize(object.serviceExecutive,
            specifiedType: const FullType(ServiceExecutive)));
    }
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(String)));
    }
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(DateTime)));
    }
    if (object.visibleToCustomer != null) {
      result
        ..add('visibleToCustomer')
        ..add(serializers.serialize(object.visibleToCustomer,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Message deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attachment':
          result.attachment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'callCenterExecutive':
          result.callCenterExecutive.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CallCenterExecutive))
              as CallCenterExecutive);
          break;
        case 'chat':
          result.chat.replace(serializers.deserialize(value,
              specifiedType: const FullType(Chat)) as Chat);
          break;
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer)) as Customer);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceExecutive':
          result.serviceExecutive.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ServiceExecutive))
              as ServiceExecutive);
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'visibleToCustomer':
          result.visibleToCustomer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Message extends Message {
  @override
  final String attachment;
  @override
  final CallCenterExecutive callCenterExecutive;
  @override
  final Chat chat;
  @override
  final Customer customer;
  @override
  final int id;
  @override
  final String message;
  @override
  final ServiceExecutive serviceExecutive;
  @override
  final String subject;
  @override
  final DateTime time;
  @override
  final bool visibleToCustomer;

  factory _$Message([void Function(MessageBuilder) updates]) =>
      (new MessageBuilder()..update(updates)).build();

  _$Message._(
      {this.attachment,
      this.callCenterExecutive,
      this.chat,
      this.customer,
      this.id,
      this.message,
      this.serviceExecutive,
      this.subject,
      this.time,
      this.visibleToCustomer})
      : super._();

  @override
  Message rebuild(void Function(MessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageBuilder toBuilder() => new MessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Message &&
        attachment == other.attachment &&
        callCenterExecutive == other.callCenterExecutive &&
        chat == other.chat &&
        customer == other.customer &&
        id == other.id &&
        message == other.message &&
        serviceExecutive == other.serviceExecutive &&
        subject == other.subject &&
        time == other.time &&
        visibleToCustomer == other.visibleToCustomer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, attachment.hashCode),
                                        callCenterExecutive.hashCode),
                                    chat.hashCode),
                                customer.hashCode),
                            id.hashCode),
                        message.hashCode),
                    serviceExecutive.hashCode),
                subject.hashCode),
            time.hashCode),
        visibleToCustomer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Message')
          ..add('attachment', attachment)
          ..add('callCenterExecutive', callCenterExecutive)
          ..add('chat', chat)
          ..add('customer', customer)
          ..add('id', id)
          ..add('message', message)
          ..add('serviceExecutive', serviceExecutive)
          ..add('subject', subject)
          ..add('time', time)
          ..add('visibleToCustomer', visibleToCustomer))
        .toString();
  }
}

class MessageBuilder implements Builder<Message, MessageBuilder> {
  _$Message _$v;

  String _attachment;
  String get attachment => _$this._attachment;
  set attachment(String attachment) => _$this._attachment = attachment;

  CallCenterExecutiveBuilder _callCenterExecutive;
  CallCenterExecutiveBuilder get callCenterExecutive =>
      _$this._callCenterExecutive ??= new CallCenterExecutiveBuilder();
  set callCenterExecutive(CallCenterExecutiveBuilder callCenterExecutive) =>
      _$this._callCenterExecutive = callCenterExecutive;

  ChatBuilder _chat;
  ChatBuilder get chat => _$this._chat ??= new ChatBuilder();
  set chat(ChatBuilder chat) => _$this._chat = chat;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ServiceExecutiveBuilder _serviceExecutive;
  ServiceExecutiveBuilder get serviceExecutive =>
      _$this._serviceExecutive ??= new ServiceExecutiveBuilder();
  set serviceExecutive(ServiceExecutiveBuilder serviceExecutive) =>
      _$this._serviceExecutive = serviceExecutive;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  bool _visibleToCustomer;
  bool get visibleToCustomer => _$this._visibleToCustomer;
  set visibleToCustomer(bool visibleToCustomer) =>
      _$this._visibleToCustomer = visibleToCustomer;

  MessageBuilder();

  MessageBuilder get _$this {
    if (_$v != null) {
      _attachment = _$v.attachment;
      _callCenterExecutive = _$v.callCenterExecutive?.toBuilder();
      _chat = _$v.chat?.toBuilder();
      _customer = _$v.customer?.toBuilder();
      _id = _$v.id;
      _message = _$v.message;
      _serviceExecutive = _$v.serviceExecutive?.toBuilder();
      _subject = _$v.subject;
      _time = _$v.time;
      _visibleToCustomer = _$v.visibleToCustomer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Message other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Message;
  }

  @override
  void update(void Function(MessageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Message build() {
    _$Message _$result;
    try {
      _$result = _$v ??
          new _$Message._(
              attachment: attachment,
              callCenterExecutive: _callCenterExecutive?.build(),
              chat: _chat?.build(),
              customer: _customer?.build(),
              id: id,
              message: message,
              serviceExecutive: _serviceExecutive?.build(),
              subject: subject,
              time: time,
              visibleToCustomer: visibleToCustomer);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'callCenterExecutive';
        _callCenterExecutive?.build();
        _$failedField = 'chat';
        _chat?.build();
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'serviceExecutive';
        _serviceExecutive?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Message', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
