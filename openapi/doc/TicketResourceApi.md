# openapi.api.TicketResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTicketUsingDELETE**](TicketResourceApi.md#deleteTicketUsingDELETE) | **delete** /api/tickets/{id} | deleteTicket
[**getAllEnumTimeLabelsUsingGET**](TicketResourceApi.md#getAllEnumTimeLabelsUsingGET) | **get** /api/enums/time-labels | getAllEnumTimeLabels
[**getAllTicketsByBranchIdAndServiceStatusAndSectionTypeUsingGET**](TicketResourceApi.md#getAllTicketsByBranchIdAndServiceStatusAndSectionTypeUsingGET) | **get** /api/tickets/onsite/{branchId}/{status}/{inhouse} | getAllTicketsByBranchIdAndServiceStatusAndSectionType
[**getAllTicketsByBranchIdAndServiceStatusUsingGET**](TicketResourceApi.md#getAllTicketsByBranchIdAndServiceStatusUsingGET) | **get** /api/tickets/branches/{branchId}/{serviceStatus} | getAllTicketsByBranchIdAndServiceStatus
[**getAllTicketsByCustomerIdUsingGET**](TicketResourceApi.md#getAllTicketsByCustomerIdUsingGET) | **get** /api/tickets/customer/{customerId} | getAllTicketsByCustomerId
[**getAllTicketsBySectionIdAndServiceStatusUsingGET**](TicketResourceApi.md#getAllTicketsBySectionIdAndServiceStatusUsingGET) | **get** /api/tickets/sections/{sectionId}/{serviceStatus} | getAllTicketsBySectionIdAndServiceStatus
[**getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET**](TicketResourceApi.md#getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET) | **get** /api/tickets/{serviceExecutiveId}/{serviceStatus} | getAllTicketsByServiceExecutiveIdAndServiceStatus
[**getAllTicketsUsingGET**](TicketResourceApi.md#getAllTicketsUsingGET) | **get** /api/tickets | getAllTickets
[**getServiceTicketByProductIdUsingGET**](TicketResourceApi.md#getServiceTicketByProductIdUsingGET) | **get** /api/tickets/servedProducts/{productId} | getServiceTicketByProductId
[**getTicketUsingGET**](TicketResourceApi.md#getTicketUsingGET) | **get** /api/tickets/{id} | getTicket
[**getTicketWithDetailByIdUsingGET**](TicketResourceApi.md#getTicketWithDetailByIdUsingGET) | **get** /api/tickets/detail/{id} | getTicketWithDetailById
[**updateTicketUsingPUT**](TicketResourceApi.md#updateTicketUsingPUT) | **put** /api/tickets | updateTicket


# **deleteTicketUsingDELETE**
> deleteTicketUsingDELETE(id)

deleteTicket

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteTicketUsingDELETE(id);
} catch (e) {
    print("Exception when calling TicketResourceApi->deleteTicketUsingDELETE: $e\n");
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

# **getAllEnumTimeLabelsUsingGET**
> List<String> getAllEnumTimeLabelsUsingGET(page, size, sort)

getAllEnumTimeLabels

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumTimeLabelsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllEnumTimeLabelsUsingGET: $e\n");
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

# **getAllTicketsByBranchIdAndServiceStatusAndSectionTypeUsingGET**
> List<Ticket> getAllTicketsByBranchIdAndServiceStatusAndSectionTypeUsingGET(branchId, inhouse, status, page, size, sort)

getAllTicketsByBranchIdAndServiceStatusAndSectionType

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var branchId = 789; // int | branchId
var inhouse = true; // bool | inhouse
var status = status_example; // String | status
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsByBranchIdAndServiceStatusAndSectionTypeUsingGET(branchId, inhouse, status, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllTicketsByBranchIdAndServiceStatusAndSectionTypeUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchId** | **int**| branchId | [default to null]
 **inhouse** | **bool**| inhouse | [default to null]
 **status** | **String**| status | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Ticket>**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketsByBranchIdAndServiceStatusUsingGET**
> List<Ticket> getAllTicketsByBranchIdAndServiceStatusUsingGET(branchId, serviceStatus, page, size, sort)

getAllTicketsByBranchIdAndServiceStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var branchId = 789; // int | branchId
var serviceStatus = serviceStatus_example; // String | serviceStatus
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsByBranchIdAndServiceStatusUsingGET(branchId, serviceStatus, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllTicketsByBranchIdAndServiceStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchId** | **int**| branchId | [default to null]
 **serviceStatus** | **String**| serviceStatus | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Ticket>**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketsByCustomerIdUsingGET**
> List<Ticket> getAllTicketsByCustomerIdUsingGET(customerId, page, size, sort)

getAllTicketsByCustomerId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var customerId = 789; // int | customerId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsByCustomerIdUsingGET(customerId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllTicketsByCustomerIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| customerId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Ticket>**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketsBySectionIdAndServiceStatusUsingGET**
> List<Ticket> getAllTicketsBySectionIdAndServiceStatusUsingGET(sectionId, serviceStatus, page, size, sort)

getAllTicketsBySectionIdAndServiceStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var sectionId = 789; // int | sectionId
var serviceStatus = serviceStatus_example; // String | serviceStatus
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsBySectionIdAndServiceStatusUsingGET(sectionId, serviceStatus, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllTicketsBySectionIdAndServiceStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sectionId** | **int**| sectionId | [default to null]
 **serviceStatus** | **String**| serviceStatus | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Ticket>**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET**
> List<Ticket> getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET(serviceExecutiveId, serviceStatus, page, size, sort)

getAllTicketsByServiceExecutiveIdAndServiceStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var serviceExecutiveId = 789; // int | serviceExecutiveId
var serviceStatus = serviceStatus_example; // String | serviceStatus
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET(serviceExecutiveId, serviceStatus, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllTicketsByServiceExecutiveIdAndServiceStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceExecutiveId** | **int**| serviceExecutiveId | [default to null]
 **serviceStatus** | **String**| serviceStatus | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Ticket>**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketsUsingGET**
> List<TicketDTO> getAllTicketsUsingGET(page, size, sort)

getAllTickets

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getAllTicketsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<TicketDTO>**](TicketDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceTicketByProductIdUsingGET**
> Ticket getServiceTicketByProductIdUsingGET(productId)

getServiceTicketByProductId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var productId = 789; // int | productId

try { 
    var result = api_instance.getServiceTicketByProductIdUsingGET(productId);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getServiceTicketByProductIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **int**| productId | [default to null]

### Return type

[**Ticket**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketUsingGET**
> TicketDTO getTicketUsingGET(id)

getTicket

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getTicketUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getTicketUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**TicketDTO**](TicketDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketWithDetailByIdUsingGET**
> Ticket getTicketWithDetailByIdUsingGET(id)

getTicketWithDetailById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getTicketWithDetailByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->getTicketWithDetailByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**Ticket**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketUsingPUT**
> TicketDTO updateTicketUsingPUT(ticketDTO)

updateTicket

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new TicketResourceApi();
var ticketDTO = new TicketDTO(); // TicketDTO | ticketDTO

try { 
    var result = api_instance.updateTicketUsingPUT(ticketDTO);
    print(result);
} catch (e) {
    print("Exception when calling TicketResourceApi->updateTicketUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketDTO** | [**TicketDTO**](TicketDTO.md)| ticketDTO | 

### Return type

[**TicketDTO**](TicketDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

