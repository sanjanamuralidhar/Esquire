# openapi.api.BranchResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBranchUsingPOST**](BranchResourceApi.md#createBranchUsingPOST) | **post** /api/branches | createBranch
[**deleteBranchUsingDELETE**](BranchResourceApi.md#deleteBranchUsingDELETE) | **delete** /api/branches/{id} | deleteBranch
[**getAllBranchesUsingGET**](BranchResourceApi.md#getAllBranchesUsingGET) | **get** /api/branches | getAllBranches
[**getAllBranchesWithSectionsUsingGET**](BranchResourceApi.md#getAllBranchesWithSectionsUsingGET) | **get** /api/branches/service-sections | getAllBranchesWithSections
[**getAllBranchesWithServiceExecutivesUsingGET**](BranchResourceApi.md#getAllBranchesWithServiceExecutivesUsingGET) | **get** /api/branches/service-executives | getAllBranchesWithServiceExecutives
[**getBranchUsingGET**](BranchResourceApi.md#getBranchUsingGET) | **get** /api/branches/{id} | getBranch
[**updateBranchUsingPUT**](BranchResourceApi.md#updateBranchUsingPUT) | **put** /api/branches | updateBranch


# **createBranchUsingPOST**
> BranchDTO createBranchUsingPOST(branchDTO)

createBranch

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var branchDTO = new BranchDTO(); // BranchDTO | branchDTO

try { 
    var result = api_instance.createBranchUsingPOST(branchDTO);
    print(result);
} catch (e) {
    print("Exception when calling BranchResourceApi->createBranchUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchDTO** | [**BranchDTO**](BranchDTO.md)| branchDTO | 

### Return type

[**BranchDTO**](BranchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBranchUsingDELETE**
> deleteBranchUsingDELETE(id)

deleteBranch

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteBranchUsingDELETE(id);
} catch (e) {
    print("Exception when calling BranchResourceApi->deleteBranchUsingDELETE: $e\n");
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

# **getAllBranchesUsingGET**
> List<Branch> getAllBranchesUsingGET(page, size, sort)

getAllBranches

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllBranchesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling BranchResourceApi->getAllBranchesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Branch>**](Branch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBranchesWithSectionsUsingGET**
> List<Branch> getAllBranchesWithSectionsUsingGET(page, size, sort)

getAllBranchesWithSections

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllBranchesWithSectionsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling BranchResourceApi->getAllBranchesWithSectionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Branch>**](Branch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllBranchesWithServiceExecutivesUsingGET**
> List<Branch> getAllBranchesWithServiceExecutivesUsingGET(page, size, sort)

getAllBranchesWithServiceExecutives

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllBranchesWithServiceExecutivesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling BranchResourceApi->getAllBranchesWithServiceExecutivesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Branch>**](Branch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBranchUsingGET**
> BranchDTO getBranchUsingGET(id)

getBranch

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getBranchUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling BranchResourceApi->getBranchUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**BranchDTO**](BranchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBranchUsingPUT**
> BranchDTO updateBranchUsingPUT(branchDTO)

updateBranch

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new BranchResourceApi();
var branchDTO = new BranchDTO(); // BranchDTO | branchDTO

try { 
    var result = api_instance.updateBranchUsingPUT(branchDTO);
    print(result);
} catch (e) {
    print("Exception when calling BranchResourceApi->updateBranchUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchDTO** | [**BranchDTO**](BranchDTO.md)| branchDTO | 

### Return type

[**BranchDTO**](BranchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

