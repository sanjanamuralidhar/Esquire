# openapi.api.CustomerAccountResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerAccountUsingPOST**](CustomerAccountResourceApi.md#createCustomerAccountUsingPOST) | **post** /api/customer-accounts | createCustomerAccount
[**deleteCustomerAccountUsingDELETE**](CustomerAccountResourceApi.md#deleteCustomerAccountUsingDELETE) | **delete** /api/customer-accounts/{id} | deleteCustomerAccount
[**getAllCustomerAccountsUsingGET**](CustomerAccountResourceApi.md#getAllCustomerAccountsUsingGET) | **get** /api/customer-accounts | getAllCustomerAccounts
[**getCustomerAccountUsingGET**](CustomerAccountResourceApi.md#getCustomerAccountUsingGET) | **get** /api/customer-accounts/{id} | getCustomerAccount
[**updateCustomerAccountUsingPUT**](CustomerAccountResourceApi.md#updateCustomerAccountUsingPUT) | **put** /api/customer-accounts | updateCustomerAccount


# **createCustomerAccountUsingPOST**
> CustomerAccountDTO createCustomerAccountUsingPOST(customerAccountDTO)

createCustomerAccount

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerAccountResourceApi();
var customerAccountDTO = new CustomerAccountDTO(); // CustomerAccountDTO | customerAccountDTO

try { 
    var result = api_instance.createCustomerAccountUsingPOST(customerAccountDTO);
    print(result);
} catch (e) {
    print("Exception when calling CustomerAccountResourceApi->createCustomerAccountUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerAccountDTO** | [**CustomerAccountDTO**](CustomerAccountDTO.md)| customerAccountDTO | 

### Return type

[**CustomerAccountDTO**](CustomerAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerAccountUsingDELETE**
> deleteCustomerAccountUsingDELETE(id)

deleteCustomerAccount

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerAccountResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCustomerAccountUsingDELETE(id);
} catch (e) {
    print("Exception when calling CustomerAccountResourceApi->deleteCustomerAccountUsingDELETE: $e\n");
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

# **getAllCustomerAccountsUsingGET**
> List<CustomerAccountDTO> getAllCustomerAccountsUsingGET(page, size, sort)

getAllCustomerAccounts

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerAccountResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCustomerAccountsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling CustomerAccountResourceApi->getAllCustomerAccountsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CustomerAccountDTO>**](CustomerAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerAccountUsingGET**
> CustomerAccountDTO getCustomerAccountUsingGET(id)

getCustomerAccount

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerAccountResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCustomerAccountUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CustomerAccountResourceApi->getCustomerAccountUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CustomerAccountDTO**](CustomerAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerAccountUsingPUT**
> CustomerAccountDTO updateCustomerAccountUsingPUT(customerAccountDTO)

updateCustomerAccount

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerAccountResourceApi();
var customerAccountDTO = new CustomerAccountDTO(); // CustomerAccountDTO | customerAccountDTO

try { 
    var result = api_instance.updateCustomerAccountUsingPUT(customerAccountDTO);
    print(result);
} catch (e) {
    print("Exception when calling CustomerAccountResourceApi->updateCustomerAccountUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerAccountDTO** | [**CustomerAccountDTO**](CustomerAccountDTO.md)| customerAccountDTO | 

### Return type

[**CustomerAccountDTO**](CustomerAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

