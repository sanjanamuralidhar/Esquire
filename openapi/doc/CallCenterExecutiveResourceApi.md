# openapi.api.CallCenterExecutiveResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCallCenterExecutiveUsingPOST**](CallCenterExecutiveResourceApi.md#createCallCenterExecutiveUsingPOST) | **post** /api/call-center-executives | createCallCenterExecutive
[**deleteCallCenterExecutiveUsingDELETE**](CallCenterExecutiveResourceApi.md#deleteCallCenterExecutiveUsingDELETE) | **delete** /api/call-center-executives/{id} | deleteCallCenterExecutive
[**getAllCallCenterExecutivesByUserLoginUsingGET**](CallCenterExecutiveResourceApi.md#getAllCallCenterExecutivesByUserLoginUsingGET) | **get** /api/call-center-executives/users/{userLogin} | getAllCallCenterExecutivesByUserLogin
[**getAllCallCenterExecutivesUsingGET**](CallCenterExecutiveResourceApi.md#getAllCallCenterExecutivesUsingGET) | **get** /api/call-center-executives | getAllCallCenterExecutives
[**getCallCenterExecutiveUsingGET**](CallCenterExecutiveResourceApi.md#getCallCenterExecutiveUsingGET) | **get** /api/call-center-executives/{id} | getCallCenterExecutive
[**updateCallCenterExecutiveUsingPUT**](CallCenterExecutiveResourceApi.md#updateCallCenterExecutiveUsingPUT) | **put** /api/call-center-executives | updateCallCenterExecutive


# **createCallCenterExecutiveUsingPOST**
> CallCenterExecutiveDTO createCallCenterExecutiveUsingPOST(callCenterExecutiveDTO)

createCallCenterExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CallCenterExecutiveResourceApi();
var callCenterExecutiveDTO = new CallCenterExecutiveDTO(); // CallCenterExecutiveDTO | callCenterExecutiveDTO

try { 
    var result = api_instance.createCallCenterExecutiveUsingPOST(callCenterExecutiveDTO);
    print(result);
} catch (e) {
    print("Exception when calling CallCenterExecutiveResourceApi->createCallCenterExecutiveUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callCenterExecutiveDTO** | [**CallCenterExecutiveDTO**](CallCenterExecutiveDTO.md)| callCenterExecutiveDTO | 

### Return type

[**CallCenterExecutiveDTO**](CallCenterExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCallCenterExecutiveUsingDELETE**
> deleteCallCenterExecutiveUsingDELETE(id)

deleteCallCenterExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CallCenterExecutiveResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCallCenterExecutiveUsingDELETE(id);
} catch (e) {
    print("Exception when calling CallCenterExecutiveResourceApi->deleteCallCenterExecutiveUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCallCenterExecutivesByUserLoginUsingGET**
> CallCenterExecutive getAllCallCenterExecutivesByUserLoginUsingGET(userLogin)

getAllCallCenterExecutivesByUserLogin

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CallCenterExecutiveResourceApi();
var userLogin = userLogin_example; // String | userLogin

try { 
    var result = api_instance.getAllCallCenterExecutivesByUserLoginUsingGET(userLogin);
    print(result);
} catch (e) {
    print("Exception when calling CallCenterExecutiveResourceApi->getAllCallCenterExecutivesByUserLoginUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userLogin** | **String**| userLogin | [default to null]

### Return type

[**CallCenterExecutive**](CallCenterExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCallCenterExecutivesUsingGET**
> List<CallCenterExecutiveDTO> getAllCallCenterExecutivesUsingGET(page, size, sort)

getAllCallCenterExecutives

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CallCenterExecutiveResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCallCenterExecutivesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling CallCenterExecutiveResourceApi->getAllCallCenterExecutivesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CallCenterExecutiveDTO>**](CallCenterExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCallCenterExecutiveUsingGET**
> CallCenterExecutiveDTO getCallCenterExecutiveUsingGET(id)

getCallCenterExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CallCenterExecutiveResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCallCenterExecutiveUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CallCenterExecutiveResourceApi->getCallCenterExecutiveUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CallCenterExecutiveDTO**](CallCenterExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCallCenterExecutiveUsingPUT**
> CallCenterExecutiveDTO updateCallCenterExecutiveUsingPUT(callCenterExecutiveDTO)

updateCallCenterExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CallCenterExecutiveResourceApi();
var callCenterExecutiveDTO = new CallCenterExecutiveDTO(); // CallCenterExecutiveDTO | callCenterExecutiveDTO

try { 
    var result = api_instance.updateCallCenterExecutiveUsingPUT(callCenterExecutiveDTO);
    print(result);
} catch (e) {
    print("Exception when calling CallCenterExecutiveResourceApi->updateCallCenterExecutiveUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **callCenterExecutiveDTO** | [**CallCenterExecutiveDTO**](CallCenterExecutiveDTO.md)| callCenterExecutiveDTO | 

### Return type

[**CallCenterExecutiveDTO**](CallCenterExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

