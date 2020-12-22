# openapi.api.ExtendedWarrantyHistoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExtendedWarrantyHistoryUsingPOST**](ExtendedWarrantyHistoryResourceApi.md#createExtendedWarrantyHistoryUsingPOST) | **post** /api/extended-warranty-histories | createExtendedWarrantyHistory
[**deleteExtendedWarrantyHistoryUsingDELETE**](ExtendedWarrantyHistoryResourceApi.md#deleteExtendedWarrantyHistoryUsingDELETE) | **delete** /api/extended-warranty-histories/{id} | deleteExtendedWarrantyHistory
[**getAllExtendedWarrantyHistoriesUsingGET**](ExtendedWarrantyHistoryResourceApi.md#getAllExtendedWarrantyHistoriesUsingGET) | **get** /api/extended-warranty-histories | getAllExtendedWarrantyHistories
[**getExtendedWarrantyHistoryUsingGET**](ExtendedWarrantyHistoryResourceApi.md#getExtendedWarrantyHistoryUsingGET) | **get** /api/extended-warranty-histories/{id} | getExtendedWarrantyHistory
[**updateExtendedWarrantyHistoryUsingPUT**](ExtendedWarrantyHistoryResourceApi.md#updateExtendedWarrantyHistoryUsingPUT) | **put** /api/extended-warranty-histories | updateExtendedWarrantyHistory


# **createExtendedWarrantyHistoryUsingPOST**
> ExtendedWarrantyHistoryDTO createExtendedWarrantyHistoryUsingPOST(extendedWarrantyHistoryDTO)

createExtendedWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyHistoryResourceApi();
var extendedWarrantyHistoryDTO = new ExtendedWarrantyHistoryDTO(); // ExtendedWarrantyHistoryDTO | extendedWarrantyHistoryDTO

try { 
    var result = api_instance.createExtendedWarrantyHistoryUsingPOST(extendedWarrantyHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyHistoryResourceApi->createExtendedWarrantyHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extendedWarrantyHistoryDTO** | [**ExtendedWarrantyHistoryDTO**](ExtendedWarrantyHistoryDTO.md)| extendedWarrantyHistoryDTO | 

### Return type

[**ExtendedWarrantyHistoryDTO**](ExtendedWarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteExtendedWarrantyHistoryUsingDELETE**
> deleteExtendedWarrantyHistoryUsingDELETE(id)

deleteExtendedWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyHistoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteExtendedWarrantyHistoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling ExtendedWarrantyHistoryResourceApi->deleteExtendedWarrantyHistoryUsingDELETE: $e\n");
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

# **getAllExtendedWarrantyHistoriesUsingGET**
> List<ExtendedWarrantyHistoryDTO> getAllExtendedWarrantyHistoriesUsingGET(page, size, sort)

getAllExtendedWarrantyHistories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllExtendedWarrantyHistoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyHistoryResourceApi->getAllExtendedWarrantyHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ExtendedWarrantyHistoryDTO>**](ExtendedWarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtendedWarrantyHistoryUsingGET**
> ExtendedWarrantyHistoryDTO getExtendedWarrantyHistoryUsingGET(id)

getExtendedWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getExtendedWarrantyHistoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyHistoryResourceApi->getExtendedWarrantyHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ExtendedWarrantyHistoryDTO**](ExtendedWarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateExtendedWarrantyHistoryUsingPUT**
> ExtendedWarrantyHistoryDTO updateExtendedWarrantyHistoryUsingPUT(extendedWarrantyHistoryDTO)

updateExtendedWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ExtendedWarrantyHistoryResourceApi();
var extendedWarrantyHistoryDTO = new ExtendedWarrantyHistoryDTO(); // ExtendedWarrantyHistoryDTO | extendedWarrantyHistoryDTO

try { 
    var result = api_instance.updateExtendedWarrantyHistoryUsingPUT(extendedWarrantyHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling ExtendedWarrantyHistoryResourceApi->updateExtendedWarrantyHistoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extendedWarrantyHistoryDTO** | [**ExtendedWarrantyHistoryDTO**](ExtendedWarrantyHistoryDTO.md)| extendedWarrantyHistoryDTO | 

### Return type

[**ExtendedWarrantyHistoryDTO**](ExtendedWarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

