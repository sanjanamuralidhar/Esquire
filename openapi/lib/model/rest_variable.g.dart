// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_variable.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestVariable> _$restVariableSerializer =
    new _$RestVariableSerializer();

class _$RestVariableSerializer implements StructuredSerializer<RestVariable> {
  @override
  final Iterable<Type> types = const [RestVariable, _$RestVariable];
  @override
  final String wireName = 'RestVariable';

  @override
  Iterable<Object> serialize(Serializers serializers, RestVariable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.scope != null) {
      result
        ..add('scope')
        ..add(serializers.serialize(object.scope,
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(JsonObject)));
    }
    if (object.valueUrl != null) {
      result
        ..add('valueUrl')
        ..add(serializers.serialize(object.valueUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RestVariable deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestVariableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scope':
          result.scope = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'valueUrl':
          result.valueUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RestVariable extends RestVariable {
  @override
  final String name;
  @override
  final String scope;
  @override
  final String type;
  @override
  final JsonObject value;
  @override
  final String valueUrl;

  factory _$RestVariable([void Function(RestVariableBuilder) updates]) =>
      (new RestVariableBuilder()..update(updates)).build();

  _$RestVariable._(
      {this.name, this.scope, this.type, this.value, this.valueUrl})
      : super._();

  @override
  RestVariable rebuild(void Function(RestVariableBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestVariableBuilder toBuilder() => new RestVariableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestVariable &&
        name == other.name &&
        scope == other.scope &&
        type == other.type &&
        value == other.value &&
        valueUrl == other.valueUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), scope.hashCode), type.hashCode),
            value.hashCode),
        valueUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestVariable')
          ..add('name', name)
          ..add('scope', scope)
          ..add('type', type)
          ..add('value', value)
          ..add('valueUrl', valueUrl))
        .toString();
  }
}

class RestVariableBuilder
    implements Builder<RestVariable, RestVariableBuilder> {
  _$RestVariable _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _scope;
  String get scope => _$this._scope;
  set scope(String scope) => _$this._scope = scope;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  JsonObject _value;
  JsonObject get value => _$this._value;
  set value(JsonObject value) => _$this._value = value;

  String _valueUrl;
  String get valueUrl => _$this._valueUrl;
  set valueUrl(String valueUrl) => _$this._valueUrl = valueUrl;

  RestVariableBuilder();

  RestVariableBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _scope = _$v.scope;
      _type = _$v.type;
      _value = _$v.value;
      _valueUrl = _$v.valueUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestVariable other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestVariable;
  }

  @override
  void update(void Function(RestVariableBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestVariable build() {
    final _$result = _$v ??
        new _$RestVariable._(
            name: name,
            scope: scope,
            type: type,
            value: value,
            valueUrl: valueUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
