// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ticket> _$ticketSerializer = new _$TicketSerializer();

class _$TicketSerializer implements StructuredSerializer<Ticket> {
  @override
  final Iterable<Type> types = const [Ticket, _$Ticket];
  @override
  final String wireName = 'Ticket';

  @override
  Iterable<Object> serialize(Serializers serializers, Ticket object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.actualServiceDate != null) {
      result
        ..add('actualServiceDate')
        ..add(serializers.serialize(object.actualServiceDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(Branch)));
    }
    if (object.customer != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(object.customer,
            specifiedType: const FullType(Customer)));
    }
    if (object.expectedDeliveryTime != null) {
      result
        ..add('expectedDeliveryTime')
        ..add(serializers.serialize(object.expectedDeliveryTime,
            specifiedType: const FullType(DateTime)));
    }
    if (object.feedback != null) {
      result
        ..add('feedback')
        ..add(serializers.serialize(object.feedback,
            specifiedType: const FullType(Feedback)));
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
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(ServedProduct)));
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
    if (object.standbyProduct != null) {
      result
        ..add('standbyProduct')
        ..add(serializers.serialize(object.standbyProduct,
            specifiedType: const FullType(StandbyProduct)));
    }
    if (object.ticketDescription != null) {
      result
        ..add('ticketDescription')
        ..add(serializers.serialize(object.ticketDescription,
            specifiedType: const FullType(String)));
    }
    if (object.ticketHistories != null) {
      result
        ..add('ticketHistories')
        ..add(serializers.serialize(object.ticketHistories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TicketHistory)])));
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
  Ticket deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TicketBuilder();

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
        case 'branch':
          result.branch.replace(serializers.deserialize(value,
              specifiedType: const FullType(Branch)) as Branch);
          break;
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer)) as Customer);
          break;
        case 'expectedDeliveryTime':
          result.expectedDeliveryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'feedback':
          result.feedback.replace(serializers.deserialize(value,
              specifiedType: const FullType(Feedback)) as Feedback);
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
        case 'product':
          result.product.replace(serializers.deserialize(value,
              specifiedType: const FullType(ServedProduct)) as ServedProduct);
          break;
        case 'recordedAudio':
          result.recordedAudio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'standbyProduct':
          result.standbyProduct.replace(serializers.deserialize(value,
              specifiedType: const FullType(StandbyProduct)) as StandbyProduct);
          break;
        case 'ticketDescription':
          result.ticketDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticketHistories':
          result.ticketHistories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TicketHistory)]))
              as BuiltList<Object>);
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

class _$Ticket extends Ticket {
  @override
  final DateTime actualServiceDate;
  @override
  final Branch branch;
  @override
  final Customer customer;
  @override
  final DateTime expectedDeliveryTime;
  @override
  final Feedback feedback;
  @override
  final int id;
  @override
  final String issue;
  @override
  final DateTime preferredAppointmentDate;
  @override
  final String preferredTime;
  @override
  final ServedProduct product;
  @override
  final String recordedAudio;
  @override
  final String remarks;
  @override
  final StandbyProduct standbyProduct;
  @override
  final String ticketDescription;
  @override
  final BuiltList<TicketHistory> ticketHistories;
  @override
  final String ticketNumber;
  @override
  final String trackingId;

  factory _$Ticket([void Function(TicketBuilder) updates]) =>
      (new TicketBuilder()..update(updates)).build();

  _$Ticket._(
      {this.actualServiceDate,
      this.branch,
      this.customer,
      this.expectedDeliveryTime,
      this.feedback,
      this.id,
      this.issue,
      this.preferredAppointmentDate,
      this.preferredTime,
      this.product,
      this.recordedAudio,
      this.remarks,
      this.standbyProduct,
      this.ticketDescription,
      this.ticketHistories,
      this.ticketNumber,
      this.trackingId})
      : super._();

  @override
  Ticket rebuild(void Function(TicketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TicketBuilder toBuilder() => new TicketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ticket &&
        actualServiceDate == other.actualServiceDate &&
        branch == other.branch &&
        customer == other.customer &&
        expectedDeliveryTime == other.expectedDeliveryTime &&
        feedback == other.feedback &&
        id == other.id &&
        issue == other.issue &&
        preferredAppointmentDate == other.preferredAppointmentDate &&
        preferredTime == other.preferredTime &&
        product == other.product &&
        recordedAudio == other.recordedAudio &&
        remarks == other.remarks &&
        standbyProduct == other.standbyProduct &&
        ticketDescription == other.ticketDescription &&
        ticketHistories == other.ticketHistories &&
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
                                                                    $jc(
                                                                        0,
                                                                        actualServiceDate
                                                                            .hashCode),
                                                                    branch
                                                                        .hashCode),
                                                                customer
                                                                    .hashCode),
                                                            expectedDeliveryTime
                                                                .hashCode),
                                                        feedback.hashCode),
                                                    id.hashCode),
                                                issue.hashCode),
                                            preferredAppointmentDate.hashCode),
                                        preferredTime.hashCode),
                                    product.hashCode),
                                recordedAudio.hashCode),
                            remarks.hashCode),
                        standbyProduct.hashCode),
                    ticketDescription.hashCode),
                ticketHistories.hashCode),
            ticketNumber.hashCode),
        trackingId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ticket')
          ..add('actualServiceDate', actualServiceDate)
          ..add('branch', branch)
          ..add('customer', customer)
          ..add('expectedDeliveryTime', expectedDeliveryTime)
          ..add('feedback', feedback)
          ..add('id', id)
          ..add('issue', issue)
          ..add('preferredAppointmentDate', preferredAppointmentDate)
          ..add('preferredTime', preferredTime)
          ..add('product', product)
          ..add('recordedAudio', recordedAudio)
          ..add('remarks', remarks)
          ..add('standbyProduct', standbyProduct)
          ..add('ticketDescription', ticketDescription)
          ..add('ticketHistories', ticketHistories)
          ..add('ticketNumber', ticketNumber)
          ..add('trackingId', trackingId))
        .toString();
  }
}

