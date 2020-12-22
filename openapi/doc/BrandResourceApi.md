# openapi.api.BrandResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBrandUsingPOST**](BrandResourceApi.md#createBrandUsingPOST) | **post** /api/brands | createBrand
[**deleteBrandUsingDELETE**](BrandResourceApi.md#deleteBrandUsingDELETE) | **delete** /api/brands/{id} | deleteBrand
[**getAllBrandsUsingGET**](BrandResourceApi.md#getAllBrandsUsingGET) | **get** /api/brands | getAllBrands
[**getBrandUsingGET**](BrandResourceApi.md#getBrandUsingGET) | **get** /api/brands/{id} | getBrand
[**updateBrandUsingPUT**](BrandResourceApi.md#updateBrandUsingPUT) | **put** /api/brands | updateBrand


# **createBrandUsingPOST**
> BrandDTO createBrandUsingPOST(brandDTO)

createBrand

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BrandResourceApi();
var brandDTO = new BrandDTO(); // BrandDTO | brandDTO

try { 
    var result = api_instance.createBrandUsingPOST(brandDTO);
    print(result);
} catch (e) {
    print("Exception when calling BrandResourceApi->createBrandUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandDTO** | [**BrandDTO**](BrandDTO.md)| brandDTO | 

### Return type

[**BrandDTO**](BrandDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBrandUsingDELETE**
> deleteBrandUsingDELETE(id)

deleteBrand

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BrandResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteBrandUsingDELETE(id);
} catch (e) {
    print("Exception when calling BrandResourceApi->deleteBrandUsingDELETE: $e\n");
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

# **getAllBrandsUsingGET**
> List<BrandDTO> getAllBrandsUsingGET(page, size, sort)

getAllBrands

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BrandResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllBrandsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling BrandResourceApi->getAllBrandsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<BrandDTO>**](BrandDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBrandUsingGET**
> BrandDTO getBrandUsingGET(id)

getBrand

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BrandResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getBrandUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling BrandResourceApi->getBrandUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**BrandDTO**](BrandDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBrandUsingPUT**
> BrandDTO updateBrandUsingPUT(brandDTO)

updateBrand

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BrandResourceApi();
var brandDTO = new BrandDTO(); // BrandDTO | brandDTO

try { 
    var result = api_instance.updateBrandUsingPUT(brandDTO);
    print(result);
} catch (e) {
    print("Exception when calling BrandResourceApi->updateBrandUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **brandDTO** | [**BrandDTO**](BrandDTO.md)| brandDTO | 

### Return type

[**BrandDTO**](BrandDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

