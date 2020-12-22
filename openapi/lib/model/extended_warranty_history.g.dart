// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_warranty_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExtendedWarrantyHistory> _$extendedWarrantyHistorySerializer =
    new _$ExtendedWarrantyHistorySerializer();

class _$ExtendedWarrantyHistorySerializer
    implements StructuredSerializer<ExtendedWarrantyHistory> {
  @override
  final Iterable<Type> types = const [
    ExtendedWarrantyHistory,
    _$ExtendedWarrantyHistory
  ];
  @override
  final String wireName = 'ExtendedWarrantyHistory';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExtendedWarrantyHistory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.expiresIn != null) {
      result
        ..add('expiresIn')
        ..add(serializers.serialize(object.expiresIn,
            specifiedType: const FullType(DateTime)));
    }
    if (object.extendedWarranty != null) {
      result
        ..add('extendedWarranty')
        ..add(serializers.serialize(object.extendedWarranty,
            specifiedType: const FullType(ExtendedWarranty)));
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
  ExtendedWarrantyHistory deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExtendedWarrantyHistoryBuilder();

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
        case 'extendedWarranty':
          result.extendedWarranty.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExtendedWarranty))
              as ExtendedWarranty);
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

class _$ExtendedWarrantyHistory extends ExtendedWarrantyHistory {
  @override
  final DateTime expiresIn;
  @override
  final ExtendedWarranty extendedWarranty;
  @override
  final int id;
  @override
  final DateTime loggedDate;
  @override
  final ServedProduct product;
  @override
  final String warrantyLog;

  factory _$ExtendedWarrantyHistory(
          [void Function(ExtendedWarrantyHistoryBuilder) updates]) =>
      (new ExtendedWarrantyHistoryBuilder()..update(updates)).build();

  _$ExtendedWarrantyHistory._(
      {this.expiresIn,
      this.extendedWarranty,
      this.id,
      this.loggedDate,
      this.product,
      this.warrantyLog})
      : super._();

  @override
  ExtendedWarrantyHistory rebuild(
          void Function(ExtendedWarrantyHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtendedWarrantyHistoryBuilder toBuilder() =>
      new ExtendedWarrantyHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtendedWarrantyHistory &&
        expiresIn == other.expiresIn &&
        extendedWarranty == other.extendedWarranty &&
        id == other.id &&
        loggedDate == other.loggedDate &&
        product == other.product &&
        warrantyLog == other.warrantyLog;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, expiresIn.hashCode), extendedWarranty.hashCode),
                    id.hashCode),
                loggedDate.hashCode),
            product.hashCode),
        warrantyLog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExtendedWarrantyHistory')
          ..add('expiresIn', expiresIn)
          ..add('extendedWarranty', extendedWarranty)
          ..add('id', id)
          ..add('loggedDate', loggedDate)
          ..add('product', product)
          ..add('warrantyLog', warrantyLog))
        .toString();
  }
}

class ExtendedWarrantyHistoryBuilder
    implements
        Builder<ExtendedWarrantyHistory, ExtendedWarrantyHistoryBuilder> {
  _$ExtendedWarrantyHistory _$v;

  DateTime _expiresIn;
  DateTime get expiresIn => _$this._expiresIn;
  set expiresIn(DateTime expiresIn) => _$this._expiresIn = expiresIn;

  ExtendedWarrantyBuilder _extendedWarranty;
  ExtendedWarrantyBuilder get extendedWarranty =>
      _$this._extendedWarranty ??= new ExtendedWarrantyBuilder();
  set extendedWarranty(ExtendedWarrantyBuilder extendedWarranty) =>
      _$this._extendedWarranty = extendedWarranty;

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

  ExtendedWarrantyHistoryBuilder();

  ExtendedWarrantyHistoryBuilder get _$this {
    if (_$v != null) {
      _expiresIn = _$v.expiresIn;
      _extendedWarranty = _$v.extendedWarranty?.toBuilder();
      _id = _$v.id;
      _loggedDate = _$v.loggedDate;
      _product = _$v.product?.toBuilder();
      _warrantyLog = _$v.warrantyLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtendedWarrantyHistory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExtendedWarrantyHistory;
  }

  @override
  void update(void Function(ExtendedWarrantyHistoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExtendedWarrantyHistory build() {
    _$ExtendedWarrantyHistory _$result;
    try {
      _$result = _$v ??
          new _$ExtendedWarrantyHistory._(
              expiresIn: expiresIn,
              extendedWarranty: _extendedWarranty?.build(),
              id: id,
              loggedDate: loggedDate,
              product: _product?.build(),
              warrantyLog: warrantyLog);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'extendedWarranty';
        _extendedWarranty?.build();

        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExtendedWarrantyHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
