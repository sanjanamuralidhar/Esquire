# openapi.api.WarrantyHistoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarrantyHistoryUsingPOST**](WarrantyHistoryResourceApi.md#createWarrantyHistoryUsingPOST) | **post** /api/warranty-histories | createWarrantyHistory
[**deleteWarrantyHistoryUsingDELETE**](WarrantyHistoryResourceApi.md#deleteWarrantyHistoryUsingDELETE) | **delete** /api/warranty-histories/{id} | deleteWarrantyHistory
[**getAllWarrantyHistoriesUsingGET**](WarrantyHistoryResourceApi.md#getAllWarrantyHistoriesUsingGET) | **get** /api/warranty-histories | getAllWarrantyHistories
[**getWarrantyHistoryUsingGET**](WarrantyHistoryResourceApi.md#getWarrantyHistoryUsingGET) | **get** /api/warranty-histories/{id} | getWarrantyHistory
[**updateWarrantyHistoryUsingPUT**](WarrantyHistoryResourceApi.md#updateWarrantyHistoryUsingPUT) | **put** /api/warranty-histories | updateWarrantyHistory


# **createWarrantyHistoryUsingPOST**
> WarrantyHistoryDTO createWarrantyHistoryUsingPOST(warrantyHistoryDTO)

createWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyHistoryResourceApi();
var warrantyHistoryDTO = new WarrantyHistoryDTO(); // WarrantyHistoryDTO | warrantyHistoryDTO

try { 
    var result = api_instance.createWarrantyHistoryUsingPOST(warrantyHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyHistoryResourceApi->createWarrantyHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warrantyHistoryDTO** | [**WarrantyHistoryDTO**](WarrantyHistoryDTO.md)| warrantyHistoryDTO | 

### Return type

[**WarrantyHistoryDTO**](WarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWarrantyHistoryUsingDELETE**
> deleteWarrantyHistoryUsingDELETE(id)

deleteWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyHistoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteWarrantyHistoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling WarrantyHistoryResourceApi->deleteWarrantyHistoryUsingDELETE: $e\n");
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

# **getAllWarrantyHistoriesUsingGET**
> List<WarrantyHistoryDTO> getAllWarrantyHistoriesUsingGET(page, size, sort)

getAllWarrantyHistories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllWarrantyHistoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyHistoryResourceApi->getAllWarrantyHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<WarrantyHistoryDTO>**](WarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWarrantyHistoryUsingGET**
> WarrantyHistoryDTO getWarrantyHistoryUsingGET(id)

getWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getWarrantyHistoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyHistoryResourceApi->getWarrantyHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**WarrantyHistoryDTO**](WarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWarrantyHistoryUsingPUT**
> WarrantyHistoryDTO updateWarrantyHistoryUsingPUT(warrantyHistoryDTO)

updateWarrantyHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyHistoryResourceApi();
var warrantyHistoryDTO = new WarrantyHistoryDTO(); // WarrantyHistoryDTO | warrantyHistoryDTO

try { 
    var result = api_instance.updateWarrantyHistoryUsingPUT(warrantyHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyHistoryResourceApi->updateWarrantyHistoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warrantyHistoryDTO** | [**WarrantyHistoryDTO**](WarrantyHistoryDTO.md)| warrantyHistoryDTO | 

### Return type

[**WarrantyHistoryDTO**](WarrantyHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

