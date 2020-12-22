# openapi.api.SafetyTipResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSafetyTipUsingPOST**](SafetyTipResourceApi.md#createSafetyTipUsingPOST) | **post** /api/safety-tips | createSafetyTip
[**deleteSafetyTipUsingDELETE**](SafetyTipResourceApi.md#deleteSafetyTipUsingDELETE) | **delete** /api/safety-tips/{id} | deleteSafetyTip
[**getAllSafetyTipsUsingGET**](SafetyTipResourceApi.md#getAllSafetyTipsUsingGET) | **get** /api/safety-tips | getAllSafetyTips
[**getSafetyTipUsingGET**](SafetyTipResourceApi.md#getSafetyTipUsingGET) | **get** /api/safety-tips/{id} | getSafetyTip
[**updateSafetyTipUsingPUT**](SafetyTipResourceApi.md#updateSafetyTipUsingPUT) | **put** /api/safety-tips | updateSafetyTip


# **createSafetyTipUsingPOST**
> SafetyTipDTO createSafetyTipUsingPOST(safetyTipDTO)

createSafetyTip

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new SafetyTipResourceApi();
var safetyTipDTO = new SafetyTipDTO(); // SafetyTipDTO | safetyTipDTO

try { 
    var result = api_instance.createSafetyTipUsingPOST(safetyTipDTO);
    print(result);
} catch (e) {
    print("Exception when calling SafetyTipResourceApi->createSafetyTipUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **safetyTipDTO** | [**SafetyTipDTO**](SafetyTipDTO.md)| safetyTipDTO | 

### Return type

[**SafetyTipDTO**](SafetyTipDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSafetyTipUsingDELETE**
> deleteSafetyTipUsingDELETE(id)

deleteSafetyTip

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new SafetyTipResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteSafetyTipUsingDELETE(id);
} catch (e) {
    print("Exception when calling SafetyTipResourceApi->deleteSafetyTipUsingDELETE: $e\n");
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

# **getAllSafetyTipsUsingGET**
> List<SafetyTipDTO> getAllSafetyTipsUsingGET(page, size, sort)

getAllSafetyTips

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new SafetyTipResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllSafetyTipsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling SafetyTipResourceApi->getAllSafetyTipsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<SafetyTipDTO>**](SafetyTipDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSafetyTipUsingGET**
> SafetyTipDTO getSafetyTipUsingGET(id)

getSafetyTip

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new SafetyTipResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getSafetyTipUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling SafetyTipResourceApi->getSafetyTipUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**SafetyTipDTO**](SafetyTipDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSafetyTipUsingPUT**
> SafetyTipDTO updateSafetyTipUsingPUT(safetyTipDTO)

updateSafetyTip

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new SafetyTipResourceApi();
var safetyTipDTO = new SafetyTipDTO(); // SafetyTipDTO | safetyTipDTO

try { 
    var result = api_instance.updateSafetyTipUsingPUT(safetyTipDTO);
    print(result);
} catch (e) {
    print("Exception when calling SafetyTipResourceApi->updateSafetyTipUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **safetyTipDTO** | [**SafetyTipDTO**](SafetyTipDTO.md)| safetyTipDTO | 

### Return type

[**SafetyTipDTO**](SafetyTipDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

