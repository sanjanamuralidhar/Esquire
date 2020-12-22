# openapi.api.AttemptHistoryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAttemptHistoryUsingPOST**](AttemptHistoryResourceApi.md#createAttemptHistoryUsingPOST) | **post** /api/attempt-histories | createAttemptHistory
[**createUserAttemptHistoryUsingPOST**](AttemptHistoryResourceApi.md#createUserAttemptHistoryUsingPOST) | **post** /api/attempt-histories/user-attempt/{answers} | createUserAttemptHistory
[**deleteAttemptHistoryUsingDELETE**](AttemptHistoryResourceApi.md#deleteAttemptHistoryUsingDELETE) | **delete** /api/attempt-histories/{id} | deleteAttemptHistory
[**getAllAttemptHistoriesUsingGET**](AttemptHistoryResourceApi.md#getAllAttemptHistoriesUsingGET) | **get** /api/attempt-histories | getAllAttemptHistories
[**getAttemptHistoryDetailsUsingGET**](AttemptHistoryResourceApi.md#getAttemptHistoryDetailsUsingGET) | **get** /api/attempt-histories/user-attempt/{id} | getAttemptHistoryDetails
[**getAttemptHistoryUsingGET**](AttemptHistoryResourceApi.md#getAttemptHistoryUsingGET) | **get** /api/attempt-histories/{id} | getAttemptHistory
[**getLoyaltyProgramUsingGET**](AttemptHistoryResourceApi.md#getLoyaltyProgramUsingGET) | **get** /api/attempt-histories/loyalty-programs/{id} | getLoyaltyProgram
[**getWinnersUsingGET**](AttemptHistoryResourceApi.md#getWinnersUsingGET) | **get** /api/attempt-histories/winners/{promotionalMessageId} | getWinners
[**updateAttemptHistoryUsingPUT**](AttemptHistoryResourceApi.md#updateAttemptHistoryUsingPUT) | **put** /api/attempt-histories | updateAttemptHistory


# **createAttemptHistoryUsingPOST**
> AttemptHistoryDTO createAttemptHistoryUsingPOST(attemptHistoryDTO)

createAttemptHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var attemptHistoryDTO = new AttemptHistoryDTO(); // AttemptHistoryDTO | attemptHistoryDTO

try { 
    var result = api_instance.createAttemptHistoryUsingPOST(attemptHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->createAttemptHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptHistoryDTO** | [**AttemptHistoryDTO**](AttemptHistoryDTO.md)| attemptHistoryDTO | 

### Return type

[**AttemptHistoryDTO**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserAttemptHistoryUsingPOST**
> AttemptHistoryDTO createUserAttemptHistoryUsingPOST(answers, attemptHistoryDTO)

createUserAttemptHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var answers = answers_example; // String | answers
var attemptHistoryDTO = new AttemptHistoryDTO(); // AttemptHistoryDTO | attemptHistoryDTO

try { 
    var result = api_instance.createUserAttemptHistoryUsingPOST(answers, attemptHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->createUserAttemptHistoryUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **answers** | **String**| answers | [default to null]
 **attemptHistoryDTO** | [**AttemptHistoryDTO**](AttemptHistoryDTO.md)| attemptHistoryDTO | 

### Return type

[**AttemptHistoryDTO**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttemptHistoryUsingDELETE**
> deleteAttemptHistoryUsingDELETE(id)

deleteAttemptHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteAttemptHistoryUsingDELETE(id);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->deleteAttemptHistoryUsingDELETE: $e\n");
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

# **getAllAttemptHistoriesUsingGET**
> List<AttemptHistoryDTO> getAllAttemptHistoriesUsingGET(page, size, sort)

getAllAttemptHistories

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllAttemptHistoriesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->getAllAttemptHistoriesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<AttemptHistoryDTO>**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttemptHistoryDetailsUsingGET**
> AttemptHistory getAttemptHistoryDetailsUsingGET(id)

getAttemptHistoryDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getAttemptHistoryDetailsUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->getAttemptHistoryDetailsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**AttemptHistory**](AttemptHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttemptHistoryUsingGET**
> AttemptHistoryDTO getAttemptHistoryUsingGET(id)

getAttemptHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getAttemptHistoryUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->getAttemptHistoryUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**AttemptHistoryDTO**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoyaltyProgramUsingGET**
> List<AttemptHistoryDTO> getLoyaltyProgramUsingGET(id, page, size, sort)

getLoyaltyProgram

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var id = 789; // int | id
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getLoyaltyProgramUsingGET(id, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->getLoyaltyProgramUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<AttemptHistoryDTO>**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWinnersUsingGET**
> List<AttemptHistoryDTO> getWinnersUsingGET(promotionalMessageId, page, size, sort)

getWinners

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var promotionalMessageId = 789; // int | promotionalMessageId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getWinnersUsingGET(promotionalMessageId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->getWinnersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **promotionalMessageId** | **int**| promotionalMessageId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<AttemptHistoryDTO>**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAttemptHistoryUsingPUT**
> AttemptHistoryDTO updateAttemptHistoryUsingPUT(attemptHistoryDTO)

updateAttemptHistory

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AttemptHistoryResourceApi();
var attemptHistoryDTO = new AttemptHistoryDTO(); // AttemptHistoryDTO | attemptHistoryDTO

try { 
    var result = api_instance.updateAttemptHistoryUsingPUT(attemptHistoryDTO);
    print(result);
} catch (e) {
    print("Exception when calling AttemptHistoryResourceApi->updateAttemptHistoryUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attemptHistoryDTO** | [**AttemptHistoryDTO**](AttemptHistoryDTO.md)| attemptHistoryDTO | 

### Return type

[**AttemptHistoryDTO**](AttemptHistoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

