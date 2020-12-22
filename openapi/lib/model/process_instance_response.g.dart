// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_instance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProcessInstanceResponse> _$processInstanceResponseSerializer =
    new _$ProcessInstanceResponseSerializer();

class _$ProcessInstanceResponseSerializer
    implements StructuredSerializer<ProcessInstanceResponse> {
  @override
  final Iterable<Type> types = const [
    ProcessInstanceResponse,
    _$ProcessInstanceResponse
  ];
  @override
  final String wireName = 'ProcessInstanceResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProcessInstanceResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.activityId != null) {
      result
        ..add('activityId')
        ..add(serializers.serialize(object.activityId,
            specifiedType: const FullType(String)));
    }
    if (object.businessKey != null) {
      result
        ..add('businessKey')
        ..add(serializers.serialize(object.businessKey,
            specifiedType: const FullType(String)));
    }
    if (object.completed != null) {
      result
        ..add('completed')
        ..add(serializers.serialize(object.completed,
            specifiedType: const FullType(bool)));
    }
    if (object.ended != null) {
      result
        ..add('ended')
        ..add(serializers.serialize(object.ended,
            specifiedType: const FullType(bool)));
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
    if (object.processDefinitionId != null) {
      result
        ..add('processDefinitionId')
        ..add(serializers.serialize(object.processDefinitionId,
            specifiedType: const FullType(String)));
    }
    if (object.processDefinitionKey != null) {
      result
        ..add('processDefinitionKey')
        ..add(serializers.serialize(object.processDefinitionKey,
            specifiedType: const FullType(String)));
    }
    if (object.processDefinitionUrl != null) {
      result
        ..add('processDefinitionUrl')
        ..add(serializers.serialize(object.processDefinitionUrl,
            specifiedType: const FullType(String)));
    }
    if (object.suspended != null) {
      result
        ..add('suspended')
        ..add(serializers.serialize(object.suspended,
            specifiedType: const FullType(bool)));
    }
    if (object.tenantId != null) {
      result
        ..add('tenantId')
        ..add(serializers.serialize(object.tenantId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.variables != null) {
      result
        ..add('variables')
        ..add(serializers.serialize(object.variables,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RestVariable)])));
    }
    return result;
  }

  @override
  ProcessInstanceResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProcessInstanceResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'activityId':
          result.activityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'businessKey':
          result.businessKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ended':
          result.ended = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'processDefinitionId':
          result.processDefinitionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'processDefinitionKey':
          result.processDefinitionKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'processDefinitionUrl':
          result.processDefinitionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'suspended':
          result.suspended = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tenantId':
          result.tenantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'variables':
          result.variables.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RestVariable)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProcessInstanceResponse extends ProcessInstanceResponse {
  @override
  final String activityId;
  @override
  final String businessKey;
  @override
  final bool completed;
  @override
  final bool ended;
  @override
  final String id;
  @override
  final String name;
  @override
  final String processDefinitionId;
  @override
  final String processDefinitionKey;
  @override
  final String processDefinitionUrl;
  @override
  final bool suspended;
  @override
  final String tenantId;
  @override
  final String url;
  @override
  final BuiltList<RestVariable> variables;

  factory _$ProcessInstanceResponse(
          [void Function(ProcessInstanceResponseBuilder) updates]) =>
      (new ProcessInstanceResponseBuilder()..update(updates)).build();

  _$ProcessInstanceResponse._(
      {this.activityId,
      this.businessKey,
      this.completed,
      this.ended,
      this.id,
      this.name,
      this.processDefinitionId,
      this.processDefinitionKey,
      this.processDefinitionUrl,
      this.suspended,
      this.tenantId,
      this.url,
      this.variables})
      : super._();

  @override
  ProcessInstanceResponse rebuild(
          void Function(ProcessInstanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProcessInstanceResponseBuilder toBuilder() =>
      new ProcessInstanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessInstanceResponse &&
        activityId == other.activityId &&
        businessKey == other.businessKey &&
        completed == other.completed &&
        ended == other.ended &&
        id == other.id &&
        name == other.name &&
        processDefinitionId == other.processDefinitionId &&
        processDefinitionKey == other.processDefinitionKey &&
        processDefinitionUrl == other.processDefinitionUrl &&
        suspended == other.suspended &&
        tenantId == other.tenantId &&
        url == other.url &&
        variables == other.variables;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, activityId.hashCode),
                                                    businessKey.hashCode),
                                                completed.hashCode),
                                            ended.hashCode),
                                        id.hashCode),
                                    name.hashCode),
                                processDefinitionId.hashCode),
                            processDefinitionKey.hashCode),
                        processDefinitionUrl.hashCode),
                    suspended.hashCode),
                tenantId.hashCode),
            url.hashCode),
        variables.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProcessInstanceResponse')
          ..add('activityId', activityId)
          ..add('businessKey', businessKey)
          ..add('completed', completed)
          ..add('ended', ended)
          ..add('id', id)
          ..add('name', name)
          ..add('processDefinitionId', processDefinitionId)
          ..add('processDefinitionKey', processDefinitionKey)
          ..add('processDefinitionUrl', processDefinitionUrl)
          ..add('suspended', suspended)
          ..add('tenantId', tenantId)
          ..add('url', url)
          ..add('variables', variables))
        .toString();
  }
}

