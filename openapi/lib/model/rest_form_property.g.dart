// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_form_property.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestFormProperty> _$restFormPropertySerializer =
    new _$RestFormPropertySerializer();

class _$RestFormPropertySerializer
    implements StructuredSerializer<RestFormProperty> {
  @override
  final Iterable<Type> types = const [RestFormProperty, _$RestFormProperty];
  @override
  final String wireName = 'RestFormProperty';

  @override
  Iterable<Object> serialize(Serializers serializers, RestFormProperty object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.datePattern != null) {
      result
        ..add('datePattern')
        ..add(serializers.serialize(object.datePattern,
            specifiedType: const FullType(String)));
    }
    if (object.enumValues != null) {
      result
        ..add('enumValues')
        ..add(serializers.serialize(object.enumValues,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RestEnumFormProperty)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.readable != null) {
      result
        ..add('readable')
        ..add(serializers.serialize(object.readable,
            specifiedType: const FullType(bool)));
    }
    if (object.required_ != null) {
      result
        ..add('required')
        ..add(serializers.serialize(object.required_,
            specifiedType: const FullType(bool)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    if (object.writable != null) {
      result
        ..add('writable')
        ..add(serializers.serialize(object.writable,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  RestFormProperty deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestFormPropertyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'datePattern':
          result.datePattern = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'enumValues':
          result.enumValues.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RestEnumFormProperty)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'readable':
          result.readable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'required':
          result.required_ = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'writable':
          result.writable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$RestFormProperty extends RestFormProperty {
  @override
  final String datePattern;
  @override
  final BuiltList<RestEnumFormProperty> enumValues;
  @override
  final String id;
  @override
  final String name;
  @override
  final bool readable;
  @override
  final bool required_;
  @override
  final String type;
  @override
  final String value;
  @override
  final bool writable;

  factory _$RestFormProperty(
          [void Function(RestFormPropertyBuilder) updates]) =>
      (new RestFormPropertyBuilder()..update(updates)).build();

  _$RestFormProperty._(
      {this.datePattern,
      this.enumValues,
      this.id,
      this.name,
      this.readable,
      this.required_,
      this.type,
      this.value,
      this.writable})
      : super._();

  @override
  RestFormProperty rebuild(void Function(RestFormPropertyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestFormPropertyBuilder toBuilder() =>
      new RestFormPropertyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestFormProperty &&
        datePattern == other.datePattern &&
        enumValues == other.enumValues &&
        id == other.id &&
        name == other.name &&
        readable == other.readable &&
        required_ == other.required_ &&
        type == other.type &&
        value == other.value &&
        writable == other.writable;
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
                                $jc($jc(0, datePattern.hashCode),
                                    enumValues.hashCode),
                                id.hashCode),
                            name.hashCode),
                        readable.hashCode),
                    required_.hashCode),
                type.hashCode),
            value.hashCode),
        writable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestFormProperty')
          ..add('datePattern', datePattern)
          ..add('enumValues', enumValues)
          ..add('id', id)
          ..add('name', name)
          ..add('readable', readable)
          ..add('required_', required_)
          ..add('type', type)
          ..add('value', value)
          ..add('writable', writable))
        .toString();
  }
}

class RestFormPropertyBuilder
    implements Builder<RestFormProperty, RestFormPropertyBuilder> {
  _$RestFormProperty _$v;

  String _datePattern;
  String get datePattern => _$this._datePattern;
  set datePattern(String datePattern) => _$this._datePattern = datePattern;

  ListBuilder<RestEnumFormProperty> _enumValues;
  ListBuilder<RestEnumFormProperty> get enumValues =>
      _$this._enumValues ??= new ListBuilder<RestEnumFormProperty>();
  set enumValues(ListBuilder<RestEnumFormProperty> enumValues) =>
      _$this._enumValues = enumValues;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _readable;
  bool get readable => _$this._readable;
  set readable(bool readable) => _$this._readable = readable;

  bool _required_;
  bool get required_ => _$this._required_;
  set required_(bool required_) => _$this._required_ = required_;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  bool _writable;
  bool get writable => _$this._writable;
  set writable(bool writable) => _$this._writable = writable;

  RestFormPropertyBuilder();

  RestFormPropertyBuilder get _$this {
    if (_$v != null) {
      _datePattern = _$v.datePattern;
      _enumValues = _$v.enumValues?.toBuilder();
      _id = _$v.id;
      _name = _$v.name;
      _readable = _$v.readable;
      _required_ = _$v.required_;
      _type = _$v.type;
      _value = _$v.value;
      _writable = _$v.writable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestFormProperty other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestFormProperty;
  }

  @override
  void update(void Function(RestFormPropertyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestFormProperty build() {
    _$RestFormProperty _$result;
    try {
      _$result = _$v ??
          new _$RestFormProperty._(
              datePattern: datePattern,
              enumValues: _enumValues?.build(),
              id: id,
              name: name,
              readable: readable,
              required_: required_,
              type: type,
              value: value,
              writable: writable);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'enumValues';
        _enumValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RestFormProperty', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
