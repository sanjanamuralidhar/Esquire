# openapi.api.AmcResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAMCUsingPOST**](AmcResourceApi.md#createAMCUsingPOST) | **post** /api/amcs | createAMC
[**deleteAMCUsingDELETE**](AmcResourceApi.md#deleteAMCUsingDELETE) | **delete** /api/amcs/{id} | deleteAMC
[**getAMCUsingGET**](AmcResourceApi.md#getAMCUsingGET) | **get** /api/amcs/{id} | getAMC
[**getAllAMCSUsingGET**](AmcResourceApi.md#getAllAMCSUsingGET) | **get** /api/amcs | getAllAMCS
[**updateAMCUsingPUT**](AmcResourceApi.md#updateAMCUsingPUT) | **put** /api/amcs | updateAMC


# **createAMCUsingPOST**
> AMCDTO createAMCUsingPOST(aMCDTO)

createAMC

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcResourceApi();
var aMCDTO = new AMCDTO(); // AMCDTO | aMCDTO

try { 
    var result = api_instance.createAMCUsingPOST(aMCDTO);
    print(result);
} catch (e) {
    print("Exception when calling AmcResourceApi->createAMCUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aMCDTO** | [**AMCDTO**](AMCDTO.md)| aMCDTO | 

### Return type

[**AMCDTO**](AMCDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAMCUsingDELETE**
> deleteAMCUsingDELETE(id)

deleteAMC

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteAMCUsingDELETE(id);
} catch (e) {
    print("Exception when calling AmcResourceApi->deleteAMCUsingDELETE: $e\n");
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

# **getAMCUsingGET**
> AMCDTO getAMCUsingGET(id)

getAMC

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getAMCUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AmcResourceApi->getAMCUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**AMCDTO**](AMCDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAMCSUsingGET**
> List<AMCDTO> getAllAMCSUsingGET(page, size, sort)

getAllAMCS

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllAMCSUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AmcResourceApi->getAllAMCSUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<AMCDTO>**](AMCDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAMCUsingPUT**
> AMCDTO updateAMCUsingPUT(aMCDTO)

updateAMC

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AmcResourceApi();
var aMCDTO = new AMCDTO(); // AMCDTO | aMCDTO

try { 
    var result = api_instance.updateAMCUsingPUT(aMCDTO);
    print(result);
} catch (e) {
    print("Exception when calling AmcResourceApi->updateAMCUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aMCDTO** | [**AMCDTO**](AMCDTO.md)| aMCDTO | 

### Return type

[**AMCDTO**](AMCDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