class ProcessInstanceResponseBuilder
    implements
        Builder<ProcessInstanceResponse, ProcessInstanceResponseBuilder> {
  _$ProcessInstanceResponse _$v;

  String _activityId;
  String get activityId => _$this._activityId;
  set activityId(String activityId) => _$this._activityId = activityId;

  String _businessKey;
  String get businessKey => _$this._businessKey;
  set businessKey(String businessKey) => _$this._businessKey = businessKey;

  bool _completed;
  bool get completed => _$this._completed;
  set completed(bool completed) => _$this._completed = completed;

  bool _ended;
  bool get ended => _$this._ended;
  set ended(bool ended) => _$this._ended = ended;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _processDefinitionId;
  String get processDefinitionId => _$this._processDefinitionId;
  set processDefinitionId(String processDefinitionId) =>
      _$this._processDefinitionId = processDefinitionId;

  String _processDefinitionKey;
  String get processDefinitionKey => _$this._processDefinitionKey;
  set processDefinitionKey(String processDefinitionKey) =>
      _$this._processDefinitionKey = processDefinitionKey;

  String _processDefinitionUrl;
  String get processDefinitionUrl => _$this._processDefinitionUrl;
  set processDefinitionUrl(String processDefinitionUrl) =>
      _$this._processDefinitionUrl = processDefinitionUrl;

  bool _suspended;
  bool get suspended => _$this._suspended;
  set suspended(bool suspended) => _$this._suspended = suspended;

  String _tenantId;
  String get tenantId => _$this._tenantId;
  set tenantId(String tenantId) => _$this._tenantId = tenantId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ListBuilder<RestVariable> _variables;
  ListBuilder<RestVariable> get variables =>
      _$this._variables ??= new ListBuilder<RestVariable>();
  set variables(ListBuilder<RestVariable> variables) =>
      _$this._variables = variables;

  ProcessInstanceResponseBuilder();

  ProcessInstanceResponseBuilder get _$this {
    if (_$v != null) {
      _activityId = _$v.activityId;
      _businessKey = _$v.businessKey;
      _completed = _$v.completed;
      _ended = _$v.ended;
      _id = _$v.id;
      _name = _$v.name;
      _processDefinitionId = _$v.processDefinitionId;
      _processDefinitionKey = _$v.processDefinitionKey;
      _processDefinitionUrl = _$v.processDefinitionUrl;
      _suspended = _$v.suspended;
      _tenantId = _$v.tenantId;
      _url = _$v.url;
      _variables = _$v.variables?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessInstanceResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProcessInstanceResponse;
  }

  @override
  void update(void Function(ProcessInstanceResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProcessInstanceResponse build() {
    _$ProcessInstanceResponse _$result;
    try {
      _$result = _$v ??
          new _$ProcessInstanceResponse._(
              activityId: activityId,
              businessKey: businessKey,
              completed: completed,
              ended: ended,
              id: id,
              name: name,
              processDefinitionId: processDefinitionId,
              processDefinitionKey: processDefinitionKey,
              processDefinitionUrl: processDefinitionUrl,
              suspended: suspended,
              tenantId: tenantId,
              url: url,
              variables: _variables?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'variables';
        _variables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProcessInstanceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
