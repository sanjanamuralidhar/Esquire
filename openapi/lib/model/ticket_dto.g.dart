// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TicketDTO> _$ticketDTOSerializer = new _$TicketDTOSerializer();

class _$TicketDTOSerializer implements StructuredSerializer<TicketDTO> {
  @override
  final Iterable<Type> types = const [TicketDTO, _$TicketDTO];
  @override
  final String wireName = 'TicketDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, TicketDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.actualServiceDate != null) {
      result
        ..add('actualServiceDate')
        ..add(serializers.serialize(object.actualServiceDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.branchId != null) {
      result
        ..add('branchId')
        ..add(serializers.serialize(object.branchId,
            specifiedType: const FullType(int)));
    }
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(int)));
    }
    if (object.expectedDeliveryTime != null) {
      result
        ..add('expectedDeliveryTime')
        ..add(serializers.serialize(object.expectedDeliveryTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.feedbackId != null) {
      result
        ..add('feedbackId')
        ..add(serializers.serialize(object.feedbackId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.issue != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(object.issue,
            specifiedType: const FullType(String)));
    }
    if (object.preferredAppointmentDate != null) {
      result
        ..add('preferredAppointmentDate')
        ..add(serializers.serialize(object.preferredAppointmentDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.preferredTime != null) {
      result
        ..add('preferredTime')
        ..add(serializers.serialize(object.preferredTime,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.recordedAudio != null) {
      result
        ..add('recordedAudio')
        ..add(serializers.serialize(object.recordedAudio,
            specifiedType: const FullType(String)));
    }
    if (object.remarks != null) {
      result
        ..add('remarks')
        ..add(serializers.serialize(object.remarks,
            specifiedType: const FullType(String)));
    }
    if (object.standbyProductId != null) {
      result
        ..add('standbyProductId')
        ..add(serializers.serialize(object.standbyProductId,
            specifiedType: const FullType(int)));
    }
    if (object.ticketDescription != null) {
      result
        ..add('ticketDescription')
        ..add(serializers.serialize(object.ticketDescription,
            specifiedType: const FullType(String)));
    }
    if (object.ticketNumber != null) {
      result
        ..add('ticketNumber')
        ..add(serializers.serialize(object.ticketNumber,
            specifiedType: const FullType(String)));
    }
    if (object.trackingId != null) {
      result
        ..add('trackingId')
        ..add(serializers.serialize(object.trackingId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TicketDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'actualServiceDate':
          result.actualServiceDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'branchId':
          result.branchId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'expectedDeliveryTime':
          result.expectedDeliveryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'feedbackId':
          result.feedbackId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'issue':
          result.issue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preferredAppointmentDate':
          result.preferredAppointmentDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'preferredTime':
          result.preferredTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recordedAudio':
          result.recordedAudio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'standbyProductId':
          result.standbyProductId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ticketDescription':
          result.ticketDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketNumber':
          result.ticketNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trackingId':
          result.trackingId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TicketDTO extends TicketDTO {
  @override
  final DateTime actualServiceDate;
  @override
  final int branchId;
  @override
  final int customerId;
  @override
  final DateTime expectedDeliveryTime;
  @override
  final int feedbackId;
  @override
  final int id;
  @override
  final String issue;
  @override
  final DateTime preferredAppointmentDate;
  @override
  final String preferredTime;
  @override
  final int productId;
  @override
  final String recordedAudio;
  @override
  final String remarks;
  @override
  final int standbyProductId;
  @override
  final String ticketDescription;
  @override
  final String ticketNumber;
  @override
  final String trackingId;

  factory _$TicketDTO([void Function(TicketDTOBuilder) updates]) =>
      (new TicketDTOBuilder()..update(updates)).build();

  _$TicketDTO._(
      {this.actualServiceDate,
      this.branchId,
      this.customerId,
      this.expectedDeliveryTime,
      this.feedbackId,
      this.id,
      this.issue,
      this.preferredAppointmentDate,
      this.preferredTime,
      this.productId,
      this.recordedAudio,
      this.remarks,
      this.standbyProductId,
      this.ticketDescription,
      this.ticketNumber,
      this.trackingId})
      : super._();

  @override
  TicketDTO rebuild(void Function(TicketDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketDTOBuilder toBuilder() => new TicketDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TicketDTO &&
        actualServiceDate == other.actualServiceDate &&
        branchId == other.branchId &&
        customerId == other.customerId &&
        expectedDeliveryTime == other.expectedDeliveryTime &&
        feedbackId == other.feedbackId &&
        id == other.id &&
        issue == other.issue &&
        preferredAppointmentDate == other.preferredAppointmentDate &&
        preferredTime == other.preferredTime &&
        productId == other.productId &&
        recordedAudio == other.recordedAudio &&
        remarks == other.remarks &&
        standbyProductId == other.standbyProductId &&
        ticketDescription == other.ticketDescription &&
        ticketNumber == other.ticketNumber &&
        trackingId == other.trackingId;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    actualServiceDate
                                                                        .hashCode),
                                                                branchId
                                                                    .hashCode),
                                                            customerId
                                                                .hashCode),
                                                        expectedDeliveryTime
                                                            .hashCode),
                                                    feedbackId.hashCode),
                                                id.hashCode),
                                            issue.hashCode),
                                        preferredAppointmentDate.hashCode),
                                    preferredTime.hashCode),
                                productId.hashCode),
                            recordedAudio.hashCode),
                        remarks.hashCode),
                    standbyProductId.hashCode),
                ticketDescription.hashCode),
            ticketNumber.hashCode),
        trackingId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TicketDTO')
          ..add('actualServiceDate', actualServiceDate)
          ..add('branchId', branchId)
          ..add('customerId', customerId)
          ..add('expectedDeliveryTime', expectedDeliveryTime)
          ..add('feedbackId', feedbackId)
          ..add('id', id)
          ..add('issue', issue)
          ..add('preferredAppointmentDate', preferredAppointmentDate)
          ..add('preferredTime', preferredTime)
          ..add('productId', productId)
          ..add('recordedAudio', recordedAudio)
          ..add('remarks', remarks)
          ..add('standbyProductId', standbyProductId)
          ..add('ticketDescription', ticketDescription)
          ..add('ticketNumber', ticketNumber)
          ..add('trackingId', trackingId))
        .toString();
  }
}

