library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/address.dart';
import 'package:openapi/model/address_dto.dart';
import 'package:openapi/model/answer.dart';
import 'package:openapi/model/answer_dto.dart';
import 'package:openapi/model/attempt_history.dart';
import 'package:openapi/model/attempt_history_dto.dart';
import 'package:openapi/model/branch.dart';
import 'package:openapi/model/branch_dto.dart';
import 'package:openapi/model/brand.dart';
import 'package:openapi/model/brand_dto.dart';
import 'package:openapi/model/call_center_executive.dart';
import 'package:openapi/model/call_center_executive_dto.dart';
import 'package:openapi/model/category.dart';
import 'package:openapi/model/category_dto.dart';
import 'package:openapi/model/chat_dto.dart';
import 'package:openapi/model/city.dart';
import 'package:openapi/model/city_dto.dart';
import 'package:openapi/model/customer.dart';
import 'package:openapi/model/customer_account.dart';
import 'package:openapi/model/customer_account_dto.dart';
import 'package:openapi/model/customer_dto.dart';
import 'package:openapi/model/data_response.dart';
import 'package:openapi/model/district.dart';
import 'package:openapi/model/district_dto.dart';
import 'package:openapi/model/feedback.dart';
import 'package:openapi/model/feedback_dto.dart';
import 'package:openapi/model/form_data_response.dart';
import 'package:openapi/model/jwt_token.dart';
import 'package:openapi/model/key_and_password_vm.dart';
import 'package:openapi/model/login_vm.dart';
import 'package:openapi/model/loyalty_program.dart';
import 'package:openapi/model/loyalty_program_dto.dart';
import 'package:openapi/model/managed_user_vm.dart';
import 'package:openapi/model/message_dto.dart';
import 'package:openapi/model/otp_response_dto.dart';
import 'package:openapi/model/overall_rating.dart';
import 'package:openapi/model/overall_rating_dto.dart';
import 'package:openapi/model/password_change_dto.dart';
import 'package:openapi/model/pin_code.dart';
import 'package:openapi/model/pin_code_dto.dart';
import 'package:openapi/model/process_instance_response.dart';
import 'package:openapi/model/product.dart';
import 'package:openapi/model/product_dto.dart';
import 'package:openapi/model/product_warranty.dart';
import 'package:openapi/model/product_warranty_dto.dart';
import 'package:openapi/model/promotional_message.dart';
import 'package:openapi/model/promotional_message_dto.dart';
import 'package:openapi/model/question.dart';
import 'package:openapi/model/question_dto.dart';
import 'package:openapi/model/rating.dart';
import 'package:openapi/model/rating_dto.dart';
import 'package:openapi/model/rest_enum_form_property.dart';
import 'package:openapi/model/rest_form_property.dart';
import 'package:openapi/model/rest_variable.dart';
import 'package:openapi/model/safety_tip_dto.dart';
import 'package:openapi/model/served_product.dart';
import 'package:openapi/model/served_product_dto.dart';
import 'package:openapi/model/served_product_warranty.dart';
import 'package:openapi/model/served_product_warranty_dto.dart';
import 'package:openapi/model/service_executive.dart';
import 'package:openapi/model/service_executive_dto.dart';
import 'package:openapi/model/service_section.dart';
import 'package:openapi/model/service_section_dto.dart';
import 'package:openapi/model/standby_product.dart';
import 'package:openapi/model/standby_product_dto.dart';
import 'package:openapi/model/state.dart';
import 'package:openapi/model/state_dto.dart';
import 'package:openapi/model/ticket.dart';
import 'package:openapi/model/ticket_dto.dart';
import 'package:openapi/model/ticket_history.dart';
import 'package:openapi/model/ticket_history_dto.dart';
import 'package:openapi/model/user.dart';
import 'package:openapi/model/user_dto.dart';


part 'serializers.g.dart';

