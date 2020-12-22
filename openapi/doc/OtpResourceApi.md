# openapi.api.OtpResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkBalanceOtpUsingGET**](OtpResourceApi.md#checkBalanceOtpUsingGET) | **get** /api/otp/check-balance | checkBalanceOtp
[**getOtpToChangeNumberUsingGET**](OtpResourceApi.md#getOtpToChangeNumberUsingGET) | **get** /api/otp/change-number/{phoneNumber} | getOtpToChangeNumber
[**getOtpToRegisterUsingGET**](OtpResourceApi.md#getOtpToRegisterUsingGET) | **get** /api/otp/register/{phoneNumber} | getOtpToRegister
[**getOtpToResetPasswordUsingGET**](OtpResourceApi.md#getOtpToResetPasswordUsingGET) | **get** /api/otp/reset-password/{phoneNumber} | getOtpToResetPassword
[**verifyOtpUsingGET**](OtpResourceApi.md#verifyOtpUsingGET) | **get** /api/otp/verify/{phoneNumber}/{providedOtp}/{referenceId} | verifyOtp


# **checkBalanceOtpUsingGET**
> OtpResponseDTO checkBalanceOtpUsingGET()

checkBalanceOtp

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OtpResourceApi();

try { 
    var result = api_instance.checkBalanceOtpUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling OtpResourceApi->checkBalanceOtpUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OtpResponseDTO**](OtpResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtpToChangeNumberUsingGET**
> OtpResponseDTO getOtpToChangeNumberUsingGET(phoneNumber)

getOtpToChangeNumber

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OtpResourceApi();
var phoneNumber = phoneNumber_example; // String | phoneNumber

try { 
    var result = api_instance.getOtpToChangeNumberUsingGET(phoneNumber);
    print(result);
} catch (e) {
    print("Exception when calling OtpResourceApi->getOtpToChangeNumberUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| phoneNumber | [default to null]

### Return type

[**OtpResponseDTO**](OtpResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtpToRegisterUsingGET**
> OtpResponseDTO getOtpToRegisterUsingGET(phoneNumber)

getOtpToRegister

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OtpResourceApi();
var phoneNumber = phoneNumber_example; // String | phoneNumber

try { 
    var result = api_instance.getOtpToRegisterUsingGET(phoneNumber);
    print(result);
} catch (e) {
    print("Exception when calling OtpResourceApi->getOtpToRegisterUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| phoneNumber | [default to null]

### Return type

[**OtpResponseDTO**](OtpResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtpToResetPasswordUsingGET**
> OtpResponseDTO getOtpToResetPasswordUsingGET(phoneNumber)

getOtpToResetPassword

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OtpResourceApi();
var phoneNumber = phoneNumber_example; // String | phoneNumber

try { 
    var result = api_instance.getOtpToResetPasswordUsingGET(phoneNumber);
    print(result);
} catch (e) {
    print("Exception when calling OtpResourceApi->getOtpToResetPasswordUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| phoneNumber | [default to null]

### Return type

[**OtpResponseDTO**](OtpResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyOtpUsingGET**
> OtpResponseDTO verifyOtpUsingGET(phoneNumber, providedOtp, referenceId)

verifyOtp

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OtpResourceApi();
var phoneNumber = phoneNumber_example; // String | phoneNumber
var providedOtp = providedOtp_example; // String | providedOtp
var referenceId = referenceId_example; // String | referenceId

try { 
    var result = api_instance.verifyOtpUsingGET(phoneNumber, providedOtp, referenceId);
    print(result);
} catch (e) {
    print("Exception when calling OtpResourceApi->verifyOtpUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| phoneNumber | [default to null]
 **providedOtp** | **String**| providedOtp | [default to null]
 **referenceId** | **String**| referenceId | [default to null]

### Return type

[**OtpResponseDTO**](OtpResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

