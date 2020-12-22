// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketHistory> _$ticketHistorySerializer =
    new _$TicketHistorySerializer();

class _$TicketHistorySerializer implements StructuredSerializer<TicketHistory> {
  @override
  final Iterable<Type> types = const [TicketHistory, _$TicketHistory];
  @override
  final String wireName = 'TicketHistory';

  @override
  Iterable<Object> serialize(Serializers serializers, TicketHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.loggedBy != null) {
      result
        ..add('loggedBy')
        ..add(serializers.serialize(object.loggedBy,
            specifiedType: const FullType(String)));
    }
    if (object.loggedDate != null) {
      result
        ..add('loggedDate')
        ..add(serializers.serialize(object.loggedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.serviceExecutive != null) {
      result
        ..add('serviceExecutive')
        ..add(serializers.serialize(object.serviceExecutive,
            specifiedType: const FullType(ServiceExecutive)));
    }
    if (object.serviceStatus != null) {
      result
        ..add('serviceStatus')
        ..add(serializers.serialize(object.serviceStatus,
            specifiedType: const FullType(String)));
    }
    if (object.ticket != null) {
      result
        ..add('ticket')
        ..add(serializers.serialize(object.ticket,
            specifiedType: const FullType(Ticket)));
    }
    if (object.ticketLog != null) {
      result
        ..add('ticketLog')
        ..add(serializers.serialize(object.ticketLog,
            specifiedType: const FullType(String)));
    }
    if (object.verifiedStatus != null) {
      result
        ..add('verifiedStatus')
        ..add(serializers.serialize(object.verifiedStatus,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TicketHistory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketHistoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'loggedBy':
          result.loggedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loggedDate':
          result.loggedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'serviceExecutive':
          result.serviceExecutive.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ServiceExecutive))
              as ServiceExecutive);
          break;
        case 'serviceStatus':
          result.serviceStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticket':
          result.ticket.replace(serializers.deserialize(value,
              specifiedType: const FullType(Ticket)) as Ticket);
          break;
        case 'ticketLog':
          result.ticketLog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verifiedStatus':
          result.verifiedStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TicketHistory extends TicketHistory {
  @override
  final int id;
  @override
  final String loggedBy;
  @override
  final DateTime loggedDate;
  @override
  final ServiceExecutive serviceExecutive;
  @override
  final String serviceStatus;
  @override
  final Ticket ticket;
  @override
  final String ticketLog;
  @override
  final String verifiedStatus;

  factory _$TicketHistory([void Function(TicketHistoryBuilder) updates]) =>
      (new TicketHistoryBuilder()..update(updates)).build();

  _$TicketHistory._(
      {this.id,
      this.loggedBy,
      this.loggedDate,
      this.serviceExecutive,
      this.serviceStatus,
      this.ticket,
      this.ticketLog,
      this.verifiedStatus})
      : super._();

  @override
  TicketHistory rebuild(void Function(TicketHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketHistoryBuilder toBuilder() => new TicketHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketHistory &&
        id == other.id &&
        loggedBy == other.loggedBy &&
        loggedDate == other.loggedDate &&
        serviceExecutive == other.serviceExecutive &&
        serviceStatus == other.serviceStatus &&
        ticket == other.ticket &&
        ticketLog == other.ticketLog &&
        verifiedStatus == other.verifiedStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), loggedBy.hashCode),
                            loggedDate.hashCode),
                        serviceExecutive.hashCode),
                    serviceStatus.hashCode),
                ticket.hashCode),
            ticketLog.hashCode),
        verifiedStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TicketHistory')
          ..add('id', id)
          ..add('loggedBy', loggedBy)
          ..add('loggedDate', loggedDate)
          ..add('serviceExecutive', serviceExecutive)
          ..add('serviceStatus', serviceStatus)
          ..add('ticket', ticket)
          ..add('ticketLog', ticketLog)
          ..add('verifiedStatus', verifiedStatus))
        .toString();
  }
}

class TicketHistoryBuilder
    implements Builder<TicketHistory, TicketHistoryBuilder> {
  _$TicketHistory _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _loggedBy;
  String get loggedBy => _$this._loggedBy;
  set loggedBy(String loggedBy) => _$this._loggedBy = loggedBy;

  DateTime _loggedDate;
  DateTime get loggedDate => _$this._loggedDate;
  set loggedDate(DateTime loggedDate) => _$this._loggedDate = loggedDate;

  ServiceExecutiveBuilder _serviceExecutive;
  ServiceExecutiveBuilder get serviceExecutive =>
      _$this._serviceExecutive ??= new ServiceExecutiveBuilder();
  set serviceExecutive(ServiceExecutiveBuilder serviceExecutive) =>
      _$this._serviceExecutive = serviceExecutive;

  String _serviceStatus;
  String get serviceStatus => _$this._serviceStatus;
  set serviceStatus(String serviceStatus) =>
      _$this._serviceStatus = serviceStatus;

  TicketBuilder _ticket;
  TicketBuilder get ticket => _$this._ticket ??= new TicketBuilder();
  set ticket(TicketBuilder ticket) => _$this._ticket = ticket;

  String _ticketLog;
  String get ticketLog => _$this._ticketLog;
  set ticketLog(String ticketLog) => _$this._ticketLog = ticketLog;

  String _verifiedStatus;
  String get verifiedStatus => _$this._verifiedStatus;
  set verifiedStatus(String verifiedStatus) =>
      _$this._verifiedStatus = verifiedStatus;

  TicketHistoryBuilder();

  TicketHistoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _loggedBy = _$v.loggedBy;
      _loggedDate = _$v.loggedDate;
      _serviceExecutive = _$v.serviceExecutive?.toBuilder();
      _serviceStatus = _$v.serviceStatus;
      _ticket = _$v.ticket?.toBuilder();
      _ticketLog = _$v.ticketLog;
      _verifiedStatus = _$v.verifiedStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TicketHistory;
  }

  @override
  void update(void Function(TicketHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TicketHistory build() {
    _$TicketHistory _$result;
    try {
      _$result = _$v ??
          new _$TicketHistory._(
              id: id,
              loggedBy: loggedBy,
              loggedDate: loggedDate,
              serviceExecutive: _serviceExecutive?.build(),
              serviceStatus: serviceStatus,
              ticket: _ticket?.build(),
              ticketLog: ticketLog,
              verifiedStatus: verifiedStatus);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'serviceExecutive';
        _serviceExecutive?.build();

        _$failedField = 'ticket';
        _ticket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TicketHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
