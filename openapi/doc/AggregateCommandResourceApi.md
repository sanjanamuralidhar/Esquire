# openapi.api.AggregateCommandResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeTicketUsingPUT**](AggregateCommandResourceApi.md#closeTicketUsingPUT) | **put** /api/command/closeTicket | CloseTicket
[**createServiceTicketUsingPOST**](AggregateCommandResourceApi.md#createServiceTicketUsingPOST) | **post** /api/command/createServiceTicket | createServiceTicket


# **closeTicketUsingPUT**
> TicketHistoryDTO closeTicketUsingPUT(ticketDTO)

CloseTicket

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateCommandResourceApi();
var ticketDTO = new TicketDTO(); // TicketDTO | ticketDTO

try { 
    var result = api_instance.closeTicketUsingPUT(ticketDTO);
    print(result);
} catch (e) {
    print("Exception when calling AggregateCommandResourceApi->closeTicketUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketDTO** | [**TicketDTO**](TicketDTO.md)| ticketDTO | 

### Return type

[**TicketHistoryDTO**](TicketHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createServiceTicketUsingPOST**
> int createServiceTicketUsingPOST(serviceTicketAggregate, page, size, sort)

createServiceTicket

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateCommandResourceApi();
var serviceTicketAggregate = new ServiceTicketAggregate(); // ServiceTicketAggregate | serviceTicketAggregate
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.createServiceTicketUsingPOST(serviceTicketAggregate, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateCommandResourceApi->createServiceTicketUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceTicketAggregate** | [**ServiceTicketAggregate**](ServiceTicketAggregate.md)| serviceTicketAggregate | 
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

