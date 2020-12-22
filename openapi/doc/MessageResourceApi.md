# openapi.api.MessageResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMessageUsingPOST**](MessageResourceApi.md#createMessageUsingPOST) | **post** /api/messages | createMessage
[**deleteMessageUsingDELETE**](MessageResourceApi.md#deleteMessageUsingDELETE) | **delete** /api/messages/{id} | deleteMessage
[**getAllMessagesUsingGET**](MessageResourceApi.md#getAllMessagesUsingGET) | **get** /api/messages | getAllMessages
[**getMessageUsingGET**](MessageResourceApi.md#getMessageUsingGET) | **get** /api/messages/{id} | getMessage
[**updateMessageUsingPUT**](MessageResourceApi.md#updateMessageUsingPUT) | **put** /api/messages | updateMessage


# **createMessageUsingPOST**
> MessageDTO createMessageUsingPOST(messageDTO)

createMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new MessageResourceApi();
var messageDTO = new MessageDTO(); // MessageDTO | messageDTO

try { 
    var result = api_instance.createMessageUsingPOST(messageDTO);
    print(result);
} catch (e) {
    print("Exception when calling MessageResourceApi->createMessageUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDTO** | [**MessageDTO**](MessageDTO.md)| messageDTO | 

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessageUsingDELETE**
> deleteMessageUsingDELETE(id)

deleteMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new MessageResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteMessageUsingDELETE(id);
} catch (e) {
    print("Exception when calling MessageResourceApi->deleteMessageUsingDELETE: $e\n");
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

# **getAllMessagesUsingGET**
> List<MessageDTO> getAllMessagesUsingGET(page, size, sort)

getAllMessages

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new MessageResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllMessagesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling MessageResourceApi->getAllMessagesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<MessageDTO>**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageUsingGET**
> MessageDTO getMessageUsingGET(id)

getMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new MessageResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getMessageUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling MessageResourceApi->getMessageUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMessageUsingPUT**
> MessageDTO updateMessageUsingPUT(messageDTO)

updateMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new MessageResourceApi();
var messageDTO = new MessageDTO(); // MessageDTO | messageDTO

try { 
    var result = api_instance.updateMessageUsingPUT(messageDTO);
    print(result);
} catch (e) {
    print("Exception when calling MessageResourceApi->updateMessageUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageDTO** | [**MessageDTO**](MessageDTO.md)| messageDTO | 

### Return type

[**MessageDTO**](MessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

