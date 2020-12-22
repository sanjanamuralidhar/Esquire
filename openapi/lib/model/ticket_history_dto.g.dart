// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketHistoryDTO> _$ticketHistoryDTOSerializer =
    new _$TicketHistoryDTOSerializer();

class _$TicketHistoryDTOSerializer
    implements StructuredSerializer<TicketHistoryDTO> {
  @override
  final Iterable<Type> types = const [TicketHistoryDTO, _$TicketHistoryDTO];
  @override
  final String wireName = 'TicketHistoryDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, TicketHistoryDTO object,
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
    if (object.serviceExecutiveId != null) {
      result
        ..add('serviceExecutiveId')
        ..add(serializers.serialize(object.serviceExecutiveId,
            specifiedType: const FullType(int)));
    }
    if (object.serviceStatus != null) {
      result
        ..add('serviceStatus')
        ..add(serializers.serialize(object.serviceStatus,
            specifiedType: const FullType(String)));
    }
    if (object.ticketId != null) {
      result
        ..add('ticketId')
        ..add(serializers.serialize(object.ticketId,
            specifiedType: const FullType(int)));
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
  TicketHistoryDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketHistoryDTOBuilder();

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
        case 'serviceExecutiveId':
          result.serviceExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'serviceStatus':
          result.serviceStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketId':
          result.ticketId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$TicketHistoryDTO extends TicketHistoryDTO {
  @override
  final int id;
  @override
  final String loggedBy;
  @override
  final DateTime loggedDate;
  @override
  final int serviceExecutiveId;
  @override
  final String serviceStatus;
  @override
  final int ticketId;
  @override
  final String ticketLog;
  @override
  final String verifiedStatus;

  factory _$TicketHistoryDTO(
          [void Function(TicketHistoryDTOBuilder) updates]) =>
      (new TicketHistoryDTOBuilder()..update(updates)).build();

  _$TicketHistoryDTO._(
      {this.id,
      this.loggedBy,
      this.loggedDate,
      this.serviceExecutiveId,
      this.serviceStatus,
      this.ticketId,
      this.ticketLog,
      this.verifiedStatus})
      : super._();

  @override
  TicketHistoryDTO rebuild(void Function(TicketHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketHistoryDTOBuilder toBuilder() =>
      new TicketHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketHistoryDTO &&
        id == other.id &&
        loggedBy == other.loggedBy &&
        loggedDate == other.loggedDate &&
        serviceExecutiveId == other.serviceExecutiveId &&
        serviceStatus == other.serviceStatus &&
        ticketId == other.ticketId &&
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
                        serviceExecutiveId.hashCode),
                    serviceStatus.hashCode),
                ticketId.hashCode),
            ticketLog.hashCode),
        verifiedStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TicketHistoryDTO')
          ..add('id', id)
          ..add('loggedBy', loggedBy)
          ..add('loggedDate', loggedDate)
          ..add('serviceExecutiveId', serviceExecutiveId)
          ..add('serviceStatus', serviceStatus)
          ..add('ticketId', ticketId)
          ..add('ticketLog', ticketLog)
          ..add('verifiedStatus', verifiedStatus))
        .toString();
  }
}

class TicketHistoryDTOBuilder
    implements Builder<TicketHistoryDTO, TicketHistoryDTOBuilder> {
  _$TicketHistoryDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _loggedBy;
  String get loggedBy => _$this._loggedBy;
  set loggedBy(String loggedBy) => _$this._loggedBy = loggedBy;

  DateTime _loggedDate;
  DateTime get loggedDate => _$this._loggedDate;
  set loggedDate(DateTime loggedDate) => _$this._loggedDate = loggedDate;

  int _serviceExecutiveId;
  int get serviceExecutiveId => _$this._serviceExecutiveId;
  set serviceExecutiveId(int serviceExecutiveId) =>
      _$this._serviceExecutiveId = serviceExecutiveId;

  String _serviceStatus;
  String get serviceStatus => _$this._serviceStatus;
  set serviceStatus(String serviceStatus) =>
      _$this._serviceStatus = serviceStatus;

  int _ticketId;
  int get ticketId => _$this._ticketId;
  set ticketId(int ticketId) => _$this._ticketId = ticketId;

  String _ticketLog;
  String get ticketLog => _$this._ticketLog;
  set ticketLog(String ticketLog) => _$this._ticketLog = ticketLog;

  String _verifiedStatus;
  String get verifiedStatus => _$this._verifiedStatus;
  set verifiedStatus(String verifiedStatus) =>
      _$this._verifiedStatus = verifiedStatus;

  TicketHistoryDTOBuilder();

  TicketHistoryDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _loggedBy = _$v.loggedBy;
      _loggedDate = _$v.loggedDate;
      _serviceExecutiveId = _$v.serviceExecutiveId;
      _serviceStatus = _$v.serviceStatus;
      _ticketId = _$v.ticketId;
      _ticketLog = _$v.ticketLog;
      _verifiedStatus = _$v.verifiedStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketHistoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TicketHistoryDTO;
  }

  @override
  void update(void Function(TicketHistoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TicketHistoryDTO build() {
    final _$result = _$v ??
        new _$TicketHistoryDTO._(
            id: id,
            loggedBy: loggedBy,
            loggedDate: loggedDate,
            serviceExecutiveId: serviceExecutiveId,
            serviceStatus: serviceStatus,
            ticketId: ticketId,
            ticketLog: ticketLog,
            verifiedStatus: verifiedStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
