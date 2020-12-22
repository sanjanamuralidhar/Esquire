# openapi.api.ExtendedWarrantyResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExtendedWarrantyUsingPOST**](ExtendedWarrantyResourceApi.md#createExtendedWarrantyUsingPOST) | **post** /api/extended-warranties | createExtendedWarranty
[**deleteExtendedWarrantyUsingDELETE**](ExtendedWarrantyResourceApi.md#deleteExtendedWarrantyUsingDELETE) | **delete** /api/extended-warranties/{id} | deleteExtendedWarranty
[**getAllExtendedWarrantiesUsingGET**](ExtendedWarrantyResourceApi.md#getAllExtendedWarrantiesUsingGET) | **get** /api/extended-warranties | getAllExtendedWarranties
[**getExtendedWarrantyUsingGET**](ExtendedWarrantyResourceApi.md#getExtendedWarrantyUsingGET) | **get** /api/extended-warranties/{id} | getExtendedWarranty
[**updateExtendedWarrantyUsingPUT**](ExtendedWarrantyResourceApi.md#updateExtendedWarrantyUsingPUT) | **put** /api/extended-warranties | updateExtendedWarranty


# **createExtendedWarrantyUsingPOST**
> ExtendedWarrantyDTO createExtendedWarrantyUsingPOST(extendedWarrantyDTO)

createExtendedWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyResourceApi();
var extendedWarrantyDTO = new ExtendedWarrantyDTO(); // ExtendedWarrantyDTO | extendedWarrantyDTO

try { 
    var result = api_instance.createExtendedWarrantyUsingPOST(extendedWarrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyResourceApi->createExtendedWarrantyUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extendedWarrantyDTO** | [**ExtendedWarrantyDTO**](ExtendedWarrantyDTO.md)| extendedWarrantyDTO | 

### Return type

[**ExtendedWarrantyDTO**](ExtendedWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteExtendedWarrantyUsingDELETE**
> deleteExtendedWarrantyUsingDELETE(id)

deleteExtendedWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteExtendedWarrantyUsingDELETE(id);
} catch (e) {
    print("Exception when calling ExtendedWarrantyResourceApi->deleteExtendedWarrantyUsingDELETE: $e\n");
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

# **getAllExtendedWarrantiesUsingGET**
> List<ExtendedWarrantyDTO> getAllExtendedWarrantiesUsingGET(page, size, sort)

getAllExtendedWarranties

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllExtendedWarrantiesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyResourceApi->getAllExtendedWarrantiesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ExtendedWarrantyDTO>**](ExtendedWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtendedWarrantyUsingGET**
> ExtendedWarrantyDTO getExtendedWarrantyUsingGET(id)

getExtendedWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getExtendedWarrantyUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyResourceApi->getExtendedWarrantyUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ExtendedWarrantyDTO**](ExtendedWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateExtendedWarrantyUsingPUT**
> ExtendedWarrantyDTO updateExtendedWarrantyUsingPUT(extendedWarrantyDTO)

updateExtendedWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyResourceApi();
var extendedWarrantyDTO = new ExtendedWarrantyDTO(); // ExtendedWarrantyDTO | extendedWarrantyDTO

try { 
    var result = api_instance.updateExtendedWarrantyUsingPUT(extendedWarrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyResourceApi->updateExtendedWarrantyUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extendedWarrantyDTO** | [**ExtendedWarrantyDTO**](ExtendedWarrantyDTO.md)| extendedWarrantyDTO | 

### Return type

[**ExtendedWarrantyDTO**](ExtendedWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

