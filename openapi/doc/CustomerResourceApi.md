# openapi.api.CustomerResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerContactDetailsUsingPOST**](CustomerResourceApi.md#createCustomerContactDetailsUsingPOST) | **post** /api/customers/newCustomer | createCustomerContactDetails
[**createCustomerUsingPOST**](CustomerResourceApi.md#createCustomerUsingPOST) | **post** /api/customers | createCustomer
[**deleteCustomerUsingDELETE**](CustomerResourceApi.md#deleteCustomerUsingDELETE) | **delete** /api/customers/{id} | deleteCustomer
[**getAllCustomersUsingGET**](CustomerResourceApi.md#getAllCustomersUsingGET) | **get** /api/customers | getAllCustomers
[**getCustomerByUserLoginUsingGET**](CustomerResourceApi.md#getCustomerByUserLoginUsingGET) | **get** /api/customers/users/{userLogin} | getCustomerByUserLogin
[**getCustomerContactByTicketIdUsingGET**](CustomerResourceApi.md#getCustomerContactByTicketIdUsingGET) | **get** /api/customers/contacts/{ticketId} | getCustomerContactByTicketId
[**getCustomerUniqueIdUsingGET**](CustomerResourceApi.md#getCustomerUniqueIdUsingGET) | **get** /api/customers/uniqueId/{customerId} | getCustomerUniqueId
[**getCustomerUsingGET**](CustomerResourceApi.md#getCustomerUsingGET) | **get** /api/customers/{id} | getCustomer
[**updateCustomerUsingPUT**](CustomerResourceApi.md#updateCustomerUsingPUT) | **put** /api/customers | updateCustomer


# **createCustomerContactDetailsUsingPOST**
> CustomerDTO createCustomerContactDetailsUsingPOST(customer)

createCustomerContactDetails

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var customer = new Customer(); // Customer | customer

try { 
    var result = api_instance.createCustomerContactDetailsUsingPOST(customer);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->createCustomerContactDetailsUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer** | [**Customer**](Customer.md)| customer | 

### Return type

[**CustomerDTO**](CustomerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerUsingPOST**
> CustomerDTO createCustomerUsingPOST(customerDTO)

createCustomer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var customerDTO = new CustomerDTO(); // CustomerDTO | customerDTO

try { 
    var result = api_instance.createCustomerUsingPOST(customerDTO);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->createCustomerUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerDTO** | [**CustomerDTO**](CustomerDTO.md)| customerDTO | 

### Return type

[**CustomerDTO**](CustomerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerUsingDELETE**
> deleteCustomerUsingDELETE(id)

deleteCustomer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteCustomerUsingDELETE(id);
} catch (e) {
    print("Exception when calling CustomerResourceApi->deleteCustomerUsingDELETE: $e\n");
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

# **getAllCustomersUsingGET**
> List<CustomerDTO> getAllCustomersUsingGET(page, size, sort)

getAllCustomers

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllCustomersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->getAllCustomersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<CustomerDTO>**](CustomerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerByUserLoginUsingGET**
> Customer getCustomerByUserLoginUsingGET(userLogin)

getCustomerByUserLogin

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var userLogin = userLogin_example; // String | userLogin

try { 
    var result = api_instance.getCustomerByUserLoginUsingGET(userLogin);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->getCustomerByUserLoginUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userLogin** | **String**| userLogin | [default to null]

### Return type

[**Customer**](Customer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerContactByTicketIdUsingGET**
> Customer getCustomerContactByTicketIdUsingGET(ticketId)

getCustomerContactByTicketId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var ticketId = 789; // int | ticketId

try { 
    var result = api_instance.getCustomerContactByTicketIdUsingGET(ticketId);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->getCustomerContactByTicketIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **int**| ticketId | [default to null]

### Return type

[**Customer**](Customer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerUniqueIdUsingGET**
> String getCustomerUniqueIdUsingGET(customerId)

getCustomerUniqueId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var customerId = 789; // int | customerId

try { 
    var result = api_instance.getCustomerUniqueIdUsingGET(customerId);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->getCustomerUniqueIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| customerId | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerUsingGET**
> CustomerDTO getCustomerUsingGET(id)

getCustomer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getCustomerUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->getCustomerUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**CustomerDTO**](CustomerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerUsingPUT**
> CustomerDTO updateCustomerUsingPUT(customerDTO)

updateCustomer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new CustomerResourceApi();
var customerDTO = new CustomerDTO(); // CustomerDTO | customerDTO

try { 
    var result = api_instance.updateCustomerUsingPUT(customerDTO);
    print(result);
} catch (e) {
    print("Exception when calling CustomerResourceApi->updateCustomerUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerDTO** | [**CustomerDTO**](CustomerDTO.md)| customerDTO | 

### Return type

[**CustomerDTO**](CustomerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

