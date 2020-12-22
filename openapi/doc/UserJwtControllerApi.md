# openapi.api.UserJwtControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizeUsingPOST**](UserJwtControllerApi.md#authorizeUsingPOST) | **post** /api/authenticate | authorize


# **authorizeUsingPOST**
> JWTToken authorizeUsingPOST(loginVM)

authorize

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserJwtControllerApi();
var loginVM = new LoginVM(); // LoginVM | loginVM

try { 
    var result = api_instance.authorizeUsingPOST(loginVM);
    print(result);
} catch (e) {
    print("Exception when calling UserJwtControllerApi->authorizeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginVM** | [**LoginVM**](LoginVM.md)| loginVM | 

### Return type

[**JWTToken**](JWTToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

