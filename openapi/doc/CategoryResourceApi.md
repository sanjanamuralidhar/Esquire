# openapi.api.CategoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCategoryUsingPOST**](CategoryResourceApi.md#createCategoryUsingPOST) | **post** /api/categories | createCategory
[**deleteCategoryUsingDELETE**](CategoryResourceApi.md#deleteCategoryUsingDELETE) | **delete** /api/categories/{id} | deleteCategory
[**getAllCategoriesUsingGET**](CategoryResourceApi.md#getAllCategoriesUsingGET) | **get** /api/categories | getAllCategories
[**getCategoryUsingGET**](CategoryResourceApi.md#getCategoryUsingGET) | **get** /api/categories/{id} | getCategory
[**updateCategoryUsingPUT**](CategoryResourceApi.md#updateCategoryUsingPUT) | **put** /api/categories | updateCategory


# **createCategoryUsingPOST**
> CategoryDTO createCategoryUsingPOST(categoryDTO)

createCategory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CategoryResourceApi();
var categoryDTO = new CategoryDTO(); // CategoryDTO | categoryDTO

try { 
    var result = api_instance.createCategoryUsingPOST(categoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling CategoryResourceApi->createCategoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryDTO** | [**CategoryDTO**](CategoryDTO.md)| categoryDTO | 

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategoryUsingDELETE**
> deleteCategoryUsingDELETE(id)

deleteCategory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CategoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCategoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling CategoryResourceApi->deleteCategoryUsingDELETE: $e\n");
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

# **getAllCategoriesUsingGET**
> List<CategoryDTO> getAllCategoriesUsingGET(page, size, sort)

getAllCategories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CategoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCategoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling CategoryResourceApi->getAllCategoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CategoryDTO>**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryUsingGET**
> CategoryDTO getCategoryUsingGET(id)

getCategory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CategoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCategoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CategoryResourceApi->getCategoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategoryUsingPUT**
> CategoryDTO updateCategoryUsingPUT(categoryDTO)

updateCategory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CategoryResourceApi();
var categoryDTO = new CategoryDTO(); // CategoryDTO | categoryDTO

try { 
    var result = api_instance.updateCategoryUsingPUT(categoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling CategoryResourceApi->updateCategoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryDTO** | [**CategoryDTO**](CategoryDTO.md)| categoryDTO | 

### Return type

[**CategoryDTO**](CategoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

