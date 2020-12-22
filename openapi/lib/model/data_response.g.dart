// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataResponse> _$dataResponseSerializer =
    new _$DataResponseSerializer();

class _$DataResponseSerializer implements StructuredSerializer<DataResponse> {
  @override
  final Iterable<Type> types = const [DataResponse, _$DataResponse];
  @override
  final String wireName = 'DataResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, DataResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.order != null) {
      result
        ..add('order')
        ..add(serializers.serialize(object.order,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.sort != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(object.sort,
            specifiedType: const FullType(String)));
    }
    if (object.start != null) {
      result
        ..add('start')
        ..add(serializers.serialize(object.start,
            specifiedType: const FullType(int)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  DataResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DataResponse extends DataResponse {
  @override
  final JsonObject data;
  @override
  final String order;
  @override
  final int size;
  @override
  final String sort;
  @override
  final int start;
  @override
  final int total;

  factory _$DataResponse([void Function(DataResponseBuilder) updates]) =>
      (new DataResponseBuilder()..update(updates)).build();

  _$DataResponse._(
      {this.data, this.order, this.size, this.sort, this.start, this.total})
      : super._();

  @override
  DataResponse rebuild(void Function(DataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataResponseBuilder toBuilder() => new DataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataResponse &&
        data == other.data &&
        order == other.order &&
        size == other.size &&
        sort == other.sort &&
        start == other.start &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, data.hashCode), order.hashCode), size.hashCode),
                sort.hashCode),
            start.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataResponse')
          ..add('data', data)
          ..add('order', order)
          ..add('size', size)
          ..add('sort', sort)
          ..add('start', start)
          ..add('total', total))
        .toString();
  }
}

class DataResponseBuilder
    implements Builder<DataResponse, DataResponseBuilder> {
  _$DataResponse _$v;

  JsonObject _data;
  JsonObject get data => _$this._data;
  set data(JsonObject data) => _$this._data = data;

  String _order;
  String get order => _$this._order;
  set order(String order) => _$this._order = order;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _sort;
  String get sort => _$this._sort;
  set sort(String sort) => _$this._sort = sort;

  int _start;
  int get start => _$this._start;
  set start(int start) => _$this._start = start;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  DataResponseBuilder();

  DataResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _order = _$v.order;
      _size = _$v.size;
      _sort = _$v.sort;
      _start = _$v.start;
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DataResponse;
  }

  @override
  void update(void Function(DataResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataResponse build() {
    final _$result = _$v ??
        new _$DataResponse._(
            data: data,
            order: order,
            size: size,
            sort: sort,
            start: start,
            total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
