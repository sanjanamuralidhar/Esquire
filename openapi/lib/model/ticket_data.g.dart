// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketData> _$ticketDataSerializer = new _$TicketDataSerializer();

class _$TicketDataSerializer implements StructuredSerializer<TicketData> {
  @override
  final Iterable<Type> types = const [TicketData, _$TicketData];
  @override
  final String wireName = 'TicketData';

  @override
  Iterable<Object> serialize(Serializers serializers, TicketData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.asc != null) {
      result
        ..add('asc')
        ..add(serializers.serialize(object.asc,
            specifiedType: const FullType(bool)));
    }
    if (object.customerEmail != null) {
      result
        ..add('customerEmail')
        ..add(serializers.serialize(object.customerEmail,
            specifiedType: const FullType(String)));
    }
    if (object.serviceType != null) {
      result
        ..add('serviceType')
        ..add(serializers.serialize(object.serviceType,
            specifiedType: const FullType(String)));
    }
    if (object.ticketDTO != null) {
      result
        ..add('ticketDTO')
        ..add(serializers.serialize(object.ticketDTO,
            specifiedType: const FullType(TicketDTO)));
    }
    if (object.warranty != null) {
      result
        ..add('warranty')
        ..add(serializers.serialize(object.warranty,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  TicketData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'asc':
          result.asc = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'customerEmail':
          result.customerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceType':
          result.serviceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketDTO':
          result.ticketDTO.replace(serializers.deserialize(value,
              specifiedType: const FullType(TicketDTO)) as TicketDTO);
          break;
        case 'warranty':
          result.warranty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$TicketData extends TicketData {
  @override
  final bool asc;
  @override
  final String customerEmail;
  @override
  final String serviceType;
  @override
  final TicketDTO ticketDTO;
  @override
  final bool warranty;

  factory _$TicketData([void Function(TicketDataBuilder) updates]) =>
      (new TicketDataBuilder()..update(updates)).build();

  _$TicketData._(
      {this.asc,
      this.customerEmail,
      this.serviceType,
      this.ticketDTO,
      this.warranty})
      : super._();

  @override
  TicketData rebuild(void Function(TicketDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketDataBuilder toBuilder() => new TicketDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketData &&
        asc == other.asc &&
        customerEmail == other.customerEmail &&
        serviceType == other.serviceType &&
        ticketDTO == other.ticketDTO &&
        warranty == other.warranty;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, asc.hashCode), customerEmail.hashCode),
                serviceType.hashCode),
            ticketDTO.hashCode),
        warranty.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TicketData')
          ..add('asc', asc)
          ..add('customerEmail', customerEmail)
          ..add('serviceType', serviceType)
          ..add('ticketDTO', ticketDTO)
          ..add('warranty', warranty))
        .toString();
  }
}

class TicketDataBuilder implements Builder<TicketData, TicketDataBuilder> {
  _$TicketData _$v;

  bool _asc;
  bool get asc => _$this._asc;
  set asc(bool asc) => _$this._asc = asc;

  String _customerEmail;
  String get customerEmail => _$this._customerEmail;
  set customerEmail(String customerEmail) =>
      _$this._customerEmail = customerEmail;

  String _serviceType;
  String get serviceType => _$this._serviceType;
  set serviceType(String serviceType) => _$this._serviceType = serviceType;

  TicketDTOBuilder _ticketDTO;
  TicketDTOBuilder get ticketDTO =>
      _$this._ticketDTO ??= new TicketDTOBuilder();
  set ticketDTO(TicketDTOBuilder ticketDTO) => _$this._ticketDTO = ticketDTO;

  bool _warranty;
  bool get warranty => _$this._warranty;
  set warranty(bool warranty) => _$this._warranty = warranty;

  TicketDataBuilder();

  TicketDataBuilder get _$this {
    if (_$v != null) {
      _asc = _$v.asc;
      _customerEmail = _$v.customerEmail;
      _serviceType = _$v.serviceType;
      _ticketDTO = _$v.ticketDTO?.toBuilder();
      _warranty = _$v.warranty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TicketData;
  }

  @override
  void update(void Function(TicketDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TicketData build() {
    _$TicketData _$result;
    try {
      _$result = _$v ??
          new _$TicketData._(
              asc: asc,
              customerEmail: customerEmail,
              serviceType: serviceType,
              ticketDTO: _ticketDTO?.build(),
              warranty: warranty);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ticketDTO';
        _ticketDTO?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TicketData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
