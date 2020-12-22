// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotional_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PromotionalMessage> _$promotionalMessageSerializer =
    new _$PromotionalMessageSerializer();

class _$PromotionalMessageSerializer
    implements StructuredSerializer<PromotionalMessage> {
  @override
  final Iterable<Type> types = const [PromotionalMessage, _$PromotionalMessage];
  @override
  final String wireName = 'PromotionalMessage';

  @override
  Iterable<Object> serialize(Serializers serializers, PromotionalMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.attemptHistories != null) {
      result
        ..add('attemptHistories')
        ..add(serializers.serialize(object.attemptHistories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AttemptHistory)])));
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
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.loyaltyProgram != null) {
      result
        ..add('loyaltyProgram')
        ..add(serializers.serialize(object.loyaltyProgram,
            specifiedType: const FullType(LoyaltyProgram)));
    }
    if (object.questions != null) {
      result
        ..add('questions')
        ..add(serializers.serialize(object.questions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Question)])));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PromotionalMessage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PromotionalMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attemptHistories':
          result.attemptHistories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttemptHistory)]))
              as BuiltList<Object>);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loyaltyProgram':
          result.loyaltyProgram.replace(serializers.deserialize(value,
              specifiedType: const FullType(LoyaltyProgram)) as LoyaltyProgram);
          break;
        case 'questions':
          result.questions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Question)]))
              as BuiltList<Object>);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PromotionalMessage extends PromotionalMessage {
  @override
  final BuiltList<AttemptHistory> attemptHistories;
  @override
  final String description;
  @override
  final int id;
  @override
  final String image;
  @override
  final LoyaltyProgram loyaltyProgram;
  @override
  final BuiltList<Question> questions;
  @override
  final String title;

  factory _$PromotionalMessage(
          [void Function(PromotionalMessageBuilder) updates]) =>
      (new PromotionalMessageBuilder()..update(updates)).build();

  _$PromotionalMessage._(
      {this.attemptHistories,
      this.description,
      this.id,
      this.image,
      this.loyaltyProgram,
      this.questions,
      this.title})
      : super._();

  @override
  PromotionalMessage rebuild(
          void Function(PromotionalMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PromotionalMessageBuilder toBuilder() =>
      new PromotionalMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PromotionalMessage &&
        attemptHistories == other.attemptHistories &&
        description == other.description &&
        id == other.id &&
        image == other.image &&
        loyaltyProgram == other.loyaltyProgram &&
        questions == other.questions &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, attemptHistories.hashCode),
                            description.hashCode),
                        id.hashCode),
                    image.hashCode),
                loyaltyProgram.hashCode),
            questions.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PromotionalMessage')
          ..add('attemptHistories', attemptHistories)
          ..add('description', description)
          ..add('id', id)
          ..add('image', image)
          ..add('loyaltyProgram', loyaltyProgram)
          ..add('questions', questions)
          ..add('title', title))
        .toString();
  }
}

class PromotionalMessageBuilder
    implements Builder<PromotionalMessage, PromotionalMessageBuilder> {
  _$PromotionalMessage _$v;

  ListBuilder<AttemptHistory> _attemptHistories;
  ListBuilder<AttemptHistory> get attemptHistories =>
      _$this._attemptHistories ??= new ListBuilder<AttemptHistory>();
  set attemptHistories(ListBuilder<AttemptHistory> attemptHistories) =>
      _$this._attemptHistories = attemptHistories;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  LoyaltyProgramBuilder _loyaltyProgram;
  LoyaltyProgramBuilder get loyaltyProgram =>
      _$this._loyaltyProgram ??= new LoyaltyProgramBuilder();
  set loyaltyProgram(LoyaltyProgramBuilder loyaltyProgram) =>
      _$this._loyaltyProgram = loyaltyProgram;

  ListBuilder<Question> _questions;
  ListBuilder<Question> get questions =>
      _$this._questions ??= new ListBuilder<Question>();
  set questions(ListBuilder<Question> questions) =>
      _$this._questions = questions;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  PromotionalMessageBuilder();

  PromotionalMessageBuilder get _$this {
    if (_$v != null) {
      _attemptHistories = _$v.attemptHistories?.toBuilder();
      _description = _$v.description;
      _id = _$v.id;
      _image = _$v.image;
      _loyaltyProgram = _$v.loyaltyProgram?.toBuilder();
      _questions = _$v.questions?.toBuilder();
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PromotionalMessage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PromotionalMessage;
  }

  @override
  void update(void Function(PromotionalMessageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PromotionalMessage build() {
    _$PromotionalMessage _$result;
    try {
      _$result = _$v ??
          new _$PromotionalMessage._(
              attemptHistories: _attemptHistories?.build(),
              description: description,
              id: id,
              image: image,
              loyaltyProgram: _loyaltyProgram?.build(),
              questions: _questions?.build(),
              title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attemptHistories';
        _attemptHistories?.build();

        _$failedField = 'loyaltyProgram';
        _loyaltyProgram?.build();
        _$failedField = 'questions';
        _questions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PromotionalMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
