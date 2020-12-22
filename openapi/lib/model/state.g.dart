// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<State> _$stateSerializer = new _$StateSerializer();

class _$StateSerializer implements StructuredSerializer<State> {
  @override
  final Iterable<Type> types = const [State, _$State];
  @override
  final String wireName = 'State';

  @override
  Iterable<Object> serialize(Serializers serializers, State object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  State deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StateBuilder();

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
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$State extends State {
  @override
  final int id;
  @override
  final String state;

  factory _$State([void Function(StateBuilder) updates]) =>
      (new StateBuilder()..update(updates)).build();

  _$State._({this.id, this.state}) : super._();

  @override
  State rebuild(void Function(StateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StateBuilder toBuilder() => new StateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is State && id == other.id && state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('State')
          ..add('id', id)
          ..add('state', state))
        .toString();
  }
}

class StateBuilder implements Builder<State, StateBuilder> {
  _$State _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  StateBuilder();

  StateBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(State other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$State;
  }

  @override
  void update(void Function(StateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$State build() {
    final _$result = _$v ?? new _$State._(id: id, state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
