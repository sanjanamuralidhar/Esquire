// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Job> _$jobSerializer = new _$JobSerializer();

class _$JobSerializer implements StructuredSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];
  @override
  final String wireName = 'Job';

  @override
  Iterable<Object> serialize(Serializers serializers, Job object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.jobDescription != null) {
      result
        ..add('jobDescription')
        ..add(serializers.serialize(object.jobDescription,
            specifiedType: const FullType(String)));
    }
    if (object.jobHistories != null) {
      result
        ..add('jobHistories')
        ..add(serializers.serialize(object.jobHistories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(JobHistory)])));
    }
    if (object.jobNumber != null) {
      result
        ..add('jobNumber')
        ..add(serializers.serialize(object.jobNumber,
            specifiedType: const FullType(String)));
    }
    if (object.jobTitle != null) {
      result
        ..add('jobTitle')
        ..add(serializers.serialize(object.jobTitle,
            specifiedType: const FullType(String)));
    }
    if (object.jobType != null) {
      result
        ..add('jobType')
        ..add(serializers.serialize(object.jobType,
            specifiedType: const FullType(JobType)));
    }
    if (object.scheduledDate != null) {
      result
        ..add('scheduledDate')
        ..add(serializers.serialize(object.scheduledDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.scheduledEndTime != null) {
      result
        ..add('scheduledEndTime')
        ..add(serializers.serialize(object.scheduledEndTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.scheduledStartTime != null) {
      result
        ..add('scheduledStartTime')
        ..add(serializers.serialize(object.scheduledStartTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.serviceExecutive != null) {
      result
        ..add('serviceExecutive')
        ..add(serializers.serialize(object.serviceExecutive,
            specifiedType: const FullType(ServiceExecutive)));
    }
    if (object.serviceLocation != null) {
      result
        ..add('serviceLocation')
        ..add(serializers.serialize(object.serviceLocation,
            specifiedType: const FullType(String)));
    }
    if (object.ticket != null) {
      result
        ..add('ticket')
        ..add(serializers.serialize(object.ticket,
            specifiedType: const FullType(Ticket)));
    }
    return result;
  }

  @override
  Job deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobBuilder();

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
        case 'jobDescription':
          result.jobDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobHistories':
          result.jobHistories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JobHistory)]))
              as BuiltList<Object>);
          break;
        case 'jobNumber':
          result.jobNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobType':
          result.jobType.replace(serializers.deserialize(value,
              specifiedType: const FullType(JobType)) as JobType);
          break;
        case 'scheduledDate':
          result.scheduledDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'scheduledEndTime':
          result.scheduledEndTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'scheduledStartTime':
          result.scheduledStartTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'serviceExecutive':
          result.serviceExecutive.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ServiceExecutive))
              as ServiceExecutive);
          break;
        case 'serviceLocation':
          result.serviceLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticket':
          result.ticket.replace(serializers.deserialize(value,
              specifiedType: const FullType(Ticket)) as Ticket);
          break;
      }
    }

    return result.build();
  }
}

class _$Job extends Job {
  @override
  final int id;
  @override
  final String jobDescription;
  @override
  final BuiltList<JobHistory> jobHistories;
  @override
  final String jobNumber;
  @override
  final String jobTitle;
  @override
  final JobType jobType;
  @override
  final DateTime scheduledDate;
  @override
  final DateTime scheduledEndTime;
  @override
  final DateTime scheduledStartTime;
  @override
  final ServiceExecutive serviceExecutive;
  @override
  final String serviceLocation;
  @override
  final Ticket ticket;

  factory _$Job([void Function(JobBuilder) updates]) =>
      (new JobBuilder()..update(updates)).build();

  _$Job._(
      {this.id,
      this.jobDescription,
      this.jobHistories,
      this.jobNumber,
      this.jobTitle,
      this.jobType,
      this.scheduledDate,
      this.scheduledEndTime,
      this.scheduledStartTime,
      this.serviceExecutive,
      this.serviceLocation,
      this.ticket})
      : super._();

