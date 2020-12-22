// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_status_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobStatusModel> _$jobStatusModelSerializer =
    new _$JobStatusModelSerializer();

class _$JobStatusModelSerializer
    implements StructuredSerializer<JobStatusModel> {
  @override
  final Iterable<Type> types = const [JobStatusModel, _$JobStatusModel];
  @override
  final String wireName = 'JobStatusModel';

  @override
  Iterable<Object> serialize(Serializers serializers, JobStatusModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.jobDTO != null) {
      result
        ..add('jobDTO')
        ..add(serializers.serialize(object.jobDTO,
            specifiedType: const FullType(JobDTO)));
    }
    if (object.jobHistoryDTO != null) {
      result
        ..add('jobHistoryDTO')
        ..add(serializers.serialize(object.jobHistoryDTO,
            specifiedType: const FullType(JobHistoryDTO)));
    }
    return result;
  }

  @override
  JobStatusModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobStatusModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'jobDTO':
          result.jobDTO.replace(serializers.deserialize(value,
              specifiedType: const FullType(JobDTO)) as JobDTO);
          break;
        case 'jobHistoryDTO':
          result.jobHistoryDTO.replace(serializers.deserialize(value,
              specifiedType: const FullType(JobHistoryDTO)) as JobHistoryDTO);
          break;
      }
    }

    return result.build();
  }
}

class _$JobStatusModel extends JobStatusModel {
  @override
  final JobDTO jobDTO;
  @override
  final JobHistoryDTO jobHistoryDTO;

  factory _$JobStatusModel([void Function(JobStatusModelBuilder) updates]) =>
      (new JobStatusModelBuilder()..update(updates)).build();

  _$JobStatusModel._({this.jobDTO, this.jobHistoryDTO}) : super._();

  @override
  JobStatusModel rebuild(void Function(JobStatusModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobStatusModelBuilder toBuilder() =>
      new JobStatusModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobStatusModel &&
        jobDTO == other.jobDTO &&
        jobHistoryDTO == other.jobHistoryDTO;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, jobDTO.hashCode), jobHistoryDTO.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobStatusModel')
          ..add('jobDTO', jobDTO)
          ..add('jobHistoryDTO', jobHistoryDTO))
        .toString();
  }
}

class JobStatusModelBuilder
    implements Builder<JobStatusModel, JobStatusModelBuilder> {
  _$JobStatusModel _$v;

  JobDTOBuilder _jobDTO;
  JobDTOBuilder get jobDTO => _$this._jobDTO ??= new JobDTOBuilder();
  set jobDTO(JobDTOBuilder jobDTO) => _$this._jobDTO = jobDTO;

  JobHistoryDTOBuilder _jobHistoryDTO;
  JobHistoryDTOBuilder get jobHistoryDTO =>
      _$this._jobHistoryDTO ??= new JobHistoryDTOBuilder();
  set jobHistoryDTO(JobHistoryDTOBuilder jobHistoryDTO) =>
      _$this._jobHistoryDTO = jobHistoryDTO;

  JobStatusModelBuilder();

  JobStatusModelBuilder get _$this {
    if (_$v != null) {
      _jobDTO = _$v.jobDTO?.toBuilder();
      _jobHistoryDTO = _$v.jobHistoryDTO?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobStatusModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JobStatusModel;
  }

  @override
  void update(void Function(JobStatusModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobStatusModel build() {
    _$JobStatusModel _$result;
    try {
      _$result = _$v ??
          new _$JobStatusModel._(
              jobDTO: _jobDTO?.build(), jobHistoryDTO: _jobHistoryDTO?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'jobDTO';
        _jobDTO?.build();
        _$failedField = 'jobHistoryDTO';
        _jobHistoryDTO?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'JobStatusModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
