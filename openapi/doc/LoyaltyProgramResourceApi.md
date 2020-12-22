# openapi.api.LoyaltyProgramResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLoyaltyProgramUsingPOST**](LoyaltyProgramResourceApi.md#createLoyaltyProgramUsingPOST) | **post** /api/loyalty-programs | createLoyaltyProgram
[**deleteLoyaltyProgramUsingDELETE**](LoyaltyProgramResourceApi.md#deleteLoyaltyProgramUsingDELETE) | **delete** /api/loyalty-programs/{id} | deleteLoyaltyProgram
[**getAllLoyaltyProgramsUsingGET**](LoyaltyProgramResourceApi.md#getAllLoyaltyProgramsUsingGET) | **get** /api/loyalty-programs | getAllLoyaltyPrograms
[**getLoyaltyProgramUsingGET1**](LoyaltyProgramResourceApi.md#getLoyaltyProgramUsingGET1) | **get** /api/loyalty-programs/{id} | getLoyaltyProgram
[**updateLoyaltyProgramUsingPUT**](LoyaltyProgramResourceApi.md#updateLoyaltyProgramUsingPUT) | **put** /api/loyalty-programs | updateLoyaltyProgram


# **createLoyaltyProgramUsingPOST**
> LoyaltyProgramDTO createLoyaltyProgramUsingPOST(loyaltyProgramDTO)

createLoyaltyProgram

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new LoyaltyProgramResourceApi();
var loyaltyProgramDTO = new LoyaltyProgramDTO(); // LoyaltyProgramDTO | loyaltyProgramDTO

try { 
    var result = api_instance.createLoyaltyProgramUsingPOST(loyaltyProgramDTO);
    print(result);
} catch (e) {
    print("Exception when calling LoyaltyProgramResourceApi->createLoyaltyProgramUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loyaltyProgramDTO** | [**LoyaltyProgramDTO**](LoyaltyProgramDTO.md)| loyaltyProgramDTO | 

### Return type

[**LoyaltyProgramDTO**](LoyaltyProgramDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLoyaltyProgramUsingDELETE**
> deleteLoyaltyProgramUsingDELETE(id)

deleteLoyaltyProgram

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new LoyaltyProgramResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteLoyaltyProgramUsingDELETE(id);
} catch (e) {
    print("Exception when calling LoyaltyProgramResourceApi->deleteLoyaltyProgramUsingDELETE: $e\n");
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

# **getAllLoyaltyProgramsUsingGET**
> List<LoyaltyProgramDTO> getAllLoyaltyProgramsUsingGET(page, size, sort)

getAllLoyaltyPrograms

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new LoyaltyProgramResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllLoyaltyProgramsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling LoyaltyProgramResourceApi->getAllLoyaltyProgramsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<LoyaltyProgramDTO>**](LoyaltyProgramDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoyaltyProgramUsingGET1**
> LoyaltyProgramDTO getLoyaltyProgramUsingGET1(id)

getLoyaltyProgram

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new LoyaltyProgramResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getLoyaltyProgramUsingGET1(id);
    print(result);
} catch (e) {
    print("Exception when calling LoyaltyProgramResourceApi->getLoyaltyProgramUsingGET1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**LoyaltyProgramDTO**](LoyaltyProgramDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLoyaltyProgramUsingPUT**
> LoyaltyProgramDTO updateLoyaltyProgramUsingPUT(loyaltyProgramDTO)

updateLoyaltyProgram

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new LoyaltyProgramResourceApi();
var loyaltyProgramDTO = new LoyaltyProgramDTO(); // LoyaltyProgramDTO | loyaltyProgramDTO

try { 
    var result = api_instance.updateLoyaltyProgramUsingPUT(loyaltyProgramDTO);
    print(result);
} catch (e) {
    print("Exception when calling LoyaltyProgramResourceApi->updateLoyaltyProgramUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loyaltyProgramDTO** | [**LoyaltyProgramDTO**](LoyaltyProgramDTO.md)| loyaltyProgramDTO | 

### Return type

[**LoyaltyProgramDTO**](LoyaltyProgramDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

