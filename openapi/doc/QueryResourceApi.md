# openapi.api.QueryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExecutionVariablesUsingGET**](QueryResourceApi.md#getExecutionVariablesUsingGET) | **get** /api/query/executions/variables | getExecutionVariables
[**getFormDataVariablesUsingGET**](QueryResourceApi.md#getFormDataVariablesUsingGET) | **get** /api/query/forms/variables | getFormDataVariables
[**getTaskVariablesUsingGET**](QueryResourceApi.md#getTaskVariablesUsingGET) | **get** /api/query/tasks/variables | getTaskVariables
[**getTasksUsingGET**](QueryResourceApi.md#getTasksUsingGET) | **get** /api/query/tasks | getTasks


# **getExecutionVariablesUsingGET**
> List<RestVariable> getExecutionVariablesUsingGET(executionId)

getExecutionVariables

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var executionId = executionId_example; // String | executionId

try { 
    var result = api_instance.getExecutionVariablesUsingGET(executionId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getExecutionVariablesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executionId** | **String**| executionId | [default to null]

### Return type

[**List<RestVariable>**](RestVariable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormDataVariablesUsingGET**
> FormDataResponse getFormDataVariablesUsingGET(taskId)

getFormDataVariables

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var taskId = taskId_example; // String | taskId

try { 
    var result = api_instance.getFormDataVariablesUsingGET(taskId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getFormDataVariablesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| taskId | [default to null]

### Return type

[**FormDataResponse**](FormDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaskVariablesUsingGET**
> List<RestVariable> getTaskVariablesUsingGET(taskId)

getTaskVariables

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var taskId = taskId_example; // String | taskId

try { 
    var result = api_instance.getTaskVariablesUsingGET(taskId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getTaskVariablesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| taskId | [default to null]

### Return type

[**List<RestVariable>**](RestVariable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTasksUsingGET**
> DataResponse getTasksUsingGET(candidateGroup, trackingId)

getTasks

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new QueryResourceApi();
var candidateGroup = candidateGroup_example; // String | candidateGroup
var trackingId = trackingId_example; // String | trackingId

try { 
    var result = api_instance.getTasksUsingGET(candidateGroup, trackingId);
    print(result);
} catch (e) {
    print("Exception when calling QueryResourceApi->getTasksUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **candidateGroup** | **String**| candidateGroup | [optional] [default to null]
 **trackingId** | **String**| trackingId | [optional] [default to null]

### Return type

[**DataResponse**](DataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

