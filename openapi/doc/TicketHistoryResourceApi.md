# openapi.api.TicketHistoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTicketHistoryUsingPOST1**](TicketHistoryResourceApi.md#createTicketHistoryUsingPOST1) | **post** /api/ticket-histories | createTicketHistory
[**deleteTicketHistoryUsingDELETE**](TicketHistoryResourceApi.md#deleteTicketHistoryUsingDELETE) | **delete** /api/ticket-histories/{id} | deleteTicketHistory
[**getAllEnumTicketStatusUsingGET**](TicketHistoryResourceApi.md#getAllEnumTicketStatusUsingGET) | **get** /api/enums/ticket-status | getAllEnumTicketStatus
[**getAllEnumTicketVerifiedStatusUsingGET**](TicketHistoryResourceApi.md#getAllEnumTicketVerifiedStatusUsingGET) | **get** /api/enums/ticket-verified-status | getAllEnumTicketVerifiedStatus
[**getAllTicketHistoriesUsingGET**](TicketHistoryResourceApi.md#getAllTicketHistoriesUsingGET) | **get** /api/ticket-histories | getAllTicketHistories
[**getTicketHistoriesByProductIdUsingGET**](TicketHistoryResourceApi.md#getTicketHistoriesByProductIdUsingGET) | **get** /api/ticket-histories/products/{productId} | getTicketHistoriesByProductId
[**getTicketHistoryUsingGET**](TicketHistoryResourceApi.md#getTicketHistoryUsingGET) | **get** /api/ticket-histories/{id} | getTicketHistory
[**updateTicketHistoryUsingPUT**](TicketHistoryResourceApi.md#updateTicketHistoryUsingPUT) | **put** /api/ticket-histories | updateTicketHistory


# **createTicketHistoryUsingPOST1**
> TicketHistoryDTO createTicketHistoryUsingPOST1(ticketHistoryDTO)

createTicketHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var ticketHistoryDTO = new TicketHistoryDTO(); // TicketHistoryDTO | ticketHistoryDTO

try { 
    var result = api_instance.createTicketHistoryUsingPOST1(ticketHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->createTicketHistoryUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketHistoryDTO** | [**TicketHistoryDTO**](TicketHistoryDTO.md)| ticketHistoryDTO | 

### Return type

[**TicketHistoryDTO**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketHistoryUsingDELETE**
> deleteTicketHistoryUsingDELETE(id)

deleteTicketHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteTicketHistoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->deleteTicketHistoryUsingDELETE: $e\n");
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

# **getAllEnumTicketStatusUsingGET**
> List<String> getAllEnumTicketStatusUsingGET(page, size, sort)

getAllEnumTicketStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumTicketStatusUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->getAllEnumTicketStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEnumTicketVerifiedStatusUsingGET**
> List<String> getAllEnumTicketVerifiedStatusUsingGET(page, size, sort)

getAllEnumTicketVerifiedStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumTicketVerifiedStatusUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->getAllEnumTicketVerifiedStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketHistoriesUsingGET**
> List<TicketHistoryDTO> getAllTicketHistoriesUsingGET(page, size, sort)

getAllTicketHistories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketHistoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->getAllTicketHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<TicketHistoryDTO>**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketHistoriesByProductIdUsingGET**
> List<TicketHistoryDTO> getTicketHistoriesByProductIdUsingGET(productId, page, size, sort)

getTicketHistoriesByProductId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var productId = 789; // int | productId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getTicketHistoriesByProductIdUsingGET(productId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->getTicketHistoriesByProductIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **int**| productId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<TicketHistoryDTO>**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketHistoryUsingGET**
> TicketHistoryDTO getTicketHistoryUsingGET(id)

getTicketHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getTicketHistoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->getTicketHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**TicketHistoryDTO**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketHistoryUsingPUT**
> TicketHistoryDTO updateTicketHistoryUsingPUT(ticketHistoryDTO)

updateTicketHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketHistoryResourceApi();
var ticketHistoryDTO = new TicketHistoryDTO(); // TicketHistoryDTO | ticketHistoryDTO

try { 
    var result = api_instance.updateTicketHistoryUsingPUT(ticketHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling TicketHistoryResourceApi->updateTicketHistoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketHistoryDTO** | [**TicketHistoryDTO**](TicketHistoryDTO.md)| ticketHistoryDTO | 

### Return type

[**TicketHistoryDTO**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

