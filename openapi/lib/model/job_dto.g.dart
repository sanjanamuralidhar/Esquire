// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobDTO> _$jobDTOSerializer = new _$JobDTOSerializer();

class _$JobDTOSerializer implements StructuredSerializer<JobDTO> {
  @override
  final Iterable<Type> types = const [JobDTO, _$JobDTO];
  @override
  final String wireName = 'JobDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, JobDTO object,
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
    if (object.jobTypeId != null) {
      result
        ..add('jobTypeId')
        ..add(serializers.serialize(object.jobTypeId,
            specifiedType: const FullType(int)));
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
    if (object.serviceExecutiveId != null) {
      result
        ..add('serviceExecutiveId')
        ..add(serializers.serialize(object.serviceExecutiveId,
            specifiedType: const FullType(int)));
    }
    if (object.serviceLocation != null) {
      result
        ..add('serviceLocation')
        ..add(serializers.serialize(object.serviceLocation,
            specifiedType: const FullType(String)));
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
  JobDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobDTOBuilder();

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
        case 'jobNumber':
          result.jobNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTitle':
          result.jobTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobTypeId':
          result.jobTypeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
        case 'serviceExecutiveId':
          result.serviceExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'serviceLocation':
          result.serviceLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$JobDTO extends JobDTO {
  @override
  final int id;
  @override
  final String jobDescription;
  @override
  final String jobNumber;
  @override
  final String jobTitle;
  @override
  final int jobTypeId;
  @override
  final DateTime scheduledDate;
  @override
  final DateTime scheduledEndTime;
  @override
  final DateTime scheduledStartTime;
  @override
  final int serviceExecutiveId;
  @override
  final String serviceLocation;
  @override
  final int ticketId;

  factory _$JobDTO([void Function(JobDTOBuilder) updates]) =>
      (new JobDTOBuilder()..update(updates)).build();

  _$JobDTO._(
      {this.id,
      this.jobDescription,
      this.jobNumber,
      this.jobTitle,
      this.jobTypeId,
      this.scheduledDate,
      this.scheduledEndTime,
      this.scheduledStartTime,
      this.serviceExecutiveId,
      this.serviceLocation,
      this.ticketId})
      : super._();

  @override
  JobDTO rebuild(void Function(JobDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobDTOBuilder toBuilder() => new JobDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobDTO &&
        id == other.id &&
        jobDescription == other.jobDescription &&
        jobNumber == other.jobNumber &&
        jobTitle == other.jobTitle &&
        jobTypeId == other.jobTypeId &&
        scheduledDate == other.scheduledDate &&
        scheduledEndTime == other.scheduledEndTime &&
        scheduledStartTime == other.scheduledStartTime &&
        serviceExecutiveId == other.serviceExecutiveId &&
        serviceLocation == other.serviceLocation &&
        ticketId == other.ticketId;
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
                                        $jc($jc(0, id.hashCode),
                                            jobDescription.hashCode),
                                        jobNumber.hashCode),
                                    jobTitle.hashCode),
                                jobTypeId.hashCode),
                            scheduledDate.hashCode),
                        scheduledEndTime.hashCode),
                    scheduledStartTime.hashCode),
                serviceExecutiveId.hashCode),
            serviceLocation.hashCode),
        ticketId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobDTO')
          ..add('id', id)
          ..add('jobDescription', jobDescription)
          ..add('jobNumber', jobNumber)
          ..add('jobTitle', jobTitle)
          ..add('jobTypeId', jobTypeId)
          ..add('scheduledDate', scheduledDate)
          ..add('scheduledEndTime', scheduledEndTime)
          ..add('scheduledStartTime', scheduledStartTime)
          ..add('serviceExecutiveId', serviceExecutiveId)
          ..add('serviceLocation', serviceLocation)
          ..add('ticketId', ticketId))
        .toString();
  }
}

class JobDTOBuilder implements Builder<JobDTO, JobDTOBuilder> {
  _$JobDTO _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _jobDescription;
  String get jobDescription => _$this._jobDescription;
  set jobDescription(String jobDescription) =>
      _$this._jobDescription = jobDescription;

  String _jobNumber;
  String get jobNumber => _$this._jobNumber;
  set jobNumber(String jobNumber) => _$this._jobNumber = jobNumber;

  String _jobTitle;
  String get jobTitle => _$this._jobTitle;
  set jobTitle(String jobTitle) => _$this._jobTitle = jobTitle;

  int _jobTypeId;
  int get jobTypeId => _$this._jobTypeId;
  set jobTypeId(int jobTypeId) => _$this._jobTypeId = jobTypeId;

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

  int _serviceExecutiveId;
  int get serviceExecutiveId => _$this._serviceExecutiveId;
  set serviceExecutiveId(int serviceExecutiveId) =>
      _$this._serviceExecutiveId = serviceExecutiveId;

  String _serviceLocation;
  String get serviceLocation => _$this._serviceLocation;
  set serviceLocation(String serviceLocation) =>
      _$this._serviceLocation = serviceLocation;

  int _ticketId;
  int get ticketId => _$this._ticketId;
  set ticketId(int ticketId) => _$this._ticketId = ticketId;

  JobDTOBuilder();

  JobDTOBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _jobDescription = _$v.jobDescription;
      _jobNumber = _$v.jobNumber;
      _jobTitle = _$v.jobTitle;
      _jobTypeId = _$v.jobTypeId;
      _scheduledDate = _$v.scheduledDate;
      _scheduledEndTime = _$v.scheduledEndTime;
      _scheduledStartTime = _$v.scheduledStartTime;
      _serviceExecutiveId = _$v.serviceExecutiveId;
      _serviceLocation = _$v.serviceLocation;
      _ticketId = _$v.ticketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JobDTO;
  }

  @override
  void update(void Function(JobDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobDTO build() {
    final _$result = _$v ??
        new _$JobDTO._(
            id: id,
            jobDescription: jobDescription,
            jobNumber: jobNumber,
            jobTitle: jobTitle,
            jobTypeId: jobTypeId,
            scheduledDate: scheduledDate,
            scheduledEndTime: scheduledEndTime,
            scheduledStartTime: scheduledStartTime,
            serviceExecutiveId: serviceExecutiveId,
            serviceLocation: serviceLocation,
            ticketId: ticketId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
