// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_type_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobTypeDTO> _$jobTypeDTOSerializer = new _$JobTypeDTOSerializer();

class _$JobTypeDTOSerializer implements StructuredSerializer<JobTypeDTO> {
  @override
  final Iterable<Type> types = const [JobTypeDTO, _$JobTypeDTO];
  @override
  final String wireName = 'JobTypeDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, JobTypeDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.searchKey != null) {
      result
        ..add('searchKey')
        ..add(serializers.serialize(object.searchKey,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  JobTypeDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobTypeDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'searchKey':
          result.searchKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$JobTypeDTO extends JobTypeDTO {
  @override
  final String description;
  @override
  final int id;
  @override
  final String name;
  @override
  final String searchKey;

  factory _$JobTypeDTO([void Function(JobTypeDTOBuilder) updates]) =>
      (new JobTypeDTOBuilder()..update(updates)).build();

  _$JobTypeDTO._({this.description, this.id, this.name, this.searchKey})
      : super._();

  @override
  JobTypeDTO rebuild(void Function(JobTypeDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobTypeDTOBuilder toBuilder() => new JobTypeDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobTypeDTO &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        searchKey == other.searchKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), id.hashCode), name.hashCode),
        searchKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JobTypeDTO')
          ..add('description', description)
          ..add('id', id)
          ..add('name', name)
          ..add('searchKey', searchKey))
        .toString();
  }
}

class JobTypeDTOBuilder implements Builder<JobTypeDTO, JobTypeDTOBuilder> {
  _$JobTypeDTO _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _searchKey;
  String get searchKey => _$this._searchKey;
  set searchKey(String searchKey) => _$this._searchKey = searchKey;

  JobTypeDTOBuilder();

  JobTypeDTOBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _name = _$v.name;
      _searchKey = _$v.searchKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobTypeDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JobTypeDTO;
  }

  @override
  void update(void Function(JobTypeDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JobTypeDTO build() {
    final _$result = _$v ??
        new _$JobTypeDTO._(
            description: description, id: id, name: name, searchKey: searchKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
