# openapi.api.ServiceExecutiveResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceExecutiveAsUserUsingPOST**](ServiceExecutiveResourceApi.md#createServiceExecutiveAsUserUsingPOST) | **post** /api/service-executives/users | createServiceExecutiveAsUser
[**createServiceExecutiveUsingPOST**](ServiceExecutiveResourceApi.md#createServiceExecutiveUsingPOST) | **post** /api/service-executives | createServiceExecutive
[**deleteServiceExecutiveUsingDELETE**](ServiceExecutiveResourceApi.md#deleteServiceExecutiveUsingDELETE) | **delete** /api/service-executives/{id} | deleteServiceExecutive
[**getAllServiceExecutivesBySectionIdUsingGET**](ServiceExecutiveResourceApi.md#getAllServiceExecutivesBySectionIdUsingGET) | **get** /api/service-executives/sections/{sectionId} | getAllServiceExecutivesBySectionId
[**getAllServiceExecutivesDTOBySectionIdUsingGET**](ServiceExecutiveResourceApi.md#getAllServiceExecutivesDTOBySectionIdUsingGET) | **get** /api/service-executives/sections-minimal/{sectionId} | getAllServiceExecutivesDTOBySectionId
[**getAllServiceExecutivesUsingGET**](ServiceExecutiveResourceApi.md#getAllServiceExecutivesUsingGET) | **get** /api/service-executives | getAllServiceExecutives
[**getAllServiceExecutivesWithTicketsBySectionIdAndStatusUsingGET**](ServiceExecutiveResourceApi.md#getAllServiceExecutivesWithTicketsBySectionIdAndStatusUsingGET) | **get** /api/service-executives/tickets/{sectionId}/{ticketStatus} | getAllServiceExecutivesWithTicketsBySectionIdAndStatus
[**getByServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET**](ServiceExecutiveResourceApi.md#getByServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET) | **get** /api/service-executives/section-type/{branchId}/{inhouse} | getByServiceSectionBranchIdAndServiceSectionInhouseSection
[**getByServiceSectionIdAndUserAuthorityUsingGET**](ServiceExecutiveResourceApi.md#getByServiceSectionIdAndUserAuthorityUsingGET) | **get** /api/service-executives/roles/{sectionId}/{role} | getByServiceSectionIdAndUserAuthority
[**getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET**](ServiceExecutiveResourceApi.md#getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET) | **get** /api/service-executives/section-type/{branchId}/{status}/{inhouse} | getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSection
[**getServiceExecutiveByUserLoginUsingGET**](ServiceExecutiveResourceApi.md#getServiceExecutiveByUserLoginUsingGET) | **get** /api/service-executives/users/{userLogin} | getServiceExecutiveByUserLogin
[**getServiceExecutiveUsingGET**](ServiceExecutiveResourceApi.md#getServiceExecutiveUsingGET) | **get** /api/service-executives/{id} | getServiceExecutive
[**updateServiceExecutiveUsingPUT**](ServiceExecutiveResourceApi.md#updateServiceExecutiveUsingPUT) | **put** /api/service-executives/users | updateServiceExecutive
[**updateServiceExecutiveUsingPUT1**](ServiceExecutiveResourceApi.md#updateServiceExecutiveUsingPUT1) | **put** /api/service-executives | updateServiceExecutive


# **createServiceExecutiveAsUserUsingPOST**
> ServiceExecutive createServiceExecutiveAsUserUsingPOST(serviceExecutive)

createServiceExecutiveAsUser

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var serviceExecutive = new ServiceExecutive(); // ServiceExecutive | serviceExecutive

try { 
    var result = api_instance.createServiceExecutiveAsUserUsingPOST(serviceExecutive);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->createServiceExecutiveAsUserUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceExecutive** | [**ServiceExecutive**](ServiceExecutive.md)| serviceExecutive | 

### Return type

[**ServiceExecutive**](ServiceExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createServiceExecutiveUsingPOST**
> ServiceExecutiveDTO createServiceExecutiveUsingPOST(serviceExecutiveDTO)

createServiceExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var serviceExecutiveDTO = new ServiceExecutiveDTO(); // ServiceExecutiveDTO | serviceExecutiveDTO

try { 
    var result = api_instance.createServiceExecutiveUsingPOST(serviceExecutiveDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->createServiceExecutiveUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceExecutiveDTO** | [**ServiceExecutiveDTO**](ServiceExecutiveDTO.md)| serviceExecutiveDTO | 

### Return type

[**ServiceExecutiveDTO**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceExecutiveUsingDELETE**
> deleteServiceExecutiveUsingDELETE(id)

deleteServiceExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteServiceExecutiveUsingDELETE(id);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->deleteServiceExecutiveUsingDELETE: $e\n");
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

# **getAllServiceExecutivesBySectionIdUsingGET**
> List<ServiceExecutive> getAllServiceExecutivesBySectionIdUsingGET(sectionId, page, size, sort)

getAllServiceExecutivesBySectionId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var sectionId = 789; // int | sectionId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServiceExecutivesBySectionIdUsingGET(sectionId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getAllServiceExecutivesBySectionIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sectionId** | **int**| sectionId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutive>**](ServiceExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllServiceExecutivesDTOBySectionIdUsingGET**
> List<ServiceExecutiveDTO> getAllServiceExecutivesDTOBySectionIdUsingGET(sectionId, page, size, sort)

getAllServiceExecutivesDTOBySectionId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var sectionId = 789; // int | sectionId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServiceExecutivesDTOBySectionIdUsingGET(sectionId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getAllServiceExecutivesDTOBySectionIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sectionId** | **int**| sectionId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutiveDTO>**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllServiceExecutivesUsingGET**
> List<ServiceExecutiveDTO> getAllServiceExecutivesUsingGET(page, size, sort)

getAllServiceExecutives

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServiceExecutivesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getAllServiceExecutivesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutiveDTO>**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllServiceExecutivesWithTicketsBySectionIdAndStatusUsingGET**
> List<ServiceExecutive> getAllServiceExecutivesWithTicketsBySectionIdAndStatusUsingGET(sectionId, ticketStatus, page, size, sort)

getAllServiceExecutivesWithTicketsBySectionIdAndStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var sectionId = 789; // int | sectionId
var ticketStatus = ticketStatus_example; // String | ticketStatus
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServiceExecutivesWithTicketsBySectionIdAndStatusUsingGET(sectionId, ticketStatus, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getAllServiceExecutivesWithTicketsBySectionIdAndStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sectionId** | **int**| sectionId | [default to null]
 **ticketStatus** | **String**| ticketStatus | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutive>**](ServiceExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET**
> List<ServiceExecutiveDTO> getByServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET(branchId, inhouse, page, size, sort)

getByServiceSectionBranchIdAndServiceSectionInhouseSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var branchId = 789; // int | branchId
var inhouse = true; // bool | inhouse
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getByServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET(branchId, inhouse, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getByServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchId** | **int**| branchId | [default to null]
 **inhouse** | **bool**| inhouse | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutiveDTO>**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByServiceSectionIdAndUserAuthorityUsingGET**
> List<ServiceExecutiveDTO> getByServiceSectionIdAndUserAuthorityUsingGET(role, sectionId, page, size, sort)

getByServiceSectionIdAndUserAuthority

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var role = role_example; // String | role
var sectionId = 789; // int | sectionId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getByServiceSectionIdAndUserAuthorityUsingGET(role, sectionId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getByServiceSectionIdAndUserAuthorityUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| role | [default to null]
 **sectionId** | **int**| sectionId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutiveDTO>**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET**
> List<ServiceExecutive> getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET(branchId, inhouse, status, page, size, sort)

getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var branchId = 789; // int | branchId
var inhouse = true; // bool | inhouse
var status = status_example; // String | status
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET(branchId, inhouse, status, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getByStatusAndServiceSectionBranchIdAndServiceSectionInhouseSectionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branchId** | **int**| branchId | [default to null]
 **inhouse** | **bool**| inhouse | [default to null]
 **status** | **String**| status | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceExecutive>**](ServiceExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceExecutiveByUserLoginUsingGET**
> ServiceExecutive getServiceExecutiveByUserLoginUsingGET(userLogin)

getServiceExecutiveByUserLogin

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var userLogin = userLogin_example; // String | userLogin

try { 
    var result = api_instance.getServiceExecutiveByUserLoginUsingGET(userLogin);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getServiceExecutiveByUserLoginUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userLogin** | **String**| userLogin | [default to null]

### Return type

[**ServiceExecutive**](ServiceExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceExecutiveUsingGET**
> ServiceExecutiveDTO getServiceExecutiveUsingGET(id)

getServiceExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getServiceExecutiveUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->getServiceExecutiveUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ServiceExecutiveDTO**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceExecutiveUsingPUT**
> ServiceExecutive updateServiceExecutiveUsingPUT(serviceExecutive)

updateServiceExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var serviceExecutive = new ServiceExecutive(); // ServiceExecutive | serviceExecutive

try { 
    var result = api_instance.updateServiceExecutiveUsingPUT(serviceExecutive);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->updateServiceExecutiveUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceExecutive** | [**ServiceExecutive**](ServiceExecutive.md)| serviceExecutive | 

### Return type

[**ServiceExecutive**](ServiceExecutive.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceExecutiveUsingPUT1**
> ServiceExecutiveDTO updateServiceExecutiveUsingPUT1(serviceExecutiveDTO)

updateServiceExecutive

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceExecutiveResourceApi();
var serviceExecutiveDTO = new ServiceExecutiveDTO(); // ServiceExecutiveDTO | serviceExecutiveDTO

try { 
    var result = api_instance.updateServiceExecutiveUsingPUT1(serviceExecutiveDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServiceExecutiveResourceApi->updateServiceExecutiveUsingPUT1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceExecutiveDTO** | [**ServiceExecutiveDTO**](ServiceExecutiveDTO.md)| serviceExecutiveDTO | 

### Return type

[**ServiceExecutiveDTO**](ServiceExecutiveDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

