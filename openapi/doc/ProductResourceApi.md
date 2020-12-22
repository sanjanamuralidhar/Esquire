# openapi.api.ProductResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductUsingPOST**](ProductResourceApi.md#createProductUsingPOST) | **post** /api/products | createProduct
[**deleteProductUsingDELETE**](ProductResourceApi.md#deleteProductUsingDELETE) | **delete** /api/products/{id} | deleteProduct
[**getAllProductsByCategoryIdUsingGET**](ProductResourceApi.md#getAllProductsByCategoryIdUsingGET) | **get** /api/products/category/{categoryId} | getAllProductsByCategoryId
[**getAllProductsUsingGET**](ProductResourceApi.md#getAllProductsUsingGET) | **get** /api/products | getAllProducts
[**getProductUsingGET**](ProductResourceApi.md#getProductUsingGET) | **get** /api/products/{id} | getProduct
[**updateProductUsingPUT**](ProductResourceApi.md#updateProductUsingPUT) | **put** /api/products | updateProduct


# **createProductUsingPOST**
> ProductDTO createProductUsingPOST(productDTO)

createProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductResourceApi();
var productDTO = new ProductDTO(); // ProductDTO | productDTO

try { 
    var result = api_instance.createProductUsingPOST(productDTO);
    print(result);
} catch (e) {
    print("Exception when calling ProductResourceApi->createProductUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productDTO** | [**ProductDTO**](ProductDTO.md)| productDTO | 

### Return type

[**ProductDTO**](ProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductUsingDELETE**
> deleteProductUsingDELETE(id)

deleteProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteProductUsingDELETE(id);
} catch (e) {
    print("Exception when calling ProductResourceApi->deleteProductUsingDELETE: $e\n");
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

# **getAllProductsByCategoryIdUsingGET**
> List<Product> getAllProductsByCategoryIdUsingGET(categoryId, page, size, sort)

getAllProductsByCategoryId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductResourceApi();
var categoryId = 789; // int | categoryId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllProductsByCategoryIdUsingGET(categoryId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ProductResourceApi->getAllProductsByCategoryIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| categoryId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Product>**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProductsUsingGET**
> List<Product> getAllProductsUsingGET(page, size, sort)

getAllProducts

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllProductsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ProductResourceApi->getAllProductsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Product>**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductUsingGET**
> ProductDTO getProductUsingGET(id)

getProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getProductUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ProductResourceApi->getProductUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ProductDTO**](ProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductUsingPUT**
> ProductDTO updateProductUsingPUT(productDTO)

updateProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ProductResourceApi();
var productDTO = new ProductDTO(); // ProductDTO | productDTO

try { 
    var result = api_instance.updateProductUsingPUT(productDTO);
    print(result);
} catch (e) {
    print("Exception when calling ProductResourceApi->updateProductUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productDTO** | [**ProductDTO**](ProductDTO.md)| productDTO | 

### Return type

[**ProductDTO**](ProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

