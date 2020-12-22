# openapi.api.OverallRatingResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOverallRatingUsingPOST**](OverallRatingResourceApi.md#createOverallRatingUsingPOST) | **post** /api/overall-ratings | createOverallRating
[**deleteOverallRatingUsingDELETE**](OverallRatingResourceApi.md#deleteOverallRatingUsingDELETE) | **delete** /api/overall-ratings/{id} | deleteOverallRating
[**getAllOverallRatingsUsingGET**](OverallRatingResourceApi.md#getAllOverallRatingsUsingGET) | **get** /api/overall-ratings | getAllOverallRatings
[**getOverallRatingUsingGET**](OverallRatingResourceApi.md#getOverallRatingUsingGET) | **get** /api/overall-ratings/{id} | getOverallRating
[**updateOverallRatingUsingPUT**](OverallRatingResourceApi.md#updateOverallRatingUsingPUT) | **put** /api/overall-ratings | updateOverallRating


# **createOverallRatingUsingPOST**
> OverallRatingDTO createOverallRatingUsingPOST(overallRatingDTO)

createOverallRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OverallRatingResourceApi();
var overallRatingDTO = new OverallRatingDTO(); // OverallRatingDTO | overallRatingDTO

try { 
    var result = api_instance.createOverallRatingUsingPOST(overallRatingDTO);
    print(result);
} catch (e) {
    print("Exception when calling OverallRatingResourceApi->createOverallRatingUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **overallRatingDTO** | [**OverallRatingDTO**](OverallRatingDTO.md)| overallRatingDTO | 

### Return type

[**OverallRatingDTO**](OverallRatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOverallRatingUsingDELETE**
> deleteOverallRatingUsingDELETE(id)

deleteOverallRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OverallRatingResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteOverallRatingUsingDELETE(id);
} catch (e) {
    print("Exception when calling OverallRatingResourceApi->deleteOverallRatingUsingDELETE: $e\n");
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

# **getAllOverallRatingsUsingGET**
> List<OverallRatingDTO> getAllOverallRatingsUsingGET(filter, page, size, sort)

getAllOverallRatings

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OverallRatingResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllOverallRatingsUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling OverallRatingResourceApi->getAllOverallRatingsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| filter | [optional] [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<OverallRatingDTO>**](OverallRatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOverallRatingUsingGET**
> OverallRatingDTO getOverallRatingUsingGET(id)

getOverallRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OverallRatingResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getOverallRatingUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling OverallRatingResourceApi->getOverallRatingUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**OverallRatingDTO**](OverallRatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOverallRatingUsingPUT**
> OverallRatingDTO updateOverallRatingUsingPUT(overallRatingDTO)

updateOverallRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OverallRatingResourceApi();
var overallRatingDTO = new OverallRatingDTO(); // OverallRatingDTO | overallRatingDTO

try { 
    var result = api_instance.updateOverallRatingUsingPUT(overallRatingDTO);
    print(result);
} catch (e) {
    print("Exception when calling OverallRatingResourceApi->updateOverallRatingUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **overallRatingDTO** | [**OverallRatingDTO**](OverallRatingDTO.md)| overallRatingDTO | 

### Return type

[**OverallRatingDTO**](OverallRatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

