# openapi.api.ChatResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChatUsingPOST**](ChatResourceApi.md#createChatUsingPOST) | **post** /api/chats | createChat
[**deleteChatUsingDELETE**](ChatResourceApi.md#deleteChatUsingDELETE) | **delete** /api/chats/{id} | deleteChat
[**getAllChatsUsingGET**](ChatResourceApi.md#getAllChatsUsingGET) | **get** /api/chats | getAllChats
[**getChatUsingGET**](ChatResourceApi.md#getChatUsingGET) | **get** /api/chats/{id} | getChat
[**updateChatUsingPUT**](ChatResourceApi.md#updateChatUsingPUT) | **put** /api/chats | updateChat


# **createChatUsingPOST**
> ChatDTO createChatUsingPOST(chatDTO)

createChat

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ChatResourceApi();
var chatDTO = new ChatDTO(); // ChatDTO | chatDTO

try { 
    var result = api_instance.createChatUsingPOST(chatDTO);
    print(result);
} catch (e) {
    print("Exception when calling ChatResourceApi->createChatUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatDTO** | [**ChatDTO**](ChatDTO.md)| chatDTO | 

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteChatUsingDELETE**
> deleteChatUsingDELETE(id)

deleteChat

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ChatResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteChatUsingDELETE(id);
} catch (e) {
    print("Exception when calling ChatResourceApi->deleteChatUsingDELETE: $e\n");
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

# **getAllChatsUsingGET**
> List<ChatDTO> getAllChatsUsingGET(page, size, sort)

getAllChats

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ChatResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllChatsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ChatResourceApi->getAllChatsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ChatDTO>**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChatUsingGET**
> ChatDTO getChatUsingGET(id)

getChat

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ChatResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getChatUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ChatResourceApi->getChatUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateChatUsingPUT**
> ChatDTO updateChatUsingPUT(chatDTO)

updateChat

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ChatResourceApi();
var chatDTO = new ChatDTO(); // ChatDTO | chatDTO

try { 
    var result = api_instance.updateChatUsingPUT(chatDTO);
    print(result);
} catch (e) {
    print("Exception when calling ChatResourceApi->updateChatUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatDTO** | [**ChatDTO**](ChatDTO.md)| chatDTO | 

### Return type

[**ChatDTO**](ChatDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

