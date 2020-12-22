# openapi.api.JobResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobUsingPOST**](JobResourceApi.md#createJobUsingPOST) | **post** /api/jobs | createJob
[**deleteJobUsingDELETE**](JobResourceApi.md#deleteJobUsingDELETE) | **delete** /api/jobs/{id} | deleteJob
[**getAllJobsUsingGET**](JobResourceApi.md#getAllJobsUsingGET) | **get** /api/jobs | getAllJobs
[**getJobUsingGET**](JobResourceApi.md#getJobUsingGET) | **get** /api/jobs/{id} | getJob
[**updateJobUsingPUT**](JobResourceApi.md#updateJobUsingPUT) | **put** /api/jobs | updateJob


# **createJobUsingPOST**
> JobDTO createJobUsingPOST(jobDTO)

createJob

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobResourceApi();
var jobDTO = new JobDTO(); // JobDTO | jobDTO

try { 
    var result = api_instance.createJobUsingPOST(jobDTO);
    print(result);
} catch (e) {
    print("Exception when calling JobResourceApi->createJobUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobDTO** | [**JobDTO**](JobDTO.md)| jobDTO | 

### Return type

[**JobDTO**](JobDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJobUsingDELETE**
> deleteJobUsingDELETE(id)

deleteJob

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteJobUsingDELETE(id);
} catch (e) {
    print("Exception when calling JobResourceApi->deleteJobUsingDELETE: $e\n");
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

# **getAllJobsUsingGET**
> List<JobDTO> getAllJobsUsingGET(page, size, sort)

getAllJobs

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllJobsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling JobResourceApi->getAllJobsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<JobDTO>**](JobDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobUsingGET**
> JobDTO getJobUsingGET(id)

getJob

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getJobUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling JobResourceApi->getJobUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**JobDTO**](JobDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJobUsingPUT**
> JobDTO updateJobUsingPUT(jobDTO)

updateJob

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobResourceApi();
var jobDTO = new JobDTO(); // JobDTO | jobDTO

try { 
    var result = api_instance.updateJobUsingPUT(jobDTO);
    print(result);
} catch (e) {
    print("Exception when calling JobResourceApi->updateJobUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobDTO** | [**JobDTO**](JobDTO.md)| jobDTO | 

### Return type

[**JobDTO**](JobDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

