// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Question> _$questionSerializer = new _$QuestionSerializer();

class _$QuestionSerializer implements StructuredSerializer<Question> {
  @override
  final Iterable<Type> types = const [Question, _$Question];
  @override
  final String wireName = 'Question';

  @override
  Iterable<Object> serialize(Serializers serializers, Question object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.answers != null) {
      result
        ..add('answers')
        ..add(serializers.serialize(object.answers,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Answer)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.promotionalMessage != null) {
      result
        ..add('promotionalMessage')
        ..add(serializers.serialize(object.promotionalMessage,
            specifiedType: const FullType(PromotionalMessage)));
    }
    if (object.question != null) {
      result
        ..add('question')
        ..add(serializers.serialize(object.question,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Question deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Answer)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'promotionalMessage':
          result.promotionalMessage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PromotionalMessage))
              as PromotionalMessage);
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Question extends Question {
  @override
  final BuiltList<Answer> answers;
  @override
  final int id;
  @override
  final PromotionalMessage promotionalMessage;
  @override
  final String question;

  factory _$Question([void Function(QuestionBuilder) updates]) =>
      (new QuestionBuilder()..update(updates)).build();

  _$Question._({this.answers, this.id, this.promotionalMessage, this.question})
      : super._();

  @override
  Question rebuild(void Function(QuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionBuilder toBuilder() => new QuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Question &&
        answers == other.answers &&
        id == other.id &&
        promotionalMessage == other.promotionalMessage &&
        question == other.question;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, answers.hashCode), id.hashCode),
            promotionalMessage.hashCode),
        question.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Question')
          ..add('answers', answers)
          ..add('id', id)
          ..add('promotionalMessage', promotionalMessage)
          ..add('question', question))
        .toString();
  }
}

class QuestionBuilder implements Builder<Question, QuestionBuilder> {
  _$Question _$v;

  ListBuilder<Answer> _answers;
  ListBuilder<Answer> get answers =>
      _$this._answers ??= new ListBuilder<Answer>();
  set answers(ListBuilder<Answer> answers) => _$this._answers = answers;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  PromotionalMessageBuilder _promotionalMessage;
  PromotionalMessageBuilder get promotionalMessage =>
      _$this._promotionalMessage ??= new PromotionalMessageBuilder();
  set promotionalMessage(PromotionalMessageBuilder promotionalMessage) =>
      _$this._promotionalMessage = promotionalMessage;

  String _question;
  String get question => _$this._question;
  set question(String question) => _$this._question = question;

  QuestionBuilder();

  QuestionBuilder get _$this {
    if (_$v != null) {
      _answers = _$v.answers?.toBuilder();
      _id = _$v.id;
      _promotionalMessage = _$v.promotionalMessage?.toBuilder();
      _question = _$v.question;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Question other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Question;
  }

  @override
  void update(void Function(QuestionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Question build() {
    _$Question _$result;
    try {
      _$result = _$v ??
          new _$Question._(
              answers: _answers?.build(),
              id: id,
              promotionalMessage: _promotionalMessage?.build(),
              question: question);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'answers';
        _answers?.build();

        _$failedField = 'promotionalMessage';
        _promotionalMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Question', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
