# openapi.api.StandbyProductResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStandbyProductUsingPOST**](StandbyProductResourceApi.md#createStandbyProductUsingPOST) | **post** /api/standby-products | createStandbyProduct
[**deleteStandbyProductUsingDELETE**](StandbyProductResourceApi.md#deleteStandbyProductUsingDELETE) | **delete** /api/standby-products/{id} | deleteStandbyProduct
[**getAllStandbyProductsUsingGET**](StandbyProductResourceApi.md#getAllStandbyProductsUsingGET) | **get** /api/standby-products | getAllStandbyProducts
[**getStandbyProductUsingGET**](StandbyProductResourceApi.md#getStandbyProductUsingGET) | **get** /api/standby-products/{id} | getStandbyProduct
[**updateStandbyProductUsingPUT**](StandbyProductResourceApi.md#updateStandbyProductUsingPUT) | **put** /api/standby-products | updateStandbyProduct


# **createStandbyProductUsingPOST**
> StandbyProductDTO createStandbyProductUsingPOST(standbyProductDTO)

createStandbyProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StandbyProductResourceApi();
var standbyProductDTO = new StandbyProductDTO(); // StandbyProductDTO | standbyProductDTO

try { 
    var result = api_instance.createStandbyProductUsingPOST(standbyProductDTO);
    print(result);
} catch (e) {
    print("Exception when calling StandbyProductResourceApi->createStandbyProductUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **standbyProductDTO** | [**StandbyProductDTO**](StandbyProductDTO.md)| standbyProductDTO | 

### Return type

[**StandbyProductDTO**](StandbyProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStandbyProductUsingDELETE**
> deleteStandbyProductUsingDELETE(id)

deleteStandbyProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StandbyProductResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteStandbyProductUsingDELETE(id);
} catch (e) {
    print("Exception when calling StandbyProductResourceApi->deleteStandbyProductUsingDELETE: $e\n");
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

# **getAllStandbyProductsUsingGET**
> List<StandbyProductDTO> getAllStandbyProductsUsingGET(filter, page, size, sort)

getAllStandbyProducts

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StandbyProductResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllStandbyProductsUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling StandbyProductResourceApi->getAllStandbyProductsUsingGET: $e\n");
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

[**List<StandbyProductDTO>**](StandbyProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStandbyProductUsingGET**
> StandbyProductDTO getStandbyProductUsingGET(id)

getStandbyProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StandbyProductResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getStandbyProductUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling StandbyProductResourceApi->getStandbyProductUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**StandbyProductDTO**](StandbyProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStandbyProductUsingPUT**
> StandbyProductDTO updateStandbyProductUsingPUT(standbyProductDTO)

updateStandbyProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new StandbyProductResourceApi();
var standbyProductDTO = new StandbyProductDTO(); // StandbyProductDTO | standbyProductDTO

try { 
    var result = api_instance.updateStandbyProductUsingPUT(standbyProductDTO);
    print(result);
} catch (e) {
    print("Exception when calling StandbyProductResourceApi->updateStandbyProductUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **standbyProductDTO** | [**StandbyProductDTO**](StandbyProductDTO.md)| standbyProductDTO | 

### Return type

[**StandbyProductDTO**](StandbyProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

