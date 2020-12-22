# openapi.api.StateResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStateUsingPOST**](StateResourceApi.md#createStateUsingPOST) | **post** /api/states | createState
[**deleteStateUsingDELETE**](StateResourceApi.md#deleteStateUsingDELETE) | **delete** /api/states/{id} | deleteState
[**getAllStatesUsingGET**](StateResourceApi.md#getAllStatesUsingGET) | **get** /api/states | getAllStates
[**getStateUsingGET**](StateResourceApi.md#getStateUsingGET) | **get** /api/states/{id} | getState
[**updateStateUsingPUT**](StateResourceApi.md#updateStateUsingPUT) | **put** /api/states | updateState


# **createStateUsingPOST**
> StateDTO createStateUsingPOST(stateDTO)

createState

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StateResourceApi();
var stateDTO = new StateDTO(); // StateDTO | stateDTO

try { 
    var result = api_instance.createStateUsingPOST(stateDTO);
    print(result);
} catch (e) {
    print("Exception when calling StateResourceApi->createStateUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stateDTO** | [**StateDTO**](StateDTO.md)| stateDTO | 

### Return type

[**StateDTO**](StateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStateUsingDELETE**
> deleteStateUsingDELETE(id)

deleteState

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StateResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteStateUsingDELETE(id);
} catch (e) {
    print("Exception when calling StateResourceApi->deleteStateUsingDELETE: $e\n");
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

# **getAllStatesUsingGET**
> List<StateDTO> getAllStatesUsingGET(page, size, sort)

getAllStates

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StateResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllStatesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling StateResourceApi->getAllStatesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<StateDTO>**](StateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStateUsingGET**
> StateDTO getStateUsingGET(id)

getState

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StateResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getStateUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StateResourceApi->getStateUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**StateDTO**](StateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStateUsingPUT**
> StateDTO updateStateUsingPUT(stateDTO)

updateState

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StateResourceApi();
var stateDTO = new StateDTO(); // StateDTO | stateDTO

try { 
    var result = api_instance.updateStateUsingPUT(stateDTO);
    print(result);
} catch (e) {
    print("Exception when calling StateResourceApi->updateStateUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stateDTO** | [**StateDTO**](StateDTO.md)| stateDTO | 

### Return type

[**StateDTO**](StateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