class TicketDTOBuilder implements Builder<TicketDTO, TicketDTOBuilder> {
  _$TicketDTO _$v;

  DateTime _actualServiceDate;
  DateTime get actualServiceDate => _$this._actualServiceDate;
  set actualServiceDate(DateTime actualServiceDate) =>
      _$this._actualServiceDate = actualServiceDate;

  int _branchId;
  int get branchId => _$this._branchId;
  set branchId(int branchId) => _$this._branchId = branchId;

  int _customerId;
  int get customerId => _$this._customerId;
  set customerId(int customerId) => _$this._customerId = customerId;

  DateTime _expectedDeliveryTime;
  DateTime get expectedDeliveryTime => _$this._expectedDeliveryTime;
  set expectedDeliveryTime(DateTime expectedDeliveryTime) =>
      _$this._expectedDeliveryTime = expectedDeliveryTime;

  int _feedbackId;
  int get feedbackId => _$this._feedbackId;
  set feedbackId(int feedbackId) => _$this._feedbackId = feedbackId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _issue;
  String get issue => _$this._issue;
  set issue(String issue) => _$this._issue = issue;

  DateTime _preferredAppointmentDate;
  DateTime get preferredAppointmentDate => _$this._preferredAppointmentDate;
  set preferredAppointmentDate(DateTime preferredAppointmentDate) =>
      _$this._preferredAppointmentDate = preferredAppointmentDate;

  String _preferredTime;
  String get preferredTime => _$this._preferredTime;
  set preferredTime(String preferredTime) =>
      _$this._preferredTime = preferredTime;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  String _recordedAudio;
  String get recordedAudio => _$this._recordedAudio;
  set recordedAudio(String recordedAudio) =>
      _$this._recordedAudio = recordedAudio;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  int _standbyProductId;
  int get standbyProductId => _$this._standbyProductId;
  set standbyProductId(int standbyProductId) =>
      _$this._standbyProductId = standbyProductId;

  String _ticketDescription;
  String get ticketDescription => _$this._ticketDescription;
  set ticketDescription(String ticketDescription) =>
      _$this._ticketDescription = ticketDescription;

  String _ticketNumber;
  String get ticketNumber => _$this._ticketNumber;
  set ticketNumber(String ticketNumber) => _$this._ticketNumber = ticketNumber;

  String _trackingId;
  String get trackingId => _$this._trackingId;
  set trackingId(String trackingId) => _$this._trackingId = trackingId;

  TicketDTOBuilder();

  TicketDTOBuilder get _$this {
    if (_$v != null) {
      _actualServiceDate = _$v.actualServiceDate;
      _branchId = _$v.branchId;
      _customerId = _$v.customerId;
      _expectedDeliveryTime = _$v.expectedDeliveryTime;
      _feedbackId = _$v.feedbackId;
      _id = _$v.id;
      _issue = _$v.issue;
      _preferredAppointmentDate = _$v.preferredAppointmentDate;
      _preferredTime = _$v.preferredTime;
      _productId = _$v.productId;
      _recordedAudio = _$v.recordedAudio;
      _remarks = _$v.remarks;
      _standbyProductId = _$v.standbyProductId;
      _ticketDescription = _$v.ticketDescription;
      _ticketNumber = _$v.ticketNumber;
      _trackingId = _$v.trackingId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TicketDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TicketDTO;
  }

  @override
  void update(void Function(TicketDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TicketDTO build() {
    final _$result = _$v ??
        new _$TicketDTO._(
            actualServiceDate: actualServiceDate,
            branchId: branchId,
            customerId: customerId,
            expectedDeliveryTime: expectedDeliveryTime,
            feedbackId: feedbackId,
            id: id,
            issue: issue,
            preferredAppointmentDate: preferredAppointmentDate,
            preferredTime: preferredTime,
            productId: productId,
            recordedAudio: recordedAudio,
            remarks: remarks,
            standbyProductId: standbyProductId,
            ticketDescription: ticketDescription,
            ticketNumber: ticketNumber,
            trackingId: trackingId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
