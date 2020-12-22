// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobHistory> _$jobHistorySerializer = new _$JobHistorySerializer();

class _$JobHistorySerializer implements StructuredSerializer<JobHistory> {
  @override
  final Iterable<Type> types = const [JobHistory, _$JobHistory];
  @override
  final String wireName = 'JobHistory';

  @override
  Iterable<Object> serialize(Serializers serializers, JobHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.job != null) {
      result
        ..add('job')
        ..add(serializers.serialize(object.job,
            specifiedType: const FullType(Job)));
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
  JobHistory deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobHistoryBuilder();

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
        case 'job':
          result.job.replace(serializers.deserialize(value,
              specifiedType: const FullType(Job)) as Job);
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

class _$JobHistory extends JobHistory {
  @override
  final int id;
  @override
  final Job job;
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

  factory _$JobHistory([void Function(JobHistoryBuilder) updates]) =>
      (new JobHistoryBuilder()..update(updates)).build();

  _$JobHistory._(
      {this.id,
      this.job,
      this.loggedBy,
      this.loggedDate,
      this.status,
      this.ticketLog,
      this.verifiedStatus})
      : super._();

  @override
  JobHistory rebuild(void Function(JobHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobHistoryBuilder toBuilder() => new JobHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobHistory &&
        id == other.id &&
        job == other.job &&
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
                    $jc($jc($jc(0, id.hashCode), job.hashCode),
                        loggedBy.hashCode),
                    loggedDate.hashCode),
                status.hashCode),
            ticketLog.hashCode),
        verifiedStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobHistory')
          ..add('id', id)
          ..add('job', job)
          ..add('loggedBy', loggedBy)
          ..add('loggedDate', loggedDate)
          ..add('status', status)
          ..add('ticketLog', ticketLog)
          ..add('verifiedStatus', verifiedStatus))
        .toString();
  }
}

class JobHistoryBuilder implements Builder<JobHistory, JobHistoryBuilder> {
  _$JobHistory _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  JobBuilder _job;
  JobBuilder get job => _$this._job ??= new JobBuilder();
  set job(JobBuilder job) => _$this._job = job;

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

  JobHistoryBuilder();

  JobHistoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _job = _$v.job?.toBuilder();
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
  void replace(JobHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JobHistory;
  }

  @override
  void update(void Function(JobHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobHistory build() {
    _$JobHistory _$result;
    try {
      _$result = _$v ??
          new _$JobHistory._(
              id: id,
              job: _job?.build(),
              loggedBy: loggedBy,
              loggedDate: loggedDate,
              status: status,
              ticketLog: ticketLog,
              verifiedStatus: verifiedStatus);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'job';
        _job?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'JobHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
