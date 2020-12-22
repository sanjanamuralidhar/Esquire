// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobHistoryDTO> _$jobHistoryDTOSerializer =
    new _$JobHistoryDTOSerializer();

class _$JobHistoryDTOSerializer implements StructuredSerializer<JobHistoryDTO> {
  @override
  final Iterable<Type> types = const [JobHistoryDTO, _$JobHistoryDTO];
  @override
  final String wireName = 'JobHistoryDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, JobHistoryDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.jobId != null) {
      result
        ..add('jobId')
        ..add(serializers.serialize(object.jobId,
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
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
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
  JobHistoryDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobHistoryDTOBuilder();

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
        case 'jobId':
          result.jobId = serializers.deserialize(value,
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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$JobHistoryDTO extends JobHistoryDTO {
  @override
  final int id;
  @override
  final int jobId;
  @override
  final String loggedBy;
  @override
  final DateTime loggedDate;
  @override
  final String status;
  @override
  final String ticketLog;
  @override
  final String verifiedStatus;

  factory _$JobHistoryDTO([void Function(JobHistoryDTOBuilder) updates]) =>
      (new JobHistoryDTOBuilder()..update(updates)).build();

  _$JobHistoryDTO._(
      {this.id,
      this.jobId,
      this.loggedBy,
      this.loggedDate,
      this.status,
      this.ticketLog,
      this.verifiedStatus})
      : super._();

  @override
  JobHistoryDTO rebuild(void Function(JobHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobHistoryDTOBuilder toBuilder() => new JobHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobHistoryDTO &&
        id == other.id &&
        jobId == other.jobId &&
        loggedBy == other.loggedBy &&
        loggedDate == other.loggedDate &&
        status == other.status &&
        ticketLog == other.ticketLog &&
        verifiedStatus == other.verifiedStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), jobId.hashCode),
                        loggedBy.hashCode),
                    loggedDate.hashCode),
                status.hashCode),
            ticketLog.hashCode),
        verifiedStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobHistoryDTO')
          ..add('id', id)
          ..add('jobId', jobId)
          ..add('loggedBy', loggedBy)
          ..add('loggedDate', loggedDate)
          ..add('status', status)
          ..add('ticketLog', ticketLog)
          ..add('verifiedStatus', verifiedStatus))
        .toString();
  }
}

class JobHistoryDTOBuilder
    implements Builder<JobHistoryDTO, JobHistoryDTOBuilder> {
  _$JobHistoryDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _jobId;
  int get jobId => _$this._jobId;
  set jobId(int jobId) => _$this._jobId = jobId;

  String _loggedBy;
  String get loggedBy => _$this._loggedBy;
  set loggedBy(String loggedBy) => _$this._loggedBy = loggedBy;

  DateTime _loggedDate;
  DateTime get loggedDate => _$this._loggedDate;
  set loggedDate(DateTime loggedDate) => _$this._loggedDate = loggedDate;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _ticketLog;
  String get ticketLog => _$this._ticketLog;
  set ticketLog(String ticketLog) => _$this._ticketLog = ticketLog;

  String _verifiedStatus;
  String get verifiedStatus => _$this._verifiedStatus;
  set verifiedStatus(String verifiedStatus) =>
      _$this._verifiedStatus = verifiedStatus;

  JobHistoryDTOBuilder();

  JobHistoryDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _jobId = _$v.jobId;
      _loggedBy = _$v.loggedBy;
      _loggedDate = _$v.loggedDate;
      _status = _$v.status;
      _ticketLog = _$v.ticketLog;
      _verifiedStatus = _$v.verifiedStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobHistoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JobHistoryDTO;
  }

  @override
  void update(void Function(JobHistoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobHistoryDTO build() {
    final _$result = _$v ??
        new _$JobHistoryDTO._(
            id: id,
            jobId: jobId,
            loggedBy: loggedBy,
            loggedDate: loggedDate,
            status: status,
            ticketLog: ticketLog,
            verifiedStatus: verifiedStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
