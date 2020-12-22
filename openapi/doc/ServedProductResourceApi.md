# openapi.api.ServedProductResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServedProductUsingPOST**](ServedProductResourceApi.md#createServedProductUsingPOST) | **post** /api/served-products | createServedProduct
[**deleteServedProductUsingDELETE**](ServedProductResourceApi.md#deleteServedProductUsingDELETE) | **delete** /api/served-products/{id} | deleteServedProduct
[**getAllEnumServiceTypesUsingGET**](ServedProductResourceApi.md#getAllEnumServiceTypesUsingGET) | **get** /api/enums/service-types | getAllEnumServiceTypes
[**getAllServedProductByCustomerIdUsingGET**](ServedProductResourceApi.md#getAllServedProductByCustomerIdUsingGET) | **get** /api/served-products/customer/{customerId} | getAllServedProductByCustomerId
[**getAllServedProductsUsingGET**](ServedProductResourceApi.md#getAllServedProductsUsingGET) | **get** /api/served-products | getAllServedProducts
[**getServedProductUsingGET**](ServedProductResourceApi.md#getServedProductUsingGET) | **get** /api/served-products/{id} | getServedProduct
[**updateServedProductUsingPUT**](ServedProductResourceApi.md#updateServedProductUsingPUT) | **put** /api/served-products | updateServedProduct


# **createServedProductUsingPOST**
> ServedProductDTO createServedProductUsingPOST(servedProductDTO)

createServedProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var servedProductDTO = new ServedProductDTO(); // ServedProductDTO | servedProductDTO

try { 
    var result = api_instance.createServedProductUsingPOST(servedProductDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->createServedProductUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servedProductDTO** | [**ServedProductDTO**](ServedProductDTO.md)| servedProductDTO | 

### Return type

[**ServedProductDTO**](ServedProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServedProductUsingDELETE**
> deleteServedProductUsingDELETE(id)

deleteServedProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteServedProductUsingDELETE(id);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->deleteServedProductUsingDELETE: $e\n");
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

# **getAllEnumServiceTypesUsingGET**
> List<String> getAllEnumServiceTypesUsingGET(page, size, sort)

getAllEnumServiceTypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumServiceTypesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->getAllEnumServiceTypesUsingGET: $e\n");
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

# **getAllServedProductByCustomerIdUsingGET**
> List<ServedProduct> getAllServedProductByCustomerIdUsingGET(customerId, page, size, sort)

getAllServedProductByCustomerId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var customerId = 789; // int | customerId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServedProductByCustomerIdUsingGET(customerId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->getAllServedProductByCustomerIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| customerId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServedProduct>**](ServedProduct.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllServedProductsUsingGET**
> List<ServedProductDTO> getAllServedProductsUsingGET(page, size, sort)

getAllServedProducts

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServedProductsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->getAllServedProductsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServedProductDTO>**](ServedProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServedProductUsingGET**
> ServedProductDTO getServedProductUsingGET(id)

getServedProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getServedProductUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->getServedProductUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ServedProductDTO**](ServedProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServedProductUsingPUT**
> ServedProductDTO updateServedProductUsingPUT(servedProductDTO)

updateServedProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServedProductResourceApi();
var servedProductDTO = new ServedProductDTO(); // ServedProductDTO | servedProductDTO

try { 
    var result = api_instance.updateServedProductUsingPUT(servedProductDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServedProductResourceApi->updateServedProductUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servedProductDTO** | [**ServedProductDTO**](ServedProductDTO.md)| servedProductDTO | 

### Return type

[**ServedProductDTO**](ServedProductDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

