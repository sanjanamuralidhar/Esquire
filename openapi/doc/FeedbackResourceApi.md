# openapi.api.FeedbackResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFeedbackUsingPOST**](FeedbackResourceApi.md#createFeedbackUsingPOST) | **post** /api/feedbacks | createFeedback
[**deleteFeedbackUsingDELETE**](FeedbackResourceApi.md#deleteFeedbackUsingDELETE) | **delete** /api/feedbacks/{id} | deleteFeedback
[**getAllFeedbacksUsingGET**](FeedbackResourceApi.md#getAllFeedbacksUsingGET) | **get** /api/feedbacks | getAllFeedbacks
[**getFeedbackUsingGET**](FeedbackResourceApi.md#getFeedbackUsingGET) | **get** /api/feedbacks/{id} | getFeedback
[**updateFeedbackUsingPUT**](FeedbackResourceApi.md#updateFeedbackUsingPUT) | **put** /api/feedbacks | updateFeedback


# **createFeedbackUsingPOST**
> FeedbackDTO createFeedbackUsingPOST(feedbackDTO)

createFeedback

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new FeedbackResourceApi();
var feedbackDTO = new FeedbackDTO(); // FeedbackDTO | feedbackDTO

try { 
    var result = api_instance.createFeedbackUsingPOST(feedbackDTO);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackResourceApi->createFeedbackUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackDTO** | [**FeedbackDTO**](FeedbackDTO.md)| feedbackDTO | 

### Return type

[**FeedbackDTO**](FeedbackDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFeedbackUsingDELETE**
> deleteFeedbackUsingDELETE(id)

deleteFeedback

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new FeedbackResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteFeedbackUsingDELETE(id);
} catch (e) {
    print("Exception when calling FeedbackResourceApi->deleteFeedbackUsingDELETE: $e\n");
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

# **getAllFeedbacksUsingGET**
> List<FeedbackDTO> getAllFeedbacksUsingGET(filter, page, size, sort)

getAllFeedbacks

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new FeedbackResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllFeedbacksUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackResourceApi->getAllFeedbacksUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| filter | [optional] [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<FeedbackDTO>**](FeedbackDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedbackUsingGET**
> FeedbackDTO getFeedbackUsingGET(id)

getFeedback

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new FeedbackResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getFeedbackUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackResourceApi->getFeedbackUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**FeedbackDTO**](FeedbackDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFeedbackUsingPUT**
> FeedbackDTO updateFeedbackUsingPUT(feedbackDTO)

updateFeedback

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new FeedbackResourceApi();
var feedbackDTO = new FeedbackDTO(); // FeedbackDTO | feedbackDTO

try { 
    var result = api_instance.updateFeedbackUsingPUT(feedbackDTO);
    print(result);
} catch (e) {
    print("Exception when calling FeedbackResourceApi->updateFeedbackUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackDTO** | [**FeedbackDTO**](FeedbackDTO.md)| feedbackDTO | 

### Return type

[**FeedbackDTO**](FeedbackDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

