library openapi.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/serializers.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:openapi/api/account_resource_api.dart';
import 'package:openapi/api/address_resource_api.dart';
import 'package:openapi/api/answer_resource_api.dart';
import 'package:openapi/api/attempt_history_resource_api.dart';
import 'package:openapi/api/branch_resource_api.dart';
import 'package:openapi/api/brand_resource_api.dart';
import 'package:openapi/api/call_center_executive_resource_api.dart';
import 'package:openapi/api/category_resource_api.dart';
import 'package:openapi/api/chat_resource_api.dart';
import 'package:openapi/api/city_resource_api.dart';
import 'package:openapi/api/command_resource_api.dart';
import 'package:openapi/api/customer_account_resource_api.dart';
import 'package:openapi/api/customer_resource_api.dart';
import 'package:openapi/api/district_resource_api.dart';
import 'package:openapi/api/feedback_resource_api.dart';
import 'package:openapi/api/loyalty_program_resource_api.dart';
import 'package:openapi/api/message_resource_api.dart';
import 'package:openapi/api/otp_resource_api.dart';
import 'package:openapi/api/overall_rating_resource_api.dart';
import 'package:openapi/api/pin_code_resource_api.dart';
import 'package:openapi/api/product_resource_api.dart';
import 'package:openapi/api/product_warranty_resource_api.dart';
import 'package:openapi/api/promotional_message_resource_api.dart';
import 'package:openapi/api/query_resource_api.dart';
import 'package:openapi/api/question_resource_api.dart';
import 'package:openapi/api/rating_resource_api.dart';
import 'package:openapi/api/safety_tip_resource_api.dart';
import 'package:openapi/api/served_product_resource_api.dart';
import 'package:openapi/api/served_product_warranty_resource_api.dart';
import 'package:openapi/api/service_executive_resource_api.dart';
import 'package:openapi/api/service_section_resource_api.dart';
import 'package:openapi/api/standby_product_resource_api.dart';
import 'package:openapi/api/state_resource_api.dart';
import 'package:openapi/api/ticket_history_resource_api.dart';
import 'package:openapi/api/ticket_resource_api.dart';
import 'package:openapi/api/user_jwt_controller_api.dart';
import 'package:openapi/api/user_resource_api.dart';

final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor()
];

class Openapi {
  Dio dio;
  Serializers serializers;
  String basePath = "http://34.75.39.132:8081";

  Openapi(
      {this.dio,
      Serializers serializers,
      String basePathOverride,
      List<Interceptor> interceptors}) {
    if (dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: basePathOverride ?? basePath,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );
      this.dio = new Dio(options);
    }

    if (interceptors == null) {
      this.dio.interceptors.addAll(_defaultInterceptors);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }

