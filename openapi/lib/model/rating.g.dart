// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rating> _$ratingSerializer = new _$RatingSerializer();

class _$RatingSerializer implements StructuredSerializer<Rating> {
  @override
  final Iterable<Type> types = const [Rating, _$Rating];
  @override
  final String wireName = 'Rating';

  @override
  Iterable<Object> serialize(Serializers serializers, Rating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.callCenterExective != null) {
      result
        ..add('callCenterExective')
        ..add(serializers.serialize(object.callCenterExective,
            specifiedType: const FullType(CallCenterExecutive)));
    }
    if (object.customer != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(object.customer,
            specifiedType: const FullType(Customer)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.overallRating != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(object.overallRating,
            specifiedType: const FullType(int)));
    }
    if (object.ratedBy != null) {
      result
        ..add('ratedBy')
        ..add(serializers.serialize(object.ratedBy,
            specifiedType: const FullType(String)));
    }
    if (object.serviceExecutive != null) {
      result
        ..add('serviceExecutive')
        ..add(serializers.serialize(object.serviceExecutive,
            specifiedType: const FullType(ServiceExecutive)));
    }
    return result;
  }

  @override
  Rating deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'callCenterExective':
          result.callCenterExective.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CallCenterExecutive))
              as CallCenterExecutive);
          break;
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer)) as Customer);
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'overallRating':
          result.overallRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ratedBy':
          result.ratedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceExecutive':
          result.serviceExecutive.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ServiceExecutive))
              as ServiceExecutive);
          break;
      }
    }

    return result.build();
  }
}

class _$Rating extends Rating {
  @override
  final CallCenterExecutive callCenterExective;
  @override
  final Customer customer;
  @override
  final String data;
  @override
  final int id;
  @override
  final int overallRating;
  @override
  final String ratedBy;
  @override
  final ServiceExecutive serviceExecutive;

  factory _$Rating([void Function(RatingBuilder) updates]) =>
      (new RatingBuilder()..update(updates)).build();

  _$Rating._(
      {this.callCenterExective,
      this.customer,
      this.data,
      this.id,
      this.overallRating,
      this.ratedBy,
      this.serviceExecutive})
      : super._();

  @override
  Rating rebuild(void Function(RatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingBuilder toBuilder() => new RatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating &&
        callCenterExective == other.callCenterExective &&
        customer == other.customer &&
        data == other.data &&
        id == other.id &&
        overallRating == other.overallRating &&
        ratedBy == other.ratedBy &&
        serviceExecutive == other.serviceExecutive;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, callCenterExective.hashCode),
                            customer.hashCode),
                        data.hashCode),
                    id.hashCode),
                overallRating.hashCode),
            ratedBy.hashCode),
        serviceExecutive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rating')
          ..add('callCenterExective', callCenterExective)
          ..add('customer', customer)
          ..add('data', data)
          ..add('id', id)
          ..add('overallRating', overallRating)
          ..add('ratedBy', ratedBy)
          ..add('serviceExecutive', serviceExecutive))
        .toString();
  }
}

class RatingBuilder implements Builder<Rating, RatingBuilder> {
  _$Rating _$v;

  CallCenterExecutiveBuilder _callCenterExective;
  CallCenterExecutiveBuilder get callCenterExective =>
      _$this._callCenterExective ??= new CallCenterExecutiveBuilder();
  set callCenterExective(CallCenterExecutiveBuilder callCenterExective) =>
      _$this._callCenterExective = callCenterExective;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _overallRating;
  int get overallRating => _$this._overallRating;
  set overallRating(int overallRating) => _$this._overallRating = overallRating;

  String _ratedBy;
  String get ratedBy => _$this._ratedBy;
  set ratedBy(String ratedBy) => _$this._ratedBy = ratedBy;

  ServiceExecutiveBuilder _serviceExecutive;
  ServiceExecutiveBuilder get serviceExecutive =>
      _$this._serviceExecutive ??= new ServiceExecutiveBuilder();
  set serviceExecutive(ServiceExecutiveBuilder serviceExecutive) =>
      _$this._serviceExecutive = serviceExecutive;

  RatingBuilder();

  RatingBuilder get _$this {
    if (_$v != null) {
      _callCenterExective = _$v.callCenterExective?.toBuilder();
      _customer = _$v.customer?.toBuilder();
      _data = _$v.data;
      _id = _$v.id;
      _overallRating = _$v.overallRating;
      _ratedBy = _$v.ratedBy;
      _serviceExecutive = _$v.serviceExecutive?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rating other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Rating;
  }

  @override
  void update(void Function(RatingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Rating build() {
    _$Rating _$result;
    try {
      _$result = _$v ??
          new _$Rating._(
              callCenterExective: _callCenterExective?.build(),
              customer: _customer?.build(),
              data: data,
              id: id,
              overallRating: overallRating,
              ratedBy: ratedBy,
              serviceExecutive: _serviceExecutive?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'callCenterExective';
        _callCenterExective?.build();
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'serviceExecutive';
        _serviceExecutive?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Rating', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
