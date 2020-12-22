// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WarrantyHistory> _$warrantyHistorySerializer =
    new _$WarrantyHistorySerializer();

class _$WarrantyHistorySerializer
    implements StructuredSerializer<WarrantyHistory> {
  @override
  final Iterable<Type> types = const [WarrantyHistory, _$WarrantyHistory];
  @override
  final String wireName = 'WarrantyHistory';

  @override
  Iterable<Object> serialize(Serializers serializers, WarrantyHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.warranty != null) {
      result
        ..add('warranty')
        ..add(serializers.serialize(object.warranty,
            specifiedType: const FullType(Warranty)));
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
  WarrantyHistory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarrantyHistoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case 'warranty':
          result.warranty.replace(serializers.deserialize(value,
              specifiedType: const FullType(Warranty)) as Warranty);
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

class _$WarrantyHistory extends WarrantyHistory {
  @override
  final DateTime expiresIn;
  @override
  final int id;
  @override
  final DateTime loggedDate;
  @override
  final ServedProduct product;
  @override
  final Warranty warranty;
  @override
  final String warrantyLog;

  factory _$WarrantyHistory([void Function(WarrantyHistoryBuilder) updates]) =>
      (new WarrantyHistoryBuilder()..update(updates)).build();

  _$WarrantyHistory._(
      {this.expiresIn,
      this.id,
      this.loggedDate,
      this.product,
      this.warranty,
      this.warrantyLog})
      : super._();

  @override
  WarrantyHistory rebuild(void Function(WarrantyHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarrantyHistoryBuilder toBuilder() =>
      new WarrantyHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WarrantyHistory &&
        expiresIn == other.expiresIn &&
        id == other.id &&
        loggedDate == other.loggedDate &&
        product == other.product &&
        warranty == other.warranty &&
        warrantyLog == other.warrantyLog;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, expiresIn.hashCode), id.hashCode),
                    loggedDate.hashCode),
                product.hashCode),
            warranty.hashCode),
        warrantyLog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WarrantyHistory')
          ..add('expiresIn', expiresIn)
          ..add('id', id)
          ..add('loggedDate', loggedDate)
          ..add('product', product)
          ..add('warranty', warranty)
          ..add('warrantyLog', warrantyLog))
        .toString();
  }
}

class WarrantyHistoryBuilder
    implements Builder<WarrantyHistory, WarrantyHistoryBuilder> {
  _$WarrantyHistory _$v;

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

  WarrantyBuilder _warranty;
  WarrantyBuilder get warranty => _$this._warranty ??= new WarrantyBuilder();
  set warranty(WarrantyBuilder warranty) => _$this._warranty = warranty;

  String _warrantyLog;
  String get warrantyLog => _$this._warrantyLog;
  set warrantyLog(String warrantyLog) => _$this._warrantyLog = warrantyLog;

  WarrantyHistoryBuilder();

  WarrantyHistoryBuilder get _$this {
    if (_$v != null) {
      _expiresIn = _$v.expiresIn;
      _id = _$v.id;
      _loggedDate = _$v.loggedDate;
      _product = _$v.product?.toBuilder();
      _warranty = _$v.warranty?.toBuilder();
      _warrantyLog = _$v.warrantyLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WarrantyHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WarrantyHistory;
  }

  @override
  void update(void Function(WarrantyHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WarrantyHistory build() {
    _$WarrantyHistory _$result;
    try {
      _$result = _$v ??
          new _$WarrantyHistory._(
              expiresIn: expiresIn,
              id: id,
              loggedDate: loggedDate,
              product: _product?.build(),
              warranty: _warranty?.build(),
              warrantyLog: warrantyLog);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
        _$failedField = 'warranty';
        _warranty?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WarrantyHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
