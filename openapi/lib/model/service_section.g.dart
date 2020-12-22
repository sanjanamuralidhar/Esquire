// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceSection> _$serviceSectionSerializer =
    new _$ServiceSectionSerializer();

class _$ServiceSectionSerializer
    implements StructuredSerializer<ServiceSection> {
  @override
  final Iterable<Type> types = const [ServiceSection, _$ServiceSection];
  @override
  final String wireName = 'ServiceSection';

  @override
  Iterable<Object> serialize(Serializers serializers, ServiceSection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(Branch)));
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
    if (object.serviceExecutives != null) {
      result
        ..add('serviceExecutives')
        ..add(serializers.serialize(object.serviceExecutives,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ServiceExecutive)])));
    }
    return result;
  }

  @override
  ServiceSection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceSectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branch':
          result.branch.replace(serializers.deserialize(value,
              specifiedType: const FullType(Branch)) as Branch);
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
        case 'serviceExecutives':
          result.serviceExecutives.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ServiceExecutive)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceSection extends ServiceSection {
  @override
  final Branch branch;
  @override
  final String description;
  @override
  final int id;
  @override
  final bool inhouseSection;
  @override
  final String name;
  @override
  final BuiltList<ServiceExecutive> serviceExecutives;

  factory _$ServiceSection([void Function(ServiceSectionBuilder) updates]) =>
      (new ServiceSectionBuilder()..update(updates)).build();

  _$ServiceSection._(
      {this.branch,
      this.description,
      this.id,
      this.inhouseSection,
      this.name,
      this.serviceExecutives})
      : super._();

  @override
  ServiceSection rebuild(void Function(ServiceSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceSectionBuilder toBuilder() =>
      new ServiceSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceSection &&
        branch == other.branch &&
        description == other.description &&
        id == other.id &&
        inhouseSection == other.inhouseSection &&
        name == other.name &&
        serviceExecutives == other.serviceExecutives;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, branch.hashCode), description.hashCode),
                    id.hashCode),
                inhouseSection.hashCode),
            name.hashCode),
        serviceExecutives.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceSection')
          ..add('branch', branch)
          ..add('description', description)
          ..add('id', id)
          ..add('inhouseSection', inhouseSection)
          ..add('name', name)
          ..add('serviceExecutives', serviceExecutives))
        .toString();
  }
}

class ServiceSectionBuilder
    implements Builder<ServiceSection, ServiceSectionBuilder> {
  _$ServiceSection _$v;

  BranchBuilder _branch;
  BranchBuilder get branch => _$this._branch ??= new BranchBuilder();
  set branch(BranchBuilder branch) => _$this._branch = branch;

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

  ListBuilder<ServiceExecutive> _serviceExecutives;
  ListBuilder<ServiceExecutive> get serviceExecutives =>
      _$this._serviceExecutives ??= new ListBuilder<ServiceExecutive>();
  set serviceExecutives(ListBuilder<ServiceExecutive> serviceExecutives) =>
      _$this._serviceExecutives = serviceExecutives;

  ServiceSectionBuilder();

  ServiceSectionBuilder get _$this {
    if (_$v != null) {
      _branch = _$v.branch?.toBuilder();
      _description = _$v.description;
      _id = _$v.id;
      _inhouseSection = _$v.inhouseSection;
      _name = _$v.name;
      _serviceExecutives = _$v.serviceExecutives?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceSection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceSection;
  }

  @override
  void update(void Function(ServiceSectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceSection build() {
    _$ServiceSection _$result;
    try {
      _$result = _$v ??
          new _$ServiceSection._(
              branch: _branch?.build(),
              description: description,
              id: id,
              inhouseSection: inhouseSection,
              name: name,
              serviceExecutives: _serviceExecutives?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'branch';
        _branch?.build();

        _$failedField = 'serviceExecutives';
        _serviceExecutives?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServiceSection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
