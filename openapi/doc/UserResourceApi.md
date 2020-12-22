# openapi.api.UserResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerUsingPOST1**](UserResourceApi.md#createCustomerUsingPOST1) | **post** /api/users/customer | createCustomer
[**createUserUsingPOST**](UserResourceApi.md#createUserUsingPOST) | **post** /api/users | createUser
[**deleteUserUsingDELETE**](UserResourceApi.md#deleteUserUsingDELETE) | **delete** /api/users/{login:^(?&gt;[a-zA-Z0-9!$&amp;*+&#x3D;?^_&#x60;{|}~.-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*)|(?&gt;[_.@A-Za-z0-9-]+)$} | deleteUser
[**getAllUsersUsingGET**](UserResourceApi.md#getAllUsersUsingGET) | **get** /api/users | getAllUsers
[**getAuthoritiesUsingGET**](UserResourceApi.md#getAuthoritiesUsingGET) | **get** /api/users/authorities | getAuthorities
[**getUserByServiceExecutiveIdUsingGET**](UserResourceApi.md#getUserByServiceExecutiveIdUsingGET) | **get** /api/users/service-executives/{executiveId} | getUserByServiceExecutiveId
[**getUserUsingGET**](UserResourceApi.md#getUserUsingGET) | **get** /api/users/{login:^(?&gt;[a-zA-Z0-9!$&amp;*+&#x3D;?^_&#x60;{|}~.-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*)|(?&gt;[_.@A-Za-z0-9-]+)$} | getUser
[**registerCustomerUsingPOST1**](UserResourceApi.md#registerCustomerUsingPOST1) | **post** /api/users/register/customer | registerCustomer
[**updateUserUsingPUT**](UserResourceApi.md#updateUserUsingPUT) | **put** /api/users | updateUser


# **createCustomerUsingPOST1**
> User createCustomerUsingPOST1(userDTO)

createCustomer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var userDTO = new UserDTO(); // UserDTO | userDTO

try { 
    var result = api_instance.createCustomerUsingPOST1(userDTO);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->createCustomerUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDTO** | [**UserDTO**](UserDTO.md)| userDTO | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserUsingPOST**
> User createUserUsingPOST(userDTO)

createUser

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var userDTO = new UserDTO(); // UserDTO | userDTO

try { 
    var result = api_instance.createUserUsingPOST(userDTO);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->createUserUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDTO** | [**UserDTO**](UserDTO.md)| userDTO | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserUsingDELETE**
> deleteUserUsingDELETE(login)

deleteUser

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var login = login_example; // String | login

try { 
    api_instance.deleteUserUsingDELETE(login);
} catch (e) {
    print("Exception when calling UserResourceApi->deleteUserUsingDELETE: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUsersUsingGET**
> List<UserDTO> getAllUsersUsingGET(page, size, sort)

getAllUsers

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllUsersUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getAllUsersUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<UserDTO>**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthoritiesUsingGET**
> List<String> getAuthoritiesUsingGET()

getAuthorities

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();

try { 
    var result = api_instance.getAuthoritiesUsingGET();
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getAuthoritiesUsingGET: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByServiceExecutiveIdUsingGET**
> UserDTO getUserByServiceExecutiveIdUsingGET(executiveId)

getUserByServiceExecutiveId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var executiveId = 789; // int | executiveId

try { 
    var result = api_instance.getUserByServiceExecutiveIdUsingGET(executiveId);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getUserByServiceExecutiveIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executiveId** | **int**| executiveId | [default to null]

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsingGET**
> UserDTO getUserUsingGET(login)

getUser

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var login = login_example; // String | login

try { 
    var result = api_instance.getUserUsingGET(login);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->getUserUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **String**| login | [default to null]

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerCustomerUsingPOST1**
> User registerCustomerUsingPOST1(managedUserVM)

registerCustomer

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var managedUserVM = new ManagedUserVM(); // ManagedUserVM | managedUserVM

try { 
    var result = api_instance.registerCustomerUsingPOST1(managedUserVM);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->registerCustomerUsingPOST1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **managedUserVM** | [**ManagedUserVM**](ManagedUserVM.md)| managedUserVM | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserUsingPUT**
> UserDTO updateUserUsingPUT(userDTO)

updateUser

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new UserResourceApi();
var userDTO = new UserDTO(); // UserDTO | userDTO

try { 
    var result = api_instance.updateUserUsingPUT(userDTO);
    print(result);
} catch (e) {
    print("Exception when calling UserResourceApi->updateUserUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userDTO** | [**UserDTO**](UserDTO.md)| userDTO | 

### Return type

[**UserDTO**](UserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