class TicketBuilder implements Builder<Ticket, TicketBuilder> {
  _$Ticket _$v;

  DateTime _actualServiceDate;
  DateTime get actualServiceDate => _$this._actualServiceDate;
  set actualServiceDate(DateTime actualServiceDate) =>
      _$this._actualServiceDate = actualServiceDate;

  BranchBuilder _branch;
  BranchBuilder get branch => _$this._branch ??= new BranchBuilder();
  set branch(BranchBuilder branch) => _$this._branch = branch;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  DateTime _expectedDeliveryTime;
  DateTime get expectedDeliveryTime => _$this._expectedDeliveryTime;
  set expectedDeliveryTime(DateTime expectedDeliveryTime) =>
      _$this._expectedDeliveryTime = expectedDeliveryTime;

  FeedbackBuilder _feedback;
  FeedbackBuilder get feedback => _$this._feedback ??= new FeedbackBuilder();
  set feedback(FeedbackBuilder feedback) => _$this._feedback = feedback;

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

  ServedProductBuilder _product;
  ServedProductBuilder get product =>
      _$this._product ??= new ServedProductBuilder();
  set product(ServedProductBuilder product) => _$this._product = product;

  String _recordedAudio;
  String get recordedAudio => _$this._recordedAudio;
  set recordedAudio(String recordedAudio) =>
      _$this._recordedAudio = recordedAudio;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  StandbyProductBuilder _standbyProduct;
  StandbyProductBuilder get standbyProduct =>
      _$this._standbyProduct ??= new StandbyProductBuilder();
  set standbyProduct(StandbyProductBuilder standbyProduct) =>
      _$this._standbyProduct = standbyProduct;

  String _ticketDescription;
  String get ticketDescription => _$this._ticketDescription;
  set ticketDescription(String ticketDescription) =>
      _$this._ticketDescription = ticketDescription;

  ListBuilder<TicketHistory> _ticketHistories;
  ListBuilder<TicketHistory> get ticketHistories =>
      _$this._ticketHistories ??= new ListBuilder<TicketHistory>();
  set ticketHistories(ListBuilder<TicketHistory> ticketHistories) =>
      _$this._ticketHistories = ticketHistories;

  String _ticketNumber;
  String get ticketNumber => _$this._ticketNumber;
  set ticketNumber(String ticketNumber) => _$this._ticketNumber = ticketNumber;

  String _trackingId;
  String get trackingId => _$this._trackingId;
  set trackingId(String trackingId) => _$this._trackingId = trackingId;

  TicketBuilder();

  TicketBuilder get _$this {
    if (_$v != null) {
      _actualServiceDate = _$v.actualServiceDate;
      _branch = _$v.branch?.toBuilder();
      _customer = _$v.customer?.toBuilder();
      _expectedDeliveryTime = _$v.expectedDeliveryTime;
      _feedback = _$v.feedback?.toBuilder();
      _id = _$v.id;
      _issue = _$v.issue;
      _preferredAppointmentDate = _$v.preferredAppointmentDate;
      _preferredTime = _$v.preferredTime;
      _product = _$v.product?.toBuilder();
      _recordedAudio = _$v.recordedAudio;
      _remarks = _$v.remarks;
      _standbyProduct = _$v.standbyProduct?.toBuilder();
      _ticketDescription = _$v.ticketDescription;
      _ticketHistories = _$v.ticketHistories?.toBuilder();
      _ticketNumber = _$v.ticketNumber;
      _trackingId = _$v.trackingId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ticket other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Ticket;
  }

  @override
  void update(void Function(TicketBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ticket build() {
    _$Ticket _$result;
    try {
      _$result = _$v ??
          new _$Ticket._(
              actualServiceDate: actualServiceDate,
              branch: _branch?.build(),
              customer: _customer?.build(),
              expectedDeliveryTime: expectedDeliveryTime,
              feedback: _feedback?.build(),
              id: id,
              issue: issue,
              preferredAppointmentDate: preferredAppointmentDate,
              preferredTime: preferredTime,
              product: _product?.build(),
              recordedAudio: recordedAudio,
              remarks: remarks,
              standbyProduct: _standbyProduct?.build(),
              ticketDescription: ticketDescription,
              ticketHistories: _ticketHistories?.build(),
              ticketNumber: ticketNumber,
              trackingId: trackingId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'branch';
        _branch?.build();
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'feedback';
        _feedback?.build();

        _$failedField = 'product';
        _product?.build();

        _$failedField = 'standbyProduct';
        _standbyProduct?.build();

        _$failedField = 'ticketHistories';
        _ticketHistories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Ticket', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