    this.serializers = serializers ?? standardSerializers;
  }

  void setOAuthToken(String name, String token) {
    (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor,
            orElse: null) as OAuthInterceptor)
        ?.tokens[name] = token;
  }

  void setBasicAuth(String name, String username, String password) {
    (this.dio.interceptors.firstWhere(
            (element) => element is BasicAuthInterceptor,
            orElse: null) as BasicAuthInterceptor)
        ?.authInfo[name] = BasicAuthInfo(username, password);
  }

  void setApiKey(String name, String apiKey) {
    (this.dio.interceptors.firstWhere(
            (element) => element is ApiKeyAuthInterceptor,
            orElse: null) as ApiKeyAuthInterceptor)
        ?.apiKeys[name] = apiKey;
  }

  /**
    * Get AccountResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  AccountResourceApi getAccountResourceApi() {
    return AccountResourceApi(dio, serializers);
  }

  /**
    * Get AddressResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  AddressResourceApi getAddressResourceApi() {
    return AddressResourceApi(dio, serializers);
  }

  /**
    * Get AnswerResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  AnswerResourceApi getAnswerResourceApi() {
    return AnswerResourceApi(dio, serializers);
  }

  /**
    * Get AttemptHistoryResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  AttemptHistoryResourceApi getAttemptHistoryResourceApi() {
    return AttemptHistoryResourceApi(dio, serializers);
  }

  /**
    * Get BranchResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  BranchResourceApi getBranchResourceApi() {
    return BranchResourceApi(dio, serializers);
  }

  /**
    * Get BrandResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  BrandResourceApi getBrandResourceApi() {
    return BrandResourceApi(dio, serializers);
  }

  /**
    * Get CallCenterExecutiveResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CallCenterExecutiveResourceApi getCallCenterExecutiveResourceApi() {
    return CallCenterExecutiveResourceApi(dio, serializers);
  }

  /**
    * Get CategoryResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CategoryResourceApi getCategoryResourceApi() {
    return CategoryResourceApi(dio, serializers);
  }

  /**
    * Get ChatResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ChatResourceApi getChatResourceApi() {
    return ChatResourceApi(dio, serializers);
  }

  /**
    * Get CityResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CityResourceApi getCityResourceApi() {
    return CityResourceApi(dio, serializers);
  }

  /**
    * Get CommandResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CommandResourceApi getCommandResourceApi() {
    return CommandResourceApi(dio, serializers);
  }

  /**
    * Get CustomerAccountResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CustomerAccountResourceApi getCustomerAccountResourceApi() {
    return CustomerAccountResourceApi(dio, serializers);
  }

  /**
    * Get CustomerResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CustomerResourceApi getCustomerResourceApi() {
    return CustomerResourceApi(dio, serializers);
  }

  /**
    * Get DistrictResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  DistrictResourceApi getDistrictResourceApi() {
    return DistrictResourceApi(dio, serializers);
  }

  /**
    * Get FeedbackResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  FeedbackResourceApi getFeedbackResourceApi() {
    return FeedbackResourceApi(dio, serializers);
  }

  /**
    * Get LoyaltyProgramResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  LoyaltyProgramResourceApi getLoyaltyProgramResourceApi() {
    return LoyaltyProgramResourceApi(dio, serializers);
  }

  /**
    * Get MessageResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  MessageResourceApi getMessageResourceApi() {
    return MessageResourceApi(dio, serializers);
  }

  /**
    * Get OtpResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  OtpResourceApi getOtpResourceApi() {
    return OtpResourceApi(dio, serializers);
  }

  /**
    * Get OverallRatingResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  OverallRatingResourceApi getOverallRatingResourceApi() {
    return OverallRatingResourceApi(dio, serializers);
  }

  /**
    * Get PinCodeResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  PinCodeResourceApi getPinCodeResourceApi() {
    return PinCodeResourceApi(dio, serializers);
  }

  /**
    * Get ProductResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ProductResourceApi getProductResourceApi() {
    return ProductResourceApi(dio, serializers);
  }

  /**
    * Get ProductWarrantyResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ProductWarrantyResourceApi getProductWarrantyResourceApi() {
    return ProductWarrantyResourceApi(dio, serializers);
  }

  /**
    * Get PromotionalMessageResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  PromotionalMessageResourceApi getPromotionalMessageResourceApi() {
    return PromotionalMessageResourceApi(dio, serializers);
  }

  /**
    * Get QueryResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  QueryResourceApi getQueryResourceApi() {
    return QueryResourceApi(dio, serializers);
  }

  /**
    * Get QuestionResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  QuestionResourceApi getQuestionResourceApi() {
    return QuestionResourceApi(dio, serializers);
  }

  /**
    * Get RatingResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  RatingResourceApi getRatingResourceApi() {
    return RatingResourceApi(dio, serializers);
  }

  /**
    * Get SafetyTipResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  SafetyTipResourceApi getSafetyTipResourceApi() {
    return SafetyTipResourceApi(dio, serializers);
  }

  /**
    * Get ServedProductResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ServedProductResourceApi getServedProductResourceApi() {
    return ServedProductResourceApi(dio, serializers);
  }

  /**
    * Get ServedProductWarrantyResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ServedProductWarrantyResourceApi getServedProductWarrantyResourceApi() {
    return ServedProductWarrantyResourceApi(dio, serializers);
  }

  /**
    * Get ServiceExecutiveResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ServiceExecutiveResourceApi getServiceExecutiveResourceApi() {
    return ServiceExecutiveResourceApi(dio, serializers);
  }

  /**
    * Get ServiceSectionResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ServiceSectionResourceApi getServiceSectionResourceApi() {
    return ServiceSectionResourceApi(dio, serializers);
  }

  /**
    * Get StandbyProductResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  StandbyProductResourceApi getStandbyProductResourceApi() {
    return StandbyProductResourceApi(dio, serializers);
  }

  /**
    * Get StateResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  StateResourceApi getStateResourceApi() {
    return StateResourceApi(dio, serializers);
  }

  /**
    * Get TicketHistoryResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  TicketHistoryResourceApi getTicketHistoryResourceApi() {
    return TicketHistoryResourceApi(dio, serializers);
  }

  /**
    * Get TicketResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  TicketResourceApi getTicketResourceApi() {
    return TicketResourceApi(dio, serializers);
  }

  /**
    * Get UserJwtControllerApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  UserJwtControllerApi getUserJwtControllerApi() {
    return UserJwtControllerApi(dio, serializers);
  }

  /**
    * Get UserResourceApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  UserResourceApi getUserResourceApi() {
    return UserResourceApi(dio, serializers);
  }
}
