// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_section_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceSectionDTO> _$serviceSectionDTOSerializer =
    new _$ServiceSectionDTOSerializer();

class _$ServiceSectionDTOSerializer
    implements StructuredSerializer<ServiceSectionDTO> {
  @override
  final Iterable<Type> types = const [ServiceSectionDTO, _$ServiceSectionDTO];
  @override
  final String wireName = 'ServiceSectionDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, ServiceSectionDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branchId != null) {
      result
        ..add('branchId')
        ..add(serializers.serialize(object.branchId,
            specifiedType: const FullType(int)));
    }
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
    if (object.inhouseSection != null) {
      result
        ..add('inhouseSection')
        ..add(serializers.serialize(object.inhouseSection,
            specifiedType: const FullType(bool)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ServiceSectionDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceSectionDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branchId':
          result.branchId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'inhouseSection':
          result.inhouseSection = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceSectionDTO extends ServiceSectionDTO {
  @override
  final int branchId;
  @override
  final String description;
  @override
  final int id;
  @override
  final bool inhouseSection;
  @override
  final String name;

  factory _$ServiceSectionDTO(
          [void Function(ServiceSectionDTOBuilder) updates]) =>
      (new ServiceSectionDTOBuilder()..update(updates)).build();

  _$ServiceSectionDTO._(
      {this.branchId,
      this.description,
      this.id,
      this.inhouseSection,
      this.name})
      : super._();

  @override
  ServiceSectionDTO rebuild(void Function(ServiceSectionDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceSectionDTOBuilder toBuilder() =>
      new ServiceSectionDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceSectionDTO &&
        branchId == other.branchId &&
        description == other.description &&
        id == other.id &&
        inhouseSection == other.inhouseSection &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, branchId.hashCode), description.hashCode),
                id.hashCode),
            inhouseSection.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceSectionDTO')
          ..add('branchId', branchId)
          ..add('description', description)
          ..add('id', id)
          ..add('inhouseSection', inhouseSection)
          ..add('name', name))
        .toString();
  }
}

class ServiceSectionDTOBuilder
    implements Builder<ServiceSectionDTO, ServiceSectionDTOBuilder> {
  _$ServiceSectionDTO _$v;

  int _branchId;
  int get branchId => _$this._branchId;
  set branchId(int branchId) => _$this._branchId = branchId;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _inhouseSection;
  bool get inhouseSection => _$this._inhouseSection;
  set inhouseSection(bool inhouseSection) =>
      _$this._inhouseSection = inhouseSection;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ServiceSectionDTOBuilder();

  ServiceSectionDTOBuilder get _$this {
    if (_$v != null) {
      _branchId = _$v.branchId;
      _description = _$v.description;
      _id = _$v.id;
      _inhouseSection = _$v.inhouseSection;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceSectionDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceSectionDTO;
  }

  @override
  void update(void Function(ServiceSectionDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceSectionDTO build() {
    final _$result = _$v ??
        new _$ServiceSectionDTO._(
            branchId: branchId,
            description: description,
            id: id,
            inhouseSection: inhouseSection,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
