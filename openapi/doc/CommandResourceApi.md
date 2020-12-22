# openapi.api.CommandResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeTasksUsingPOST**](CommandResourceApi.md#completeTasksUsingPOST) | **post** /api/command/complete-tasks | completeTasks
[**completeTasksWithFormUsingPOST**](CommandResourceApi.md#completeTasksWithFormUsingPOST) | **post** /api/command/complete-tasks/form | completeTasksWithForm
[**createTicketHistoryUsingPOST**](CommandResourceApi.md#createTicketHistoryUsingPOST) | **post** /api/command/tickets/update-history | createTicketHistory
[**createTicketUsingPOST**](CommandResourceApi.md#createTicketUsingPOST) | **post** /api/command/tickets | createTicket
[**createTicketWithNewServedProductUsingPOST**](CommandResourceApi.md#createTicketWithNewServedProductUsingPOST) | **post** /api/command/tickets-with-served-product | createTicketWithNewServedProduct


# **completeTasksUsingPOST**
> ProcessInstanceResponse completeTasksUsingPOST(data)

completeTasks

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var data = new Object(); // Object | data

try { 
    var result = api_instance.completeTasksUsingPOST(data);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->completeTasksUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | **Object**| data | 

### Return type

[**ProcessInstanceResponse**](ProcessInstanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeTasksWithFormUsingPOST**
> ProcessInstanceResponse completeTasksWithFormUsingPOST(formData)

completeTasksWithForm

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var formData = new FormDataResponse(); // FormDataResponse | formData

try { 
    var result = api_instance.completeTasksWithFormUsingPOST(formData);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->completeTasksWithFormUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formData** | [**FormDataResponse**](FormDataResponse.md)| formData | 

### Return type

[**ProcessInstanceResponse**](ProcessInstanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTicketHistoryUsingPOST**
> TicketHistoryDTO createTicketHistoryUsingPOST(map)

createTicketHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var map = new Map&lt;String, String&gt;(); // Map<String, String> | map

try { 
    var result = api_instance.createTicketHistoryUsingPOST(map);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createTicketHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **map** | [**Map&lt;String, String&gt;**](String.md)| map | 

### Return type

[**TicketHistoryDTO**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTicketUsingPOST**
> TicketDTO createTicketUsingPOST(ticketDTO)

createTicket

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var ticketDTO = new TicketDTO(); // TicketDTO | ticketDTO

try { 
    var result = api_instance.createTicketUsingPOST(ticketDTO);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createTicketUsingPOST: $e\n");
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

# **createTicketWithNewServedProductUsingPOST**
> Ticket createTicketWithNewServedProductUsingPOST(ticket)

createTicketWithNewServedProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CommandResourceApi();
var ticket = new Ticket(); // Ticket | ticket

try { 
    var result = api_instance.createTicketWithNewServedProductUsingPOST(ticket);
    print(result);
} catch (e) {
    print("Exception when calling CommandResourceApi->createTicketWithNewServedProductUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket** | [**Ticket**](Ticket.md)| ticket | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

