# openapi.api.ServedProductWarrantyResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServedProductWarrantyUsingPOST**](ServedProductWarrantyResourceApi.md#createServedProductWarrantyUsingPOST) | **post** /api/served-product-warranties | createServedProductWarranty
[**deleteServedProductWarrantyUsingDELETE**](ServedProductWarrantyResourceApi.md#deleteServedProductWarrantyUsingDELETE) | **delete** /api/served-product-warranties/{id} | deleteServedProductWarranty
[**getAllServedProductWarrantiesUsingGET**](ServedProductWarrantyResourceApi.md#getAllServedProductWarrantiesUsingGET) | **get** /api/served-product-warranties | getAllServedProductWarranties
[**getServedProductWarrantyUsingGET**](ServedProductWarrantyResourceApi.md#getServedProductWarrantyUsingGET) | **get** /api/served-product-warranties/{id} | getServedProductWarranty
[**updateServedProductWarrantyUsingPUT**](ServedProductWarrantyResourceApi.md#updateServedProductWarrantyUsingPUT) | **put** /api/served-product-warranties | updateServedProductWarranty


# **createServedProductWarrantyUsingPOST**
> ServedProductWarrantyDTO createServedProductWarrantyUsingPOST(servedProductWarrantyDTO)

createServedProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductWarrantyResourceApi();
var servedProductWarrantyDTO = new ServedProductWarrantyDTO(); // ServedProductWarrantyDTO | servedProductWarrantyDTO

try { 
    var result = api_instance.createServedProductWarrantyUsingPOST(servedProductWarrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductWarrantyResourceApi->createServedProductWarrantyUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servedProductWarrantyDTO** | [**ServedProductWarrantyDTO**](ServedProductWarrantyDTO.md)| servedProductWarrantyDTO | 

### Return type

[**ServedProductWarrantyDTO**](ServedProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServedProductWarrantyUsingDELETE**
> deleteServedProductWarrantyUsingDELETE(id)

deleteServedProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductWarrantyResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteServedProductWarrantyUsingDELETE(id);
} catch (e) {
    print("Exception when calling ServedProductWarrantyResourceApi->deleteServedProductWarrantyUsingDELETE: $e\n");
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

# **getAllServedProductWarrantiesUsingGET**
> List<ServedProductWarrantyDTO> getAllServedProductWarrantiesUsingGET(page, size, sort)

getAllServedProductWarranties

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductWarrantyResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServedProductWarrantiesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductWarrantyResourceApi->getAllServedProductWarrantiesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServedProductWarrantyDTO>**](ServedProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServedProductWarrantyUsingGET**
> ServedProductWarrantyDTO getServedProductWarrantyUsingGET(id)

getServedProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductWarrantyResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getServedProductWarrantyUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductWarrantyResourceApi->getServedProductWarrantyUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ServedProductWarrantyDTO**](ServedProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServedProductWarrantyUsingPUT**
> ServedProductWarrantyDTO updateServedProductWarrantyUsingPUT(servedProductWarrantyDTO)

updateServedProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductWarrantyResourceApi();
var servedProductWarrantyDTO = new ServedProductWarrantyDTO(); // ServedProductWarrantyDTO | servedProductWarrantyDTO

try { 
    var result = api_instance.updateServedProductWarrantyUsingPUT(servedProductWarrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductWarrantyResourceApi->updateServedProductWarrantyUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servedProductWarrantyDTO** | [**ServedProductWarrantyDTO**](ServedProductWarrantyDTO.md)| servedProductWarrantyDTO | 

### Return type

[**ServedProductWarrantyDTO**](ServedProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

