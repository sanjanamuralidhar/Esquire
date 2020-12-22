# openapi.api.PinCodeResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPinCodeUsingPOST**](PinCodeResourceApi.md#createPinCodeUsingPOST) | **post** /api/pin-codes | createPinCode
[**deletePinCodeUsingDELETE**](PinCodeResourceApi.md#deletePinCodeUsingDELETE) | **delete** /api/pin-codes/{id} | deletePinCode
[**getAllPinCodesUsingGET**](PinCodeResourceApi.md#getAllPinCodesUsingGET) | **get** /api/pin-codes | getAllPinCodes
[**getPinCodeUsingGET**](PinCodeResourceApi.md#getPinCodeUsingGET) | **get** /api/pin-codes/{id} | getPinCode
[**updatePinCodeUsingPUT**](PinCodeResourceApi.md#updatePinCodeUsingPUT) | **put** /api/pin-codes | updatePinCode


# **createPinCodeUsingPOST**
> PinCodeDTO createPinCodeUsingPOST(pinCodeDTO)

createPinCode

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PinCodeResourceApi();
var pinCodeDTO = new PinCodeDTO(); // PinCodeDTO | pinCodeDTO

try { 
    var result = api_instance.createPinCodeUsingPOST(pinCodeDTO);
    print(result);
} catch (e) {
    print("Exception when calling PinCodeResourceApi->createPinCodeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pinCodeDTO** | [**PinCodeDTO**](PinCodeDTO.md)| pinCodeDTO | 

### Return type

[**PinCodeDTO**](PinCodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePinCodeUsingDELETE**
> deletePinCodeUsingDELETE(id)

deletePinCode

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PinCodeResourceApi();
var id = 789; // int | id

try { 
    api_instance.deletePinCodeUsingDELETE(id);
} catch (e) {
    print("Exception when calling PinCodeResourceApi->deletePinCodeUsingDELETE: $e\n");
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

# **getAllPinCodesUsingGET**
> List<PinCodeDTO> getAllPinCodesUsingGET(page, size, sort)

getAllPinCodes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PinCodeResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllPinCodesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling PinCodeResourceApi->getAllPinCodesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<PinCodeDTO>**](PinCodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPinCodeUsingGET**
> PinCodeDTO getPinCodeUsingGET(id)

getPinCode

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PinCodeResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getPinCodeUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling PinCodeResourceApi->getPinCodeUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**PinCodeDTO**](PinCodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePinCodeUsingPUT**
> PinCodeDTO updatePinCodeUsingPUT(pinCodeDTO)

updatePinCode

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PinCodeResourceApi();
var pinCodeDTO = new PinCodeDTO(); // PinCodeDTO | pinCodeDTO

try { 
    var result = api_instance.updatePinCodeUsingPUT(pinCodeDTO);
    print(result);
} catch (e) {
    print("Exception when calling PinCodeResourceApi->updatePinCodeUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pinCodeDTO** | [**PinCodeDTO**](PinCodeDTO.md)| pinCodeDTO | 

### Return type

[**PinCodeDTO**](PinCodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

