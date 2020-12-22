// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Answer> _$answerSerializer = new _$AnswerSerializer();

class _$AnswerSerializer implements StructuredSerializer<Answer> {
  @override
  final Iterable<Type> types = const [Answer, _$Answer];
  @override
  final String wireName = 'Answer';

  @override
  Iterable<Object> serialize(Serializers serializers, Answer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.answer != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(object.answer,
            specifiedType: const FullType(String)));
    }
    if (object.correctAnswer != null) {
      result
        ..add('correctAnswer')
        ..add(serializers.serialize(object.correctAnswer,
            specifiedType: const FullType(bool)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.question != null) {
      result
        ..add('question')
        ..add(serializers.serialize(object.question,
            specifiedType: const FullType(Question)));
    }
    return result;
  }

  @override
  Answer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnswerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'correctAnswer':
          result.correctAnswer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question':
          result.question.replace(serializers.deserialize(value,
              specifiedType: const FullType(Question)) as Question);
          break;
      }
    }

    return result.build();
  }
}

class _$Answer extends Answer {
  @override
  final String answer;
  @override
  final bool correctAnswer;
  @override
  final int id;
  @override
  final Question question;

  factory _$Answer([void Function(AnswerBuilder) updates]) =>
      (new AnswerBuilder()..update(updates)).build();

  _$Answer._({this.answer, this.correctAnswer, this.id, this.question})
      : super._();

  @override
  Answer rebuild(void Function(AnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerBuilder toBuilder() => new AnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Answer &&
        answer == other.answer &&
        correctAnswer == other.correctAnswer &&
        id == other.id &&
        question == other.question;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, answer.hashCode), correctAnswer.hashCode), id.hashCode),
        question.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Answer')
          ..add('answer', answer)
          ..add('correctAnswer', correctAnswer)
          ..add('id', id)
          ..add('question', question))
        .toString();
  }
}

class AnswerBuilder implements Builder<Answer, AnswerBuilder> {
  _$Answer _$v;

  String _answer;
  String get answer => _$this._answer;
  set answer(String answer) => _$this._answer = answer;

  bool _correctAnswer;
  bool get correctAnswer => _$this._correctAnswer;
  set correctAnswer(bool correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  QuestionBuilder _question;
  QuestionBuilder get question => _$this._question ??= new QuestionBuilder();
  set question(QuestionBuilder question) => _$this._question = question;

  AnswerBuilder();

  AnswerBuilder get _$this {
    if (_$v != null) {
      _answer = _$v.answer;
      _correctAnswer = _$v.correctAnswer;
      _id = _$v.id;
      _question = _$v.question?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Answer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Answer;
  }

  @override
  void update(void Function(AnswerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Answer build() {
    _$Answer _$result;
    try {
      _$result = _$v ??
          new _$Answer._(
              answer: answer,
              correctAnswer: correctAnswer,
              id: id,
              question: _question?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'question';
        _question?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Answer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
