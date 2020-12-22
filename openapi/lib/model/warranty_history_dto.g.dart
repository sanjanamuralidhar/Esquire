// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WarrantyHistoryDTO> _$warrantyHistoryDTOSerializer =
    new _$WarrantyHistoryDTOSerializer();

class _$WarrantyHistoryDTOSerializer
    implements StructuredSerializer<WarrantyHistoryDTO> {
  @override
  final Iterable<Type> types = const [WarrantyHistoryDTO, _$WarrantyHistoryDTO];
  @override
  final String wireName = 'WarrantyHistoryDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, WarrantyHistoryDTO object,
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
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.warrantyId != null) {
      result
        ..add('warrantyId')
        ..add(serializers.serialize(object.warrantyId,
            specifiedType: const FullType(int)));
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
  WarrantyHistoryDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarrantyHistoryDTOBuilder();

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
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'warrantyId':
          result.warrantyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$WarrantyHistoryDTO extends WarrantyHistoryDTO {
  @override
  final DateTime expiresIn;
  @override
  final int id;
  @override
  final DateTime loggedDate;
  @override
  final int productId;
  @override
  final int warrantyId;
  @override
  final String warrantyLog;

  factory _$WarrantyHistoryDTO(
          [void Function(WarrantyHistoryDTOBuilder) updates]) =>
      (new WarrantyHistoryDTOBuilder()..update(updates)).build();

  _$WarrantyHistoryDTO._(
      {this.expiresIn,
      this.id,
      this.loggedDate,
      this.productId,
      this.warrantyId,
      this.warrantyLog})
      : super._();

  @override
  WarrantyHistoryDTO rebuild(
          void Function(WarrantyHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarrantyHistoryDTOBuilder toBuilder() =>
      new WarrantyHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WarrantyHistoryDTO &&
        expiresIn == other.expiresIn &&
        id == other.id &&
        loggedDate == other.loggedDate &&
        productId == other.productId &&
        warrantyId == other.warrantyId &&
        warrantyLog == other.warrantyLog;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, expiresIn.hashCode), id.hashCode),
                    loggedDate.hashCode),
                productId.hashCode),
            warrantyId.hashCode),
        warrantyLog.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WarrantyHistoryDTO')
          ..add('expiresIn', expiresIn)
          ..add('id', id)
          ..add('loggedDate', loggedDate)
          ..add('productId', productId)
          ..add('warrantyId', warrantyId)
          ..add('warrantyLog', warrantyLog))
        .toString();
  }
}

class WarrantyHistoryDTOBuilder
    implements Builder<WarrantyHistoryDTO, WarrantyHistoryDTOBuilder> {
  _$WarrantyHistoryDTO _$v;

  DateTime _expiresIn;
  DateTime get expiresIn => _$this._expiresIn;
  set expiresIn(DateTime expiresIn) => _$this._expiresIn = expiresIn;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _loggedDate;
  DateTime get loggedDate => _$this._loggedDate;
  set loggedDate(DateTime loggedDate) => _$this._loggedDate = loggedDate;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _warrantyId;
  int get warrantyId => _$this._warrantyId;
  set warrantyId(int warrantyId) => _$this._warrantyId = warrantyId;

  String _warrantyLog;
  String get warrantyLog => _$this._warrantyLog;
  set warrantyLog(String warrantyLog) => _$this._warrantyLog = warrantyLog;

  WarrantyHistoryDTOBuilder();

  WarrantyHistoryDTOBuilder get _$this {
    if (_$v != null) {
      _expiresIn = _$v.expiresIn;
      _id = _$v.id;
      _loggedDate = _$v.loggedDate;
      _productId = _$v.productId;
      _warrantyId = _$v.warrantyId;
      _warrantyLog = _$v.warrantyLog;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WarrantyHistoryDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WarrantyHistoryDTO;
  }

  @override
  void update(void Function(WarrantyHistoryDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WarrantyHistoryDTO build() {
    final _$result = _$v ??
        new _$WarrantyHistoryDTO._(
            expiresIn: expiresIn,
            id: id,
            loggedDate: loggedDate,
            productId: productId,
            warrantyId: warrantyId,
            warrantyLog: warrantyLog);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
