# openapi.api.WarrantyResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWarrantyUsingPOST**](WarrantyResourceApi.md#createWarrantyUsingPOST) | **post** /api/warranties | createWarranty
[**deleteWarrantyUsingDELETE**](WarrantyResourceApi.md#deleteWarrantyUsingDELETE) | **delete** /api/warranties/{id} | deleteWarranty
[**getAllWarrantiesUsingGET**](WarrantyResourceApi.md#getAllWarrantiesUsingGET) | **get** /api/warranties | getAllWarranties
[**getWarrantyUsingGET**](WarrantyResourceApi.md#getWarrantyUsingGET) | **get** /api/warranties/{id} | getWarranty
[**updateWarrantyUsingPUT**](WarrantyResourceApi.md#updateWarrantyUsingPUT) | **put** /api/warranties | updateWarranty


# **createWarrantyUsingPOST**
> WarrantyDTO createWarrantyUsingPOST(warrantyDTO)

createWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyResourceApi();
var warrantyDTO = new WarrantyDTO(); // WarrantyDTO | warrantyDTO

try { 
    var result = api_instance.createWarrantyUsingPOST(warrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyResourceApi->createWarrantyUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warrantyDTO** | [**WarrantyDTO**](WarrantyDTO.md)| warrantyDTO | 

### Return type

[**WarrantyDTO**](WarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWarrantyUsingDELETE**
> deleteWarrantyUsingDELETE(id)

deleteWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteWarrantyUsingDELETE(id);
} catch (e) {
    print("Exception when calling WarrantyResourceApi->deleteWarrantyUsingDELETE: $e\n");
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

# **getAllWarrantiesUsingGET**
> List<WarrantyDTO> getAllWarrantiesUsingGET(page, size, sort)

getAllWarranties

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllWarrantiesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyResourceApi->getAllWarrantiesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<WarrantyDTO>**](WarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWarrantyUsingGET**
> WarrantyDTO getWarrantyUsingGET(id)

getWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getWarrantyUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyResourceApi->getWarrantyUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**WarrantyDTO**](WarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWarrantyUsingPUT**
> WarrantyDTO updateWarrantyUsingPUT(warrantyDTO)

updateWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new WarrantyResourceApi();
var warrantyDTO = new WarrantyDTO(); // WarrantyDTO | warrantyDTO

try { 
    var result = api_instance.updateWarrantyUsingPUT(warrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling WarrantyResourceApi->updateWarrantyUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warrantyDTO** | [**WarrantyDTO**](WarrantyDTO.md)| warrantyDTO | 

### Return type

[**WarrantyDTO**](WarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

