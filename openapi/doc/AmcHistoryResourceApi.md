# openapi.api.AmcHistoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAMCHistoryUsingPOST**](AmcHistoryResourceApi.md#createAMCHistoryUsingPOST) | **post** /api/amc-histories | createAMCHistory
[**deleteAMCHistoryUsingDELETE**](AmcHistoryResourceApi.md#deleteAMCHistoryUsingDELETE) | **delete** /api/amc-histories/{id} | deleteAMCHistory
[**getAMCHistoryUsingGET**](AmcHistoryResourceApi.md#getAMCHistoryUsingGET) | **get** /api/amc-histories/{id} | getAMCHistory
[**getAllAMCHistoriesUsingGET**](AmcHistoryResourceApi.md#getAllAMCHistoriesUsingGET) | **get** /api/amc-histories | getAllAMCHistories
[**updateAMCHistoryUsingPUT**](AmcHistoryResourceApi.md#updateAMCHistoryUsingPUT) | **put** /api/amc-histories | updateAMCHistory


# **createAMCHistoryUsingPOST**
> AMCHistoryDTO createAMCHistoryUsingPOST(aMCHistoryDTO)

createAMCHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcHistoryResourceApi();
var aMCHistoryDTO = new AMCHistoryDTO(); // AMCHistoryDTO | aMCHistoryDTO

try { 
    var result = api_instance.createAMCHistoryUsingPOST(aMCHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling AmcHistoryResourceApi->createAMCHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aMCHistoryDTO** | [**AMCHistoryDTO**](AMCHistoryDTO.md)| aMCHistoryDTO | 

### Return type

[**AMCHistoryDTO**](AMCHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAMCHistoryUsingDELETE**
> deleteAMCHistoryUsingDELETE(id)

deleteAMCHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcHistoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteAMCHistoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling AmcHistoryResourceApi->deleteAMCHistoryUsingDELETE: $e\n");
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

# **getAMCHistoryUsingGET**
> AMCHistoryDTO getAMCHistoryUsingGET(id)

getAMCHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getAMCHistoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AmcHistoryResourceApi->getAMCHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**AMCHistoryDTO**](AMCHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAMCHistoriesUsingGET**
> List<AMCHistoryDTO> getAllAMCHistoriesUsingGET(page, size, sort)

getAllAMCHistories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllAMCHistoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AmcHistoryResourceApi->getAllAMCHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<AMCHistoryDTO>**](AMCHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAMCHistoryUsingPUT**
> AMCHistoryDTO updateAMCHistoryUsingPUT(aMCHistoryDTO)

updateAMCHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcHistoryResourceApi();
var aMCHistoryDTO = new AMCHistoryDTO(); // AMCHistoryDTO | aMCHistoryDTO

try { 
    var result = api_instance.updateAMCHistoryUsingPUT(aMCHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling AmcHistoryResourceApi->updateAMCHistoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aMCHistoryDTO** | [**AMCHistoryDTO**](AMCHistoryDTO.md)| aMCHistoryDTO | 

### Return type

[**AMCHistoryDTO**](AMCHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

