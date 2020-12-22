# openapi.api.AnswerResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAnswerUsingPOST**](AnswerResourceApi.md#createAnswerUsingPOST) | **post** /api/answers | createAnswer
[**deleteAnswerUsingDELETE**](AnswerResourceApi.md#deleteAnswerUsingDELETE) | **delete** /api/answers/{id} | deleteAnswer
[**getAllAnswersUsingGET**](AnswerResourceApi.md#getAllAnswersUsingGET) | **get** /api/answers | getAllAnswers
[**getAnswerUsingGET**](AnswerResourceApi.md#getAnswerUsingGET) | **get** /api/answers/{id} | getAnswer
[**updateAnswerUsingPUT**](AnswerResourceApi.md#updateAnswerUsingPUT) | **put** /api/answers | updateAnswer


# **createAnswerUsingPOST**
> AnswerDTO createAnswerUsingPOST(answerDTO)

createAnswer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AnswerResourceApi();
var answerDTO = new AnswerDTO(); // AnswerDTO | answerDTO

try { 
    var result = api_instance.createAnswerUsingPOST(answerDTO);
    print(result);
} catch (e) {
    print("Exception when calling AnswerResourceApi->createAnswerUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **answerDTO** | [**AnswerDTO**](AnswerDTO.md)| answerDTO | 

### Return type

[**AnswerDTO**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAnswerUsingDELETE**
> deleteAnswerUsingDELETE(id)

deleteAnswer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AnswerResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteAnswerUsingDELETE(id);
} catch (e) {
    print("Exception when calling AnswerResourceApi->deleteAnswerUsingDELETE: $e\n");
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

# **getAllAnswersUsingGET**
> List<AnswerDTO> getAllAnswersUsingGET(page, size, sort)

getAllAnswers

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AnswerResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllAnswersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AnswerResourceApi->getAllAnswersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<AnswerDTO>**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnswerUsingGET**
> AnswerDTO getAnswerUsingGET(id)

getAnswer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AnswerResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getAnswerUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AnswerResourceApi->getAnswerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**AnswerDTO**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAnswerUsingPUT**
> AnswerDTO updateAnswerUsingPUT(answerDTO)

updateAnswer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AnswerResourceApi();
var answerDTO = new AnswerDTO(); // AnswerDTO | answerDTO

try { 
    var result = api_instance.updateAnswerUsingPUT(answerDTO);
    print(result);
} catch (e) {
    print("Exception when calling AnswerResourceApi->updateAnswerUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **answerDTO** | [**AnswerDTO**](AnswerDTO.md)| answerDTO | 

### Return type

[**AnswerDTO**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

