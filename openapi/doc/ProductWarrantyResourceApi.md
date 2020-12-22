# openapi.api.ProductWarrantyResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductWarrantyUsingPOST**](ProductWarrantyResourceApi.md#createProductWarrantyUsingPOST) | **post** /api/product-warranties | createProductWarranty
[**deleteProductWarrantyUsingDELETE**](ProductWarrantyResourceApi.md#deleteProductWarrantyUsingDELETE) | **delete** /api/product-warranties/{id} | deleteProductWarranty
[**getAllEnumWarrantyTypesUsingGET**](ProductWarrantyResourceApi.md#getAllEnumWarrantyTypesUsingGET) | **get** /api/enums/warranty-types | getAllEnumWarrantyTypes
[**getAllProductWarrantiesUsingGET**](ProductWarrantyResourceApi.md#getAllProductWarrantiesUsingGET) | **get** /api/product-warranties | getAllProductWarranties
[**getProductWarrantyUsingGET**](ProductWarrantyResourceApi.md#getProductWarrantyUsingGET) | **get** /api/product-warranties/{id} | getProductWarranty
[**updateProductWarrantyUsingPUT**](ProductWarrantyResourceApi.md#updateProductWarrantyUsingPUT) | **put** /api/product-warranties | updateProductWarranty


# **createProductWarrantyUsingPOST**
> ProductWarrantyDTO createProductWarrantyUsingPOST(productWarrantyDTO)

createProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductWarrantyResourceApi();
var productWarrantyDTO = new ProductWarrantyDTO(); // ProductWarrantyDTO | productWarrantyDTO

try { 
    var result = api_instance.createProductWarrantyUsingPOST(productWarrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling ProductWarrantyResourceApi->createProductWarrantyUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productWarrantyDTO** | [**ProductWarrantyDTO**](ProductWarrantyDTO.md)| productWarrantyDTO | 

### Return type

[**ProductWarrantyDTO**](ProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductWarrantyUsingDELETE**
> deleteProductWarrantyUsingDELETE(id)

deleteProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductWarrantyResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteProductWarrantyUsingDELETE(id);
} catch (e) {
    print("Exception when calling ProductWarrantyResourceApi->deleteProductWarrantyUsingDELETE: $e\n");
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

# **getAllEnumWarrantyTypesUsingGET**
> List<String> getAllEnumWarrantyTypesUsingGET(page, size, sort)

getAllEnumWarrantyTypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductWarrantyResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumWarrantyTypesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ProductWarrantyResourceApi->getAllEnumWarrantyTypesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProductWarrantiesUsingGET**
> List<ProductWarrantyDTO> getAllProductWarrantiesUsingGET(page, size, sort)

getAllProductWarranties

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductWarrantyResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllProductWarrantiesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ProductWarrantyResourceApi->getAllProductWarrantiesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ProductWarrantyDTO>**](ProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductWarrantyUsingGET**
> ProductWarrantyDTO getProductWarrantyUsingGET(id)

getProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductWarrantyResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getProductWarrantyUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ProductWarrantyResourceApi->getProductWarrantyUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ProductWarrantyDTO**](ProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductWarrantyUsingPUT**
> ProductWarrantyDTO updateProductWarrantyUsingPUT(productWarrantyDTO)

updateProductWarranty

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductWarrantyResourceApi();
var productWarrantyDTO = new ProductWarrantyDTO(); // ProductWarrantyDTO | productWarrantyDTO

try { 
    var result = api_instance.updateProductWarrantyUsingPUT(productWarrantyDTO);
    print(result);
} catch (e) {
    print("Exception when calling ProductWarrantyResourceApi->updateProductWarrantyUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productWarrantyDTO** | [**ProductWarrantyDTO**](ProductWarrantyDTO.md)| productWarrantyDTO | 

### Return type

[**ProductWarrantyDTO**](ProductWarrantyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

