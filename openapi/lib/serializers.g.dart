// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Address.serializer)
      ..add(AddressDTO.serializer)
      ..add(Answer.serializer)
      ..add(AnswerDTO.serializer)
      ..add(AttemptHistory.serializer)
      ..add(AttemptHistoryDTO.serializer)
      ..add(Branch.serializer)
      ..add(BranchDTO.serializer)
      ..add(Brand.serializer)
      ..add(BrandDTO.serializer)
      ..add(CallCenterExecutive.serializer)
      ..add(CallCenterExecutiveDTO.serializer)
      ..add(Category.serializer)
      ..add(CategoryDTO.serializer)
      ..add(ChatDTO.serializer)
      ..add(City.serializer)
      ..add(CityDTO.serializer)
      ..add(Customer.serializer)
      ..add(CustomerAccount.serializer)
      ..add(CustomerAccountDTO.serializer)
      ..add(CustomerDTO.serializer)
      ..add(DataResponse.serializer)
      ..add(District.serializer)
      ..add(DistrictDTO.serializer)
      ..add(Feedback.serializer)
      ..add(FeedbackDTO.serializer)
      ..add(FormDataResponse.serializer)
      ..add(JWTToken.serializer)
      ..add(KeyAndPasswordVM.serializer)
      ..add(LoginVM.serializer)
      ..add(LoyaltyProgram.serializer)
      ..add(LoyaltyProgramDTO.serializer)
      ..add(ManagedUserVM.serializer)
      ..add(MessageDTO.serializer)
      ..add(OtpResponseDTO.serializer)
      ..add(OverallRating.serializer)
      ..add(OverallRatingDTO.serializer)
      ..add(PasswordChangeDTO.serializer)
      ..add(PinCode.serializer)
      ..add(PinCodeDTO.serializer)
      ..add(ProcessInstanceResponse.serializer)
      ..add(Product.serializer)
      ..add(ProductDTO.serializer)
      ..add(ProductWarranty.serializer)
      ..add(ProductWarrantyDTO.serializer)
      ..add(PromotionalMessage.serializer)
      ..add(PromotionalMessageDTO.serializer)
      ..add(Question.serializer)
      ..add(QuestionDTO.serializer)
      ..add(Rating.serializer)
      ..add(RatingDTO.serializer)
      ..add(RestEnumFormProperty.serializer)
      ..add(RestFormProperty.serializer)
      ..add(RestVariable.serializer)
      ..add(SafetyTipDTO.serializer)
      ..add(ServedProduct.serializer)
      ..add(ServedProductDTO.serializer)
      ..add(ServedProductWarranty.serializer)
      ..add(ServedProductWarrantyDTO.serializer)
      ..add(ServiceExecutive.serializer)
      ..add(ServiceExecutiveDTO.serializer)
      ..add(ServiceSection.serializer)
      ..add(ServiceSectionDTO.serializer)
      ..add(StandbyProduct.serializer)
      ..add(StandbyProductDTO.serializer)
      ..add(State.serializer)
      ..add(StateDTO.serializer)
      ..add(Ticket.serializer)
      ..add(TicketDTO.serializer)
      ..add(TicketHistory.serializer)
      ..add(TicketHistoryDTO.serializer)
      ..add(User.serializer)
      ..add(UserDTO.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Address)]),
          () => new ListBuilder<Address>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rating)]),
          () => new ListBuilder<Rating>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Ticket)]),
          () => new ListBuilder<Ticket>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Answer)]),
          () => new ListBuilder<Answer>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AttemptHistory)]),
          () => new ListBuilder<AttemptHistory>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Question)]),
          () => new ListBuilder<Question>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CallCenterExecutive)]),
          () => new ListBuilder<CallCenterExecutive>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Feedback)]),
          () => new ListBuilder<Feedback>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ServiceSection)]),
          () => new ListBuilder<ServiceSection>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Category)]),
          () => new ListBuilder<Category>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ProductWarranty)]),
          () => new ListBuilder<ProductWarranty>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PromotionalMessage)]),
          () => new ListBuilder<PromotionalMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rating)]),
          () => new ListBuilder<Rating>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rating)]),
          () => new ListBuilder<Rating>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TicketHistory)]),
          () => new ListBuilder<TicketHistory>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(RestEnumFormProperty)]),
          () => new ListBuilder<RestEnumFormProperty>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RestFormProperty)]),
          () => new ListBuilder<RestFormProperty>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RestVariable)]),
          () => new ListBuilder<RestVariable>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ServedProduct)]),
          () => new ListBuilder<ServedProduct>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ServedProductWarranty)]),
          () => new ListBuilder<ServedProductWarranty>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ServiceExecutive)]),
          () => new ListBuilder<ServiceExecutive>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TicketHistory)]),
          () => new ListBuilder<TicketHistory>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
