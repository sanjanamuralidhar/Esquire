// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amc_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AMCHistory> _$aMCHistorySerializer = new _$AMCHistorySerializer();

class _$AMCHistorySerializer implements StructuredSerializer<AMCHistory> {
  @override
  final Iterable<Type> types = const [AMCHistory, _$AMCHistory];
  @override
  final String wireName = 'AMCHistory';

  @override
  Iterable<Object> serialize(Serializers serializers, AMCHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.amc != null) {
      result
        ..add('amc')
        ..add(serializers.serialize(object.amc,
            specifiedType: const FullType(AMC)));
    }
    if (object.expiresIn != null) {
      result
        ..add('expiresIn')
        ..add(serializers.serialize(object.expiresIn,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.loggedDate != null) {
      result
        ..add('loggedDate')
        ..add(serializers.serialize(object.loggedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(ServedProduct)));
    }
    if (object.warrantyLog != null) {
      result
        ..add('warrantyLog')
        ..add(serializers.serialize(object.warrantyLog,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AMCHistory deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AMCHistoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'amc':
          result.amc.replace(serializers.deserialize(value,
              specifiedType: const FullType(AMC)) as AMC);
          break;
        case 'expiresIn':
          result.expiresIn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'loggedDate':
          result.loggedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'product':
          result.product.replace(serializers.deserialize(value,
              specifiedType: const FullType(ServedProduct)) as ServedProduct);
          break;
        case 'warrantyLog':
          result.warrantyLog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AMCHistory extends AMCHistory {
  @override
  final AMC amc;
  @override
  final DateTime expiresIn;
  @override
  final int id;
  @override
  final DateTime loggedDate;
  @override
  final ServedProduct product;
  @override
  final String warrantyLog;

  factory _$AMCHistory([void Function(AMCHistoryBuilder) updates]) =>
      (new AMCHistoryBuilder()..update(updates)).build();

  _$AMCHistory._(
      {this.amc,
      this.expiresIn,
      this.id,
      this.loggedDate,
      this.product,
      this.warrantyLog})
      : super._();

  @override
  AMCHistory rebuild(void Function(AMCHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AMCHistoryBuilder toBuilder() => new AMCHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AMCHistory &&
        amc == other.amc &&
        expiresIn == other.expiresIn &&
        id == other.id &&
        loggedDate == other.loggedDate &&
        product == other.product &&
        warrantyLog == other.warrantyLog;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, amc.hashCode), expiresIn.hashCode), id.hashCode),
                loggedDate.hashCode),
            product.hashCode),
        warrantyLog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AMCHistory')
          ..add('amc', amc)
          ..add('expiresIn', expiresIn)
          ..add('id', id)
          ..add('loggedDate', loggedDate)
          ..add('product', product)
          ..add('warrantyLog', warrantyLog))
        .toString();
  }
}

class AMCHistoryBuilder implements Builder<AMCHistory, AMCHistoryBuilder> {
  _$AMCHistory _$v;

  AMCBuilder _amc;
  AMCBuilder get amc => _$this._amc ??= new AMCBuilder();
  set amc(AMCBuilder amc) => _$this._amc = amc;

  DateTime _expiresIn;
  DateTime get expiresIn => _$this._expiresIn;
  set expiresIn(DateTime expiresIn) => _$this._expiresIn = expiresIn;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _loggedDate;
  DateTime get loggedDate => _$this._loggedDate;
  set loggedDate(DateTime loggedDate) => _$this._loggedDate = loggedDate;

  ServedProductBuilder _product;
  ServedProductBuilder get product =>
      _$this._product ??= new ServedProductBuilder();
  set product(ServedProductBuilder product) => _$this._product = product;

  String _warrantyLog;
  String get warrantyLog => _$this._warrantyLog;
  set warrantyLog(String warrantyLog) => _$this._warrantyLog = warrantyLog;

  AMCHistoryBuilder();

  AMCHistoryBuilder get _$this {
    if (_$v != null) {
      _amc = _$v.amc?.toBuilder();
      _expiresIn = _$v.expiresIn;
      _id = _$v.id;
      _loggedDate = _$v.loggedDate;
      _product = _$v.product?.toBuilder();
      _warrantyLog = _$v.warrantyLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AMCHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AMCHistory;
  }

  @override
  void update(void Function(AMCHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AMCHistory build() {
    _$AMCHistory _$result;
    try {
      _$result = _$v ??
          new _$AMCHistory._(
              amc: _amc?.build(),
              expiresIn: expiresIn,
              id: id,
              loggedDate: loggedDate,
              product: _product?.build(),
              warrantyLog: warrantyLog);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'amc';
        _amc?.build();

        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AMCHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
