# openapi.api.PromotionalMessageResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPromotionalMessageUsingPOST**](PromotionalMessageResourceApi.md#createPromotionalMessageUsingPOST) | **post** /api/promotional-messages | createPromotionalMessage
[**deletePromotionalMessageUsingDELETE**](PromotionalMessageResourceApi.md#deletePromotionalMessageUsingDELETE) | **delete** /api/promotional-messages/{id} | deletePromotionalMessage
[**getAllPromotionalMessagesUsingGET**](PromotionalMessageResourceApi.md#getAllPromotionalMessagesUsingGET) | **get** /api/promotional-messages | getAllPromotionalMessages
[**getPromotionalMessageUsingGET**](PromotionalMessageResourceApi.md#getPromotionalMessageUsingGET) | **get** /api/promotional-messages/{id} | getPromotionalMessage
[**updatePromotionalMessageUsingPUT**](PromotionalMessageResourceApi.md#updatePromotionalMessageUsingPUT) | **put** /api/promotional-messages | updatePromotionalMessage
[**viewPromotionalMessageUsingGET**](PromotionalMessageResourceApi.md#viewPromotionalMessageUsingGET) | **get** /api/promotional-messages/view/{id} | viewPromotionalMessage


# **createPromotionalMessageUsingPOST**
> PromotionalMessageDTO createPromotionalMessageUsingPOST(promotionalMessageDTO)

createPromotionalMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PromotionalMessageResourceApi();
var promotionalMessageDTO = new PromotionalMessageDTO(); // PromotionalMessageDTO | promotionalMessageDTO

try { 
    var result = api_instance.createPromotionalMessageUsingPOST(promotionalMessageDTO);
    print(result);
} catch (e) {
    print("Exception when calling PromotionalMessageResourceApi->createPromotionalMessageUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **promotionalMessageDTO** | [**PromotionalMessageDTO**](PromotionalMessageDTO.md)| promotionalMessageDTO | 

### Return type

[**PromotionalMessageDTO**](PromotionalMessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePromotionalMessageUsingDELETE**
> deletePromotionalMessageUsingDELETE(id)

deletePromotionalMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PromotionalMessageResourceApi();
var id = 789; // int | id

try { 
    api_instance.deletePromotionalMessageUsingDELETE(id);
} catch (e) {
    print("Exception when calling PromotionalMessageResourceApi->deletePromotionalMessageUsingDELETE: $e\n");
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

# **getAllPromotionalMessagesUsingGET**
> List<PromotionalMessageDTO> getAllPromotionalMessagesUsingGET(page, size, sort)

getAllPromotionalMessages

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PromotionalMessageResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllPromotionalMessagesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling PromotionalMessageResourceApi->getAllPromotionalMessagesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<PromotionalMessageDTO>**](PromotionalMessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPromotionalMessageUsingGET**
> PromotionalMessageDTO getPromotionalMessageUsingGET(id)

getPromotionalMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PromotionalMessageResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getPromotionalMessageUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling PromotionalMessageResourceApi->getPromotionalMessageUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**PromotionalMessageDTO**](PromotionalMessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePromotionalMessageUsingPUT**
> PromotionalMessageDTO updatePromotionalMessageUsingPUT(promotionalMessageDTO)

updatePromotionalMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PromotionalMessageResourceApi();
var promotionalMessageDTO = new PromotionalMessageDTO(); // PromotionalMessageDTO | promotionalMessageDTO

try { 
    var result = api_instance.updatePromotionalMessageUsingPUT(promotionalMessageDTO);
    print(result);
} catch (e) {
    print("Exception when calling PromotionalMessageResourceApi->updatePromotionalMessageUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **promotionalMessageDTO** | [**PromotionalMessageDTO**](PromotionalMessageDTO.md)| promotionalMessageDTO | 

### Return type

[**PromotionalMessageDTO**](PromotionalMessageDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewPromotionalMessageUsingGET**
> PromotionalMessage viewPromotionalMessageUsingGET(id)

viewPromotionalMessage

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new PromotionalMessageResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.viewPromotionalMessageUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling PromotionalMessageResourceApi->viewPromotionalMessageUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**PromotionalMessage**](PromotionalMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

