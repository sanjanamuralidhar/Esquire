# openapi.api.DistrictResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDistrictUsingPOST**](DistrictResourceApi.md#createDistrictUsingPOST) | **post** /api/districts | createDistrict
[**deleteDistrictUsingDELETE**](DistrictResourceApi.md#deleteDistrictUsingDELETE) | **delete** /api/districts/{id} | deleteDistrict
[**getAllDistrictsUsingGET**](DistrictResourceApi.md#getAllDistrictsUsingGET) | **get** /api/districts | getAllDistricts
[**getDistrictUsingGET**](DistrictResourceApi.md#getDistrictUsingGET) | **get** /api/districts/{id} | getDistrict
[**updateDistrictUsingPUT**](DistrictResourceApi.md#updateDistrictUsingPUT) | **put** /api/districts | updateDistrict


# **createDistrictUsingPOST**
> DistrictDTO createDistrictUsingPOST(districtDTO)

createDistrict

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DistrictResourceApi();
var districtDTO = new DistrictDTO(); // DistrictDTO | districtDTO

try { 
    var result = api_instance.createDistrictUsingPOST(districtDTO);
    print(result);
} catch (e) {
    print("Exception when calling DistrictResourceApi->createDistrictUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtDTO** | [**DistrictDTO**](DistrictDTO.md)| districtDTO | 

### Return type

[**DistrictDTO**](DistrictDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDistrictUsingDELETE**
> deleteDistrictUsingDELETE(id)

deleteDistrict

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DistrictResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteDistrictUsingDELETE(id);
} catch (e) {
    print("Exception when calling DistrictResourceApi->deleteDistrictUsingDELETE: $e\n");
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

# **getAllDistrictsUsingGET**
> List<DistrictDTO> getAllDistrictsUsingGET(page, size, sort)

getAllDistricts

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DistrictResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllDistrictsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling DistrictResourceApi->getAllDistrictsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<DistrictDTO>**](DistrictDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistrictUsingGET**
> DistrictDTO getDistrictUsingGET(id)

getDistrict

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DistrictResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getDistrictUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling DistrictResourceApi->getDistrictUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**DistrictDTO**](DistrictDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDistrictUsingPUT**
> DistrictDTO updateDistrictUsingPUT(districtDTO)

updateDistrict

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new DistrictResourceApi();
var districtDTO = new DistrictDTO(); // DistrictDTO | districtDTO

try { 
    var result = api_instance.updateDistrictUsingPUT(districtDTO);
    print(result);
} catch (e) {
    print("Exception when calling DistrictResourceApi->updateDistrictUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtDTO** | [**DistrictDTO**](DistrictDTO.md)| districtDTO | 

### Return type

[**DistrictDTO**](DistrictDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

