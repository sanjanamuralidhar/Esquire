# openapi.api.ServiceSectionResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceSectionUsingPOST**](ServiceSectionResourceApi.md#createServiceSectionUsingPOST) | **post** /api/service-sections | createServiceSection
[**deleteServiceSectionUsingDELETE**](ServiceSectionResourceApi.md#deleteServiceSectionUsingDELETE) | **delete** /api/service-sections/{id} | deleteServiceSection
[**getAllServiceSectionsByInhouseSectionUsingGET**](ServiceSectionResourceApi.md#getAllServiceSectionsByInhouseSectionUsingGET) | **get** /api/service-sections/inhouse/{inhouse} | getAllServiceSectionsByInhouseSection
[**getAllServiceSectionsUsingGET**](ServiceSectionResourceApi.md#getAllServiceSectionsUsingGET) | **get** /api/service-sections | getAllServiceSections
[**getServiceSectionUsingGET**](ServiceSectionResourceApi.md#getServiceSectionUsingGET) | **get** /api/service-sections/{id} | getServiceSection
[**updateServiceSectionUsingPUT**](ServiceSectionResourceApi.md#updateServiceSectionUsingPUT) | **put** /api/service-sections | updateServiceSection


# **createServiceSectionUsingPOST**
> ServiceSectionDTO createServiceSectionUsingPOST(serviceSectionDTO)

createServiceSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceSectionResourceApi();
var serviceSectionDTO = new ServiceSectionDTO(); // ServiceSectionDTO | serviceSectionDTO

try { 
    var result = api_instance.createServiceSectionUsingPOST(serviceSectionDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSectionResourceApi->createServiceSectionUsingPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceSectionDTO** | [**ServiceSectionDTO**](ServiceSectionDTO.md)| serviceSectionDTO | 

### Return type

[**ServiceSectionDTO**](ServiceSectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteServiceSectionUsingDELETE**
> deleteServiceSectionUsingDELETE(id)

deleteServiceSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceSectionResourceApi();
var id = 789; // int | id

try { 
    api_instance.deleteServiceSectionUsingDELETE(id);
} catch (e) {
    print("Exception when calling ServiceSectionResourceApi->deleteServiceSectionUsingDELETE: $e\n");
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

# **getAllServiceSectionsByInhouseSectionUsingGET**
> List<ServiceSection> getAllServiceSectionsByInhouseSectionUsingGET(inhouse, page, size, sort)

getAllServiceSectionsByInhouseSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceSectionResourceApi();
var inhouse = true; // bool | inhouse
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServiceSectionsByInhouseSectionUsingGET(inhouse, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSectionResourceApi->getAllServiceSectionsByInhouseSectionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inhouse** | **bool**| inhouse | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceSection>**](ServiceSection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllServiceSectionsUsingGET**
> List<ServiceSectionDTO> getAllServiceSectionsUsingGET(page, size, sort)

getAllServiceSections

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceSectionResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServiceSectionsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSectionResourceApi->getAllServiceSectionsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ServiceSectionDTO>**](ServiceSectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceSectionUsingGET**
> ServiceSectionDTO getServiceSectionUsingGET(id)

getServiceSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceSectionResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getServiceSectionUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSectionResourceApi->getServiceSectionUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**ServiceSectionDTO**](ServiceSectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateServiceSectionUsingPUT**
> ServiceSectionDTO updateServiceSectionUsingPUT(serviceSectionDTO)

updateServiceSection

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new ServiceSectionResourceApi();
var serviceSectionDTO = new ServiceSectionDTO(); // ServiceSectionDTO | serviceSectionDTO

try { 
    var result = api_instance.updateServiceSectionUsingPUT(serviceSectionDTO);
    print(result);
} catch (e) {
    print("Exception when calling ServiceSectionResourceApi->updateServiceSectionUsingPUT: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceSectionDTO** | [**ServiceSectionDTO**](ServiceSectionDTO.md)| serviceSectionDTO | 

### Return type

[**ServiceSectionDTO**](ServiceSectionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

