// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'served_product_warranty_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServedProductWarrantyDTO> _$servedProductWarrantyDTOSerializer =
    new _$ServedProductWarrantyDTOSerializer();

class _$ServedProductWarrantyDTOSerializer
    implements StructuredSerializer<ServedProductWarrantyDTO> {
  @override
  final Iterable<Type> types = const [
    ServedProductWarrantyDTO,
    _$ServedProductWarrantyDTO
  ];
  @override
  final String wireName = 'ServedProductWarrantyDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServedProductWarrantyDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.endDate != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(object.endDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.internalWarrantyNumber != null) {
      result
        ..add('internalWarrantyNumber')
        ..add(serializers.serialize(object.internalWarrantyNumber,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.productWarrantyId != null) {
      result
        ..add('productWarrantyId')
        ..add(serializers.serialize(object.productWarrantyId,
            specifiedType: const FullType(int)));
    }
    if (object.remarks != null) {
      result
        ..add('remarks')
        ..add(serializers.serialize(object.remarks,
            specifiedType: const FullType(String)));
    }
    if (object.startDate != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(object.startDate,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  ServedProductWarrantyDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServedProductWarrantyDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'internalWarrantyNumber':
          result.internalWarrantyNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productWarrantyId':
          result.productWarrantyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ServedProductWarrantyDTO extends ServedProductWarrantyDTO {
  @override
  final DateTime endDate;
  @override
  final int id;
  @override
  final String internalWarrantyNumber;
  @override
  final int productId;
  @override
  final int productWarrantyId;
  @override
  final String remarks;
  @override
  final DateTime startDate;

  factory _$ServedProductWarrantyDTO(
          [void Function(ServedProductWarrantyDTOBuilder) updates]) =>
      (new ServedProductWarrantyDTOBuilder()..update(updates)).build();

  _$ServedProductWarrantyDTO._(
      {this.endDate,
      this.id,
      this.internalWarrantyNumber,
      this.productId,
      this.productWarrantyId,
      this.remarks,
      this.startDate})
      : super._();

  @override
  ServedProductWarrantyDTO rebuild(
          void Function(ServedProductWarrantyDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServedProductWarrantyDTOBuilder toBuilder() =>
      new ServedProductWarrantyDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServedProductWarrantyDTO &&
        endDate == other.endDate &&
        id == other.id &&
        internalWarrantyNumber == other.internalWarrantyNumber &&
        productId == other.productId &&
        productWarrantyId == other.productWarrantyId &&
        remarks == other.remarks &&
        startDate == other.startDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, endDate.hashCode), id.hashCode),
                        internalWarrantyNumber.hashCode),
                    productId.hashCode),
                productWarrantyId.hashCode),
            remarks.hashCode),
        startDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServedProductWarrantyDTO')
          ..add('endDate', endDate)
          ..add('id', id)
          ..add('internalWarrantyNumber', internalWarrantyNumber)
          ..add('productId', productId)
          ..add('productWarrantyId', productWarrantyId)
          ..add('remarks', remarks)
          ..add('startDate', startDate))
        .toString();
  }
}

class ServedProductWarrantyDTOBuilder
    implements
        Builder<ServedProductWarrantyDTO, ServedProductWarrantyDTOBuilder> {
  _$ServedProductWarrantyDTO _$v;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _internalWarrantyNumber;
  String get internalWarrantyNumber => _$this._internalWarrantyNumber;
  set internalWarrantyNumber(String internalWarrantyNumber) =>
      _$this._internalWarrantyNumber = internalWarrantyNumber;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _productWarrantyId;
  int get productWarrantyId => _$this._productWarrantyId;
  set productWarrantyId(int productWarrantyId) =>
      _$this._productWarrantyId = productWarrantyId;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  ServedProductWarrantyDTOBuilder();

  ServedProductWarrantyDTOBuilder get _$this {
    if (_$v != null) {
      _endDate = _$v.endDate;
      _id = _$v.id;
      _internalWarrantyNumber = _$v.internalWarrantyNumber;
      _productId = _$v.productId;
      _productWarrantyId = _$v.productWarrantyId;
      _remarks = _$v.remarks;
      _startDate = _$v.startDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServedProductWarrantyDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServedProductWarrantyDTO;
  }

  @override
  void update(void Function(ServedProductWarrantyDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServedProductWarrantyDTO build() {
    final _$result = _$v ??
        new _$ServedProductWarrantyDTO._(
            endDate: endDate,
            id: id,
            internalWarrantyNumber: internalWarrantyNumber,
            productId: productId,
            productWarrantyId: productWarrantyId,
            remarks: remarks,
            startDate: startDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