@SerializersFor(const [
Address,
AddressDTO,
Answer,
AnswerDTO,
AttemptHistory,
AttemptHistoryDTO,
Branch,
BranchDTO,
Brand,
BrandDTO,
CallCenterExecutive,
CallCenterExecutiveDTO,
Category,
CategoryDTO,
ChatDTO,
City,
CityDTO,
Customer,
CustomerAccount,
CustomerAccountDTO,
CustomerDTO,
DataResponse,
District,
DistrictDTO,
Feedback,
FeedbackDTO,
FormDataResponse,
JWTToken,
KeyAndPasswordVM,
LoginVM,
LoyaltyProgram,
LoyaltyProgramDTO,
ManagedUserVM,
MessageDTO,
OtpResponseDTO,
OverallRating,
OverallRatingDTO,
PasswordChangeDTO,
PinCode,
PinCodeDTO,
ProcessInstanceResponse,
Product,
ProductDTO,
ProductWarranty,
ProductWarrantyDTO,
PromotionalMessage,
PromotionalMessageDTO,
Question,
QuestionDTO,
Rating,
RatingDTO,
RestEnumFormProperty,
RestFormProperty,
RestVariable,
SafetyTipDTO,
ServedProduct,
ServedProductDTO,
ServedProductWarranty,
ServedProductWarrantyDTO,
ServiceExecutive,
ServiceExecutiveDTO,
ServiceSection,
ServiceSectionDTO,
StandbyProduct,
StandbyProductDTO,
State,
StateDTO,
Ticket,
TicketDTO,
TicketHistory,
TicketHistoryDTO,
User,
UserDTO,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Address)]),
() => new ListBuilder<Address>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AddressDTO)]),
() => new ListBuilder<AddressDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Answer)]),
() => new ListBuilder<Answer>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AnswerDTO)]),
() => new ListBuilder<AnswerDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AttemptHistory)]),
() => new ListBuilder<AttemptHistory>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AttemptHistoryDTO)]),
() => new ListBuilder<AttemptHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Branch)]),
() => new ListBuilder<Branch>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BranchDTO)]),
() => new ListBuilder<BranchDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Brand)]),
() => new ListBuilder<Brand>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BrandDTO)]),
() => new ListBuilder<BrandDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CallCenterExecutive)]),
() => new ListBuilder<CallCenterExecutive>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CallCenterExecutiveDTO)]),
() => new ListBuilder<CallCenterExecutiveDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Category)]),
() => new ListBuilder<Category>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CategoryDTO)]),
() => new ListBuilder<CategoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ChatDTO)]),
() => new ListBuilder<ChatDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(City)]),
() => new ListBuilder<City>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CityDTO)]),
() => new ListBuilder<CityDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Customer)]),
() => new ListBuilder<Customer>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CustomerAccount)]),
() => new ListBuilder<CustomerAccount>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CustomerAccountDTO)]),
() => new ListBuilder<CustomerAccountDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CustomerDTO)]),
() => new ListBuilder<CustomerDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(DataResponse)]),
() => new ListBuilder<DataResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(District)]),
() => new ListBuilder<District>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(DistrictDTO)]),
() => new ListBuilder<DistrictDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Feedback)]),
() => new ListBuilder<Feedback>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FeedbackDTO)]),
() => new ListBuilder<FeedbackDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FormDataResponse)]),
() => new ListBuilder<FormDataResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JWTToken)]),
() => new ListBuilder<JWTToken>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(KeyAndPasswordVM)]),
() => new ListBuilder<KeyAndPasswordVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoginVM)]),
() => new ListBuilder<LoginVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoyaltyProgram)]),
() => new ListBuilder<LoyaltyProgram>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoyaltyProgramDTO)]),
() => new ListBuilder<LoyaltyProgramDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ManagedUserVM)]),
() => new ListBuilder<ManagedUserVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(MessageDTO)]),
() => new ListBuilder<MessageDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OtpResponseDTO)]),
() => new ListBuilder<OtpResponseDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OverallRating)]),
() => new ListBuilder<OverallRating>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OverallRatingDTO)]),
() => new ListBuilder<OverallRatingDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PasswordChangeDTO)]),
() => new ListBuilder<PasswordChangeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PinCode)]),
() => new ListBuilder<PinCode>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PinCodeDTO)]),
() => new ListBuilder<PinCodeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ProcessInstanceResponse)]),
() => new ListBuilder<ProcessInstanceResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Product)]),
() => new ListBuilder<Product>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ProductDTO)]),
() => new ListBuilder<ProductDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ProductWarranty)]),
() => new ListBuilder<ProductWarranty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ProductWarrantyDTO)]),
() => new ListBuilder<ProductWarrantyDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PromotionalMessage)]),
() => new ListBuilder<PromotionalMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PromotionalMessageDTO)]),
() => new ListBuilder<PromotionalMessageDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Question)]),
() => new ListBuilder<Question>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(QuestionDTO)]),
() => new ListBuilder<QuestionDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Rating)]),
() => new ListBuilder<Rating>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RatingDTO)]),
() => new ListBuilder<RatingDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RestEnumFormProperty)]),
() => new ListBuilder<RestEnumFormProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RestFormProperty)]),
() => new ListBuilder<RestFormProperty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RestVariable)]),
() => new ListBuilder<RestVariable>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SafetyTipDTO)]),
() => new ListBuilder<SafetyTipDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServedProduct)]),
() => new ListBuilder<ServedProduct>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServedProductDTO)]),
() => new ListBuilder<ServedProductDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServedProductWarranty)]),
() => new ListBuilder<ServedProductWarranty>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServedProductWarrantyDTO)]),
() => new ListBuilder<ServedProductWarrantyDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceExecutive)]),
() => new ListBuilder<ServiceExecutive>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceExecutiveDTO)]),
() => new ListBuilder<ServiceExecutiveDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceSection)]),
() => new ListBuilder<ServiceSection>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceSectionDTO)]),
() => new ListBuilder<ServiceSectionDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StandbyProduct)]),
() => new ListBuilder<StandbyProduct>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StandbyProductDTO)]),
() => new ListBuilder<StandbyProductDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(State)]),
() => new ListBuilder<State>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StateDTO)]),
() => new ListBuilder<StateDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Ticket)]),
() => new ListBuilder<Ticket>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TicketDTO)]),
() => new ListBuilder<TicketDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TicketHistory)]),
() => new ListBuilder<TicketHistory>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TicketHistoryDTO)]),
() => new ListBuilder<TicketHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(User)]),
() => new ListBuilder<User>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserDTO)]),
() => new ListBuilder<UserDTO>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
