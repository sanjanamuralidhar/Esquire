// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FormDataResponse> _$formDataResponseSerializer =
    new _$FormDataResponseSerializer();

class _$FormDataResponseSerializer
    implements StructuredSerializer<FormDataResponse> {
  @override
  final Iterable<Type> types = const [FormDataResponse, _$FormDataResponse];
  @override
  final String wireName = 'FormDataResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, FormDataResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.deploymentId != null) {
      result
        ..add('deploymentId')
        ..add(serializers.serialize(object.deploymentId,
            specifiedType: const FullType(String)));
    }
    if (object.formKey != null) {
      result
        ..add('formKey')
        ..add(serializers.serialize(object.formKey,
            specifiedType: const FullType(String)));
    }
    if (object.formProperties != null) {
      result
        ..add('formProperties')
        ..add(serializers.serialize(object.formProperties,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RestFormProperty)])));
    }
    if (object.processDefinitionId != null) {
      result
        ..add('processDefinitionId')
        ..add(serializers.serialize(object.processDefinitionId,
            specifiedType: const FullType(String)));
    }
    if (object.processDefinitionUrl != null) {
      result
        ..add('processDefinitionUrl')
        ..add(serializers.serialize(object.processDefinitionUrl,
            specifiedType: const FullType(String)));
    }
    if (object.taskId != null) {
      result
        ..add('taskId')
        ..add(serializers.serialize(object.taskId,
            specifiedType: const FullType(String)));
    }
    if (object.taskUrl != null) {
      result
        ..add('taskUrl')
        ..add(serializers.serialize(object.taskUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FormDataResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FormDataResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'deploymentId':
          result.deploymentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'formKey':
          result.formKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'formProperties':
          result.formProperties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RestFormProperty)]))
              as BuiltList<Object>);
          break;
        case 'processDefinitionId':
          result.processDefinitionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'processDefinitionUrl':
          result.processDefinitionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'taskId':
          result.taskId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'taskUrl':
          result.taskUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FormDataResponse extends FormDataResponse {
  @override
  final String deploymentId;
  @override
  final String formKey;
  @override
  final BuiltList<RestFormProperty> formProperties;
  @override
  final String processDefinitionId;
  @override
  final String processDefinitionUrl;
  @override
  final String taskId;
  @override
  final String taskUrl;

  factory _$FormDataResponse(
          [void Function(FormDataResponseBuilder) updates]) =>
      (new FormDataResponseBuilder()..update(updates)).build();

  _$FormDataResponse._(
      {this.deploymentId,
      this.formKey,
      this.formProperties,
      this.processDefinitionId,
      this.processDefinitionUrl,
      this.taskId,
      this.taskUrl})
      : super._();

  @override
  FormDataResponse rebuild(void Function(FormDataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormDataResponseBuilder toBuilder() =>
      new FormDataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormDataResponse &&
        deploymentId == other.deploymentId &&
        formKey == other.formKey &&
        formProperties == other.formProperties &&
        processDefinitionId == other.processDefinitionId &&
        processDefinitionUrl == other.processDefinitionUrl &&
        taskId == other.taskId &&
        taskUrl == other.taskUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, deploymentId.hashCode), formKey.hashCode),
                        formProperties.hashCode),
                    processDefinitionId.hashCode),
                processDefinitionUrl.hashCode),
            taskId.hashCode),
        taskUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FormDataResponse')
          ..add('deploymentId', deploymentId)
          ..add('formKey', formKey)
          ..add('formProperties', formProperties)
          ..add('processDefinitionId', processDefinitionId)
          ..add('processDefinitionUrl', processDefinitionUrl)
          ..add('taskId', taskId)
          ..add('taskUrl', taskUrl))
        .toString();
  }
}

class FormDataResponseBuilder
    implements Builder<FormDataResponse, FormDataResponseBuilder> {
  _$FormDataResponse _$v;

  String _deploymentId;
  String get deploymentId => _$this._deploymentId;
  set deploymentId(String deploymentId) => _$this._deploymentId = deploymentId;

  String _formKey;
  String get formKey => _$this._formKey;
  set formKey(String formKey) => _$this._formKey = formKey;

  ListBuilder<RestFormProperty> _formProperties;
  ListBuilder<RestFormProperty> get formProperties =>
      _$this._formProperties ??= new ListBuilder<RestFormProperty>();
  set formProperties(ListBuilder<RestFormProperty> formProperties) =>
      _$this._formProperties = formProperties;

  String _processDefinitionId;
  String get processDefinitionId => _$this._processDefinitionId;
  set processDefinitionId(String processDefinitionId) =>
      _$this._processDefinitionId = processDefinitionId;

  String _processDefinitionUrl;
  String get processDefinitionUrl => _$this._processDefinitionUrl;
  set processDefinitionUrl(String processDefinitionUrl) =>
      _$this._processDefinitionUrl = processDefinitionUrl;

  String _taskId;
  String get taskId => _$this._taskId;
  set taskId(String taskId) => _$this._taskId = taskId;

  String _taskUrl;
  String get taskUrl => _$this._taskUrl;
  set taskUrl(String taskUrl) => _$this._taskUrl = taskUrl;

  FormDataResponseBuilder();

  FormDataResponseBuilder get _$this {
    if (_$v != null) {
      _deploymentId = _$v.deploymentId;
      _formKey = _$v.formKey;
      _formProperties = _$v.formProperties?.toBuilder();
      _processDefinitionId = _$v.processDefinitionId;
      _processDefinitionUrl = _$v.processDefinitionUrl;
      _taskId = _$v.taskId;
      _taskUrl = _$v.taskUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FormDataResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FormDataResponse;
  }

  @override
  void update(void Function(FormDataResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FormDataResponse build() {
    _$FormDataResponse _$result;
    try {
      _$result = _$v ??
          new _$FormDataResponse._(
              deploymentId: deploymentId,
              formKey: formKey,
              formProperties: _formProperties?.build(),
              processDefinitionId: processDefinitionId,
              processDefinitionUrl: processDefinitionUrl,
              taskId: taskId,
              taskUrl: taskUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'formProperties';
        _formProperties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FormDataResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
