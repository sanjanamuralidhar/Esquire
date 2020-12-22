# openapi.api.JobHistoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobHistoryUsingPOST**](JobHistoryResourceApi.md#createJobHistoryUsingPOST) | **post** /api/job-histories | createJobHistory
[**deleteJobHistoryUsingDELETE**](JobHistoryResourceApi.md#deleteJobHistoryUsingDELETE) | **delete** /api/job-histories/{id} | deleteJobHistory
[**getAllJobHistoriesUsingGET**](JobHistoryResourceApi.md#getAllJobHistoriesUsingGET) | **get** /api/job-histories | getAllJobHistories
[**getJobHistoryUsingGET**](JobHistoryResourceApi.md#getJobHistoryUsingGET) | **get** /api/job-histories/{id} | getJobHistory
[**updateJobHistoryUsingPUT**](JobHistoryResourceApi.md#updateJobHistoryUsingPUT) | **put** /api/job-histories | updateJobHistory


# **createJobHistoryUsingPOST**
> JobHistoryDTO createJobHistoryUsingPOST(jobHistoryDTO)

createJobHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobHistoryResourceApi();
var jobHistoryDTO = new JobHistoryDTO(); // JobHistoryDTO | jobHistoryDTO

try { 
    var result = api_instance.createJobHistoryUsingPOST(jobHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling JobHistoryResourceApi->createJobHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobHistoryDTO** | [**JobHistoryDTO**](JobHistoryDTO.md)| jobHistoryDTO | 

### Return type

[**JobHistoryDTO**](JobHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJobHistoryUsingDELETE**
> deleteJobHistoryUsingDELETE(id)

deleteJobHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobHistoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteJobHistoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling JobHistoryResourceApi->deleteJobHistoryUsingDELETE: $e\n");
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

# **getAllJobHistoriesUsingGET**
> List<JobHistoryDTO> getAllJobHistoriesUsingGET(page, size, sort)

getAllJobHistories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllJobHistoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling JobHistoryResourceApi->getAllJobHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<JobHistoryDTO>**](JobHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobHistoryUsingGET**
> JobHistoryDTO getJobHistoryUsingGET(id)

getJobHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getJobHistoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling JobHistoryResourceApi->getJobHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**JobHistoryDTO**](JobHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJobHistoryUsingPUT**
> JobHistoryDTO updateJobHistoryUsingPUT(jobHistoryDTO)

updateJobHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new JobHistoryResourceApi();
var jobHistoryDTO = new JobHistoryDTO(); // JobHistoryDTO | jobHistoryDTO

try { 
    var result = api_instance.updateJobHistoryUsingPUT(jobHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling JobHistoryResourceApi->updateJobHistoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobHistoryDTO** | [**JobHistoryDTO**](JobHistoryDTO.md)| jobHistoryDTO | 

### Return type

[**JobHistoryDTO**](JobHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

