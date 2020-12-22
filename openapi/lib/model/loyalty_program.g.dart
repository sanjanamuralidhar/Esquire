// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_program.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoyaltyProgram> _$loyaltyProgramSerializer =
    new _$LoyaltyProgramSerializer();

class _$LoyaltyProgramSerializer
    implements StructuredSerializer<LoyaltyProgram> {
  @override
  final Iterable<Type> types = const [LoyaltyProgram, _$LoyaltyProgram];
  @override
  final String wireName = 'LoyaltyProgram';

  @override
  Iterable<Object> serialize(Serializers serializers, LoyaltyProgram object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.endingDate != null) {
      result
        ..add('endingDate')
        ..add(serializers.serialize(object.endingDate,
            specifiedType: const FullType(DateTime)));
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
    if (object.promotionalMessages != null) {
      result
        ..add('promotionalMessages')
        ..add(serializers.serialize(object.promotionalMessages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PromotionalMessage)])));
    }
    if (object.startingDate != null) {
      result
        ..add('startingDate')
        ..add(serializers.serialize(object.startingDate,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  LoyaltyProgram deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoyaltyProgramBuilder();

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
        case 'endingDate':
          result.endingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'promotionalMessages':
          result.promotionalMessages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PromotionalMessage)]))
              as BuiltList<Object>);
          break;
        case 'startingDate':
          result.startingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$LoyaltyProgram extends LoyaltyProgram {
  @override
  final String description;
  @override
  final DateTime endingDate;
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<PromotionalMessage> promotionalMessages;
  @override
  final DateTime startingDate;

  factory _$LoyaltyProgram([void Function(LoyaltyProgramBuilder) updates]) =>
      (new LoyaltyProgramBuilder()..update(updates)).build();

  _$LoyaltyProgram._(
      {this.description,
      this.endingDate,
      this.id,
      this.name,
      this.promotionalMessages,
      this.startingDate})
      : super._();

  @override
  LoyaltyProgram rebuild(void Function(LoyaltyProgramBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoyaltyProgramBuilder toBuilder() =>
      new LoyaltyProgramBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoyaltyProgram &&
        description == other.description &&
        endingDate == other.endingDate &&
        id == other.id &&
        name == other.name &&
        promotionalMessages == other.promotionalMessages &&
        startingDate == other.startingDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, description.hashCode), endingDate.hashCode),
                    id.hashCode),
                name.hashCode),
            promotionalMessages.hashCode),
        startingDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoyaltyProgram')
          ..add('description', description)
          ..add('endingDate', endingDate)
          ..add('id', id)
          ..add('name', name)
          ..add('promotionalMessages', promotionalMessages)
          ..add('startingDate', startingDate))
        .toString();
  }
}

class LoyaltyProgramBuilder
    implements Builder<LoyaltyProgram, LoyaltyProgramBuilder> {
  _$LoyaltyProgram _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _endingDate;
  DateTime get endingDate => _$this._endingDate;
  set endingDate(DateTime endingDate) => _$this._endingDate = endingDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<PromotionalMessage> _promotionalMessages;
  ListBuilder<PromotionalMessage> get promotionalMessages =>
      _$this._promotionalMessages ??= new ListBuilder<PromotionalMessage>();
  set promotionalMessages(
          ListBuilder<PromotionalMessage> promotionalMessages) =>
      _$this._promotionalMessages = promotionalMessages;

  DateTime _startingDate;
  DateTime get startingDate => _$this._startingDate;
  set startingDate(DateTime startingDate) =>
      _$this._startingDate = startingDate;

  LoyaltyProgramBuilder();

  LoyaltyProgramBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _endingDate = _$v.endingDate;
      _id = _$v.id;
      _name = _$v.name;
      _promotionalMessages = _$v.promotionalMessages?.toBuilder();
      _startingDate = _$v.startingDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoyaltyProgram other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoyaltyProgram;
  }

  @override
  void update(void Function(LoyaltyProgramBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoyaltyProgram build() {
    _$LoyaltyProgram _$result;
    try {
      _$result = _$v ??
          new _$LoyaltyProgram._(
              description: description,
              endingDate: endingDate,
              id: id,
              name: name,
              promotionalMessages: _promotionalMessages?.build(),
              startingDate: startingDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'promotionalMessages';
        _promotionalMessages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoyaltyProgram', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
