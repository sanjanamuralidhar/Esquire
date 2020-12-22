# openapi.api.JobTypeResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobTypeUsingPOST**](JobTypeResourceApi.md#createJobTypeUsingPOST) | **post** /api/job-types | createJobType
[**deleteJobTypeUsingDELETE**](JobTypeResourceApi.md#deleteJobTypeUsingDELETE) | **delete** /api/job-types/{id} | deleteJobType
[**getAllJobTypesUsingGET**](JobTypeResourceApi.md#getAllJobTypesUsingGET) | **get** /api/job-types | getAllJobTypes
[**getJobTypeUsingGET**](JobTypeResourceApi.md#getJobTypeUsingGET) | **get** /api/job-types/{id} | getJobType
[**updateJobTypeUsingPUT**](JobTypeResourceApi.md#updateJobTypeUsingPUT) | **put** /api/job-types | updateJobType


# **createJobTypeUsingPOST**
> JobTypeDTO createJobTypeUsingPOST(jobTypeDTO)

createJobType

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobTypeResourceApi();
var jobTypeDTO = new JobTypeDTO(); // JobTypeDTO | jobTypeDTO

try { 
    var result = api_instance.createJobTypeUsingPOST(jobTypeDTO);
    print(result);
} catch (e) {
    print("Exception when calling JobTypeResourceApi->createJobTypeUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobTypeDTO** | [**JobTypeDTO**](JobTypeDTO.md)| jobTypeDTO | 

### Return type

[**JobTypeDTO**](JobTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJobTypeUsingDELETE**
> deleteJobTypeUsingDELETE(id)

deleteJobType

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobTypeResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteJobTypeUsingDELETE(id);
} catch (e) {
    print("Exception when calling JobTypeResourceApi->deleteJobTypeUsingDELETE: $e\n");
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

# **getAllJobTypesUsingGET**
> List<JobTypeDTO> getAllJobTypesUsingGET(page, size, sort)

getAllJobTypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobTypeResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllJobTypesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling JobTypeResourceApi->getAllJobTypesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<JobTypeDTO>**](JobTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobTypeUsingGET**
> JobTypeDTO getJobTypeUsingGET(id)

getJobType

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobTypeResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getJobTypeUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling JobTypeResourceApi->getJobTypeUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**JobTypeDTO**](JobTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJobTypeUsingPUT**
> JobTypeDTO updateJobTypeUsingPUT(jobTypeDTO)

updateJobType

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobTypeResourceApi();
var jobTypeDTO = new JobTypeDTO(); // JobTypeDTO | jobTypeDTO

try { 
    var result = api_instance.updateJobTypeUsingPUT(jobTypeDTO);
    print(result);
} catch (e) {
    print("Exception when calling JobTypeResourceApi->updateJobTypeUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobTypeDTO** | [**JobTypeDTO**](JobTypeDTO.md)| jobTypeDTO | 

### Return type

[**JobTypeDTO**](JobTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

