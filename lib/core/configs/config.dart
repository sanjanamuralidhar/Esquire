import 'package:openapi/model/user_dto.dart';
import 'package:openapi/model/customer.dart';

class Config {
  static final SERVER_BASE_PATH = 'http://10.0.2.2:8081';

  static final APP_USER = 'admin';
  static final APP_PASSWORD = 'admin';
  static Map<String, String> TOKEN;
  static UserDTO USER;
  static Customer CUSTOMER;
  static final SNACKBAR_WAIT_FOR_DISPLAY = 3;
  static final DEBUG_ENABLED_SNACKBAR = false;
}