  @override
  Job rebuild(void Function(JobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobBuilder toBuilder() => new JobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Job &&
        id == other.id &&
        jobDescription == other.jobDescription &&
        jobHistories == other.jobHistories &&
        jobNumber == other.jobNumber &&
        jobTitle == other.jobTitle &&
        jobType == other.jobType &&
        scheduledDate == other.scheduledDate &&
        scheduledEndTime == other.scheduledEndTime &&
        scheduledStartTime == other.scheduledStartTime &&
        serviceExecutive == other.serviceExecutive &&
        serviceLocation == other.serviceLocation &&
        ticket == other.ticket;
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
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                jobDescription.hashCode),
                                            jobHistories.hashCode),
                                        jobNumber.hashCode),
                                    jobTitle.hashCode),
                                jobType.hashCode),
                            scheduledDate.hashCode),
                        scheduledEndTime.hashCode),
                    scheduledStartTime.hashCode),
                serviceExecutive.hashCode),
            serviceLocation.hashCode),
        ticket.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Job')
          ..add('id', id)
          ..add('jobDescription', jobDescription)
          ..add('jobHistories', jobHistories)
          ..add('jobNumber', jobNumber)
          ..add('jobTitle', jobTitle)
          ..add('jobType', jobType)
          ..add('scheduledDate', scheduledDate)
          ..add('scheduledEndTime', scheduledEndTime)
          ..add('scheduledStartTime', scheduledStartTime)
          ..add('serviceExecutive', serviceExecutive)
          ..add('serviceLocation', serviceLocation)
          ..add('ticket', ticket))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder> {
  _$Job _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _jobDescription;
  String get jobDescription => _$this._jobDescription;
  set jobDescription(String jobDescription) =>
      _$this._jobDescription = jobDescription;

  ListBuilder<JobHistory> _jobHistories;
  ListBuilder<JobHistory> get jobHistories =>
      _$this._jobHistories ??= new ListBuilder<JobHistory>();
  set jobHistories(ListBuilder<JobHistory> jobHistories) =>
      _$this._jobHistories = jobHistories;

  String _jobNumber;
  String get jobNumber => _$this._jobNumber;
  set jobNumber(String jobNumber) => _$this._jobNumber = jobNumber;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  JobTypeBuilder _jobType;
  JobTypeBuilder get jobType => _$this._jobType ??= new JobTypeBuilder();
  set jobType(JobTypeBuilder jobType) => _$this._jobType = jobType;

  DateTime _scheduledDate;
  DateTime get scheduledDate => _$this._scheduledDate;
  set scheduledDate(DateTime scheduledDate) =>
      _$this._scheduledDate = scheduledDate;

  DateTime _scheduledEndTime;
  DateTime get scheduledEndTime => _$this._scheduledEndTime;
  set scheduledEndTime(DateTime scheduledEndTime) =>
      _$this._scheduledEndTime = scheduledEndTime;

  DateTime _scheduledStartTime;
  DateTime get scheduledStartTime => _$this._scheduledStartTime;
  set scheduledStartTime(DateTime scheduledStartTime) =>
      _$this._scheduledStartTime = scheduledStartTime;

  ServiceExecutiveBuilder _serviceExecutive;
  ServiceExecutiveBuilder get serviceExecutive =>
      _$this._serviceExecutive ??= new ServiceExecutiveBuilder();
  set serviceExecutive(ServiceExecutiveBuilder serviceExecutive) =>
      _$this._serviceExecutive = serviceExecutive;

  String _serviceLocation;
  String get serviceLocation => _$this._serviceLocation;
  set serviceLocation(String serviceLocation) =>
      _$this._serviceLocation = serviceLocation;

  TicketBuilder _ticket;
  TicketBuilder get ticket => _$this._ticket ??= new TicketBuilder();
  set ticket(TicketBuilder ticket) => _$this._ticket = ticket;

  JobBuilder();

  JobBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _jobDescription = _$v.jobDescription;
      _jobHistories = _$v.jobHistories?.toBuilder();
      _jobNumber = _$v.jobNumber;
      _jobTitle = _$v.jobTitle;
      _jobType = _$v.jobType?.toBuilder();
      _scheduledDate = _$v.scheduledDate;
      _scheduledEndTime = _$v.scheduledEndTime;
      _scheduledStartTime = _$v.scheduledStartTime;
      _serviceExecutive = _$v.serviceExecutive?.toBuilder();
      _serviceLocation = _$v.serviceLocation;
      _ticket = _$v.ticket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Job other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Job;
  }

  @override
  void update(void Function(JobBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Job build() {
    _$Job _$result;
    try {
      _$result = _$v ??
          new _$Job._(
              id: id,
              jobDescription: jobDescription,
              jobHistories: _jobHistories?.build(),
              jobNumber: jobNumber,
              jobTitle: jobTitle,
              jobType: _jobType?.build(),
              scheduledDate: scheduledDate,
              scheduledEndTime: scheduledEndTime,
              scheduledStartTime: scheduledStartTime,
              serviceExecutive: _serviceExecutive?.build(),
              serviceLocation: serviceLocation,
              ticket: _ticket?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'jobHistories';
        _jobHistories?.build();

        _$failedField = 'jobType';
        _jobType?.build();

        _$failedField = 'serviceExecutive';
        _serviceExecutive?.build();

        _$failedField = 'ticket';
        _ticket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Job', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
