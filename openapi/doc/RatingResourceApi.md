# openapi.api.RatingResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRatingUsingPOST**](RatingResourceApi.md#createRatingUsingPOST) | **post** /api/ratings | createRating
[**deleteRatingUsingDELETE**](RatingResourceApi.md#deleteRatingUsingDELETE) | **delete** /api/ratings/{id} | deleteRating
[**getAllRatingsUsingGET**](RatingResourceApi.md#getAllRatingsUsingGET) | **get** /api/ratings | getAllRatings
[**getRatingUsingGET**](RatingResourceApi.md#getRatingUsingGET) | **get** /api/ratings/{id} | getRating
[**updateRatingUsingPUT**](RatingResourceApi.md#updateRatingUsingPUT) | **put** /api/ratings | updateRating


# **createRatingUsingPOST**
> RatingDTO createRatingUsingPOST(ratingDTO)

createRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new RatingResourceApi();
var ratingDTO = new RatingDTO(); // RatingDTO | ratingDTO

try { 
    var result = api_instance.createRatingUsingPOST(ratingDTO);
    print(result);
} catch (e) {
    print("Exception when calling RatingResourceApi->createRatingUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ratingDTO** | [**RatingDTO**](RatingDTO.md)| ratingDTO | 

### Return type

[**RatingDTO**](RatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRatingUsingDELETE**
> deleteRatingUsingDELETE(id)

deleteRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new RatingResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteRatingUsingDELETE(id);
} catch (e) {
    print("Exception when calling RatingResourceApi->deleteRatingUsingDELETE: $e\n");
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

# **getAllRatingsUsingGET**
> List<RatingDTO> getAllRatingsUsingGET(page, size, sort)

getAllRatings

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new RatingResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllRatingsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling RatingResourceApi->getAllRatingsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<RatingDTO>**](RatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRatingUsingGET**
> RatingDTO getRatingUsingGET(id)

getRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new RatingResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getRatingUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling RatingResourceApi->getRatingUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**RatingDTO**](RatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRatingUsingPUT**
> RatingDTO updateRatingUsingPUT(ratingDTO)

updateRating

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new RatingResourceApi();
var ratingDTO = new RatingDTO(); // RatingDTO | ratingDTO

try { 
    var result = api_instance.updateRatingUsingPUT(ratingDTO);
    print(result);
} catch (e) {
    print("Exception when calling RatingResourceApi->updateRatingUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ratingDTO** | [**RatingDTO**](RatingDTO.md)| ratingDTO | 

### Return type

[**RatingDTO**](RatingDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

