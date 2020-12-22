# openapi.api.AddressResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAddressUsingPOST**](AddressResourceApi.md#createAddressUsingPOST) | **post** /api/addresses | createAddress
[**deleteAddressUsingDELETE**](AddressResourceApi.md#deleteAddressUsingDELETE) | **delete** /api/addresses/{id} | deleteAddress
[**getAddressUsingGET**](AddressResourceApi.md#getAddressUsingGET) | **get** /api/addresses/{id} | getAddress
[**getAllAddressesUsingGET**](AddressResourceApi.md#getAllAddressesUsingGET) | **get** /api/addresses | getAllAddresses
[**updateAddressUsingPUT**](AddressResourceApi.md#updateAddressUsingPUT) | **put** /api/addresses | updateAddress


# **createAddressUsingPOST**
> AddressDTO createAddressUsingPOST(addressDTO)

createAddress

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AddressResourceApi();
var addressDTO = new AddressDTO(); // AddressDTO | addressDTO

try { 
    var result = api_instance.createAddressUsingPOST(addressDTO);
    print(result);
} catch (e) {
    print("Exception when calling AddressResourceApi->createAddressUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressDTO** | [**AddressDTO**](AddressDTO.md)| addressDTO | 

### Return type

[**AddressDTO**](AddressDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddressUsingDELETE**
> deleteAddressUsingDELETE(id)

deleteAddress

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AddressResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteAddressUsingDELETE(id);
} catch (e) {
    print("Exception when calling AddressResourceApi->deleteAddressUsingDELETE: $e\n");
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

# **getAddressUsingGET**
> AddressDTO getAddressUsingGET(id)

getAddress

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AddressResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getAddressUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AddressResourceApi->getAddressUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**AddressDTO**](AddressDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAddressesUsingGET**
> List<AddressDTO> getAllAddressesUsingGET(filter, page, size, sort)

getAllAddresses

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AddressResourceApi();
var filter = filter_example; // String | filter
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllAddressesUsingGET(filter, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AddressResourceApi->getAllAddressesUsingGET: $e\n");
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

[**List<AddressDTO>**](AddressDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAddressUsingPUT**
> AddressDTO updateAddressUsingPUT(addressDTO)

updateAddress

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AddressResourceApi();
var addressDTO = new AddressDTO(); // AddressDTO | addressDTO

try { 
    var result = api_instance.updateAddressUsingPUT(addressDTO);
    print(result);
} catch (e) {
    print("Exception when calling AddressResourceApi->updateAddressUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressDTO** | [**AddressDTO**](AddressDTO.md)| addressDTO | 

### Return type

[**AddressDTO**](AddressDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

