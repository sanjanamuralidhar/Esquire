# openapi.api.CityResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCityUsingPOST**](CityResourceApi.md#createCityUsingPOST) | **post** /api/cities | createCity
[**deleteCityUsingDELETE**](CityResourceApi.md#deleteCityUsingDELETE) | **delete** /api/cities/{id} | deleteCity
[**getAllCitiesUsingGET**](CityResourceApi.md#getAllCitiesUsingGET) | **get** /api/cities | getAllCities
[**getCityUsingGET**](CityResourceApi.md#getCityUsingGET) | **get** /api/cities/{id} | getCity
[**updateCityUsingPUT**](CityResourceApi.md#updateCityUsingPUT) | **put** /api/cities | updateCity


# **createCityUsingPOST**
> CityDTO createCityUsingPOST(cityDTO)

createCity

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CityResourceApi();
var cityDTO = new CityDTO(); // CityDTO | cityDTO

try { 
    var result = api_instance.createCityUsingPOST(cityDTO);
    print(result);
} catch (e) {
    print("Exception when calling CityResourceApi->createCityUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cityDTO** | [**CityDTO**](CityDTO.md)| cityDTO | 

### Return type

[**CityDTO**](CityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCityUsingDELETE**
> deleteCityUsingDELETE(id)

deleteCity

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CityResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCityUsingDELETE(id);
} catch (e) {
    print("Exception when calling CityResourceApi->deleteCityUsingDELETE: $e\n");
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

# **getAllCitiesUsingGET**
> List<CityDTO> getAllCitiesUsingGET(page, size, sort)

getAllCities

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CityResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCitiesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling CityResourceApi->getAllCitiesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CityDTO>**](CityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCityUsingGET**
> CityDTO getCityUsingGET(id)

getCity

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CityResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCityUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CityResourceApi->getCityUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CityDTO**](CityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCityUsingPUT**
> CityDTO updateCityUsingPUT(cityDTO)

updateCity

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CityResourceApi();
var cityDTO = new CityDTO(); // CityDTO | cityDTO

try { 
    var result = api_instance.updateCityUsingPUT(cityDTO);
    print(result);
} catch (e) {
    print("Exception when calling CityResourceApi->updateCityUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cityDTO** | [**CityDTO**](CityDTO.md)| cityDTO | 

### Return type

[**CityDTO**](CityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

