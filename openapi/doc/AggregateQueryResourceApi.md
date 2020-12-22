# openapi.api.AggregateQueryResourceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://34.68.14.183:8081*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllEnumServiceLocationsUsingGET**](AggregateQueryResourceApi.md#getAllEnumServiceLocationsUsingGET) | **get** /api/query/enums/service-locations | getAllEnumServiceLocations
[**getAllEnumServiceTypesUsingGET**](AggregateQueryResourceApi.md#getAllEnumServiceTypesUsingGET) | **get** /api/query/enums/service-types | getAllEnumServiceTypes
[**getAllEnumTicketStatusUsingGET**](AggregateQueryResourceApi.md#getAllEnumTicketStatusUsingGET) | **get** /api/query/enums/ticket-status | getAllEnumTicketStatus
[**getAllEnumTicketVerifiedStatusUsingGET**](AggregateQueryResourceApi.md#getAllEnumTicketVerifiedStatusUsingGET) | **get** /api/query/enums/ticket-verified-status | getAllEnumTicketVerifiedStatus
[**getAllEnumTimeLabelsUsingGET**](AggregateQueryResourceApi.md#getAllEnumTimeLabelsUsingGET) | **get** /api/query/enums/time-labels | getAllEnumTimeLabels
[**getAllEnumWarrantyTypesUsingGET**](AggregateQueryResourceApi.md#getAllEnumWarrantyTypesUsingGET) | **get** /api/query/enums/warranty-types | getAllEnumWarrantyTypes
[**getAllProductDetailsByCategoryIdUsingGET**](AggregateQueryResourceApi.md#getAllProductDetailsByCategoryIdUsingGET) | **get** /api/query/productDetails/category/{categoryId} | getAllProductDetailsByCategoryId
[**getAllServedProductsByCustomerIdUsingGET**](AggregateQueryResourceApi.md#getAllServedProductsByCustomerIdUsingGET) | **get** /api/query/servedProduct/{customerId} | getAllServedProductsByCustomerId
[**getAllTicketsByCustomerIdUsingGET**](AggregateQueryResourceApi.md#getAllTicketsByCustomerIdUsingGET) | **get** /api/query/tickets/{customerId} | getAllTicketsByCustomerId
[**getCustomerContactDetailsByTicketIDUsingGET**](AggregateQueryResourceApi.md#getCustomerContactDetailsByTicketIDUsingGET) | **get** /api/query/getCustomerContactDetailsByTicketID/{ticketId} | getCustomerContactDetailsByTicketID
[**getServiceRequestDetailsByProductIdUsingGET**](AggregateQueryResourceApi.md#getServiceRequestDetailsByProductIdUsingGET) | **get** /api/query/getServiceRequestDetailsByProductId/{productId} | getServiceRequestDetailsByProductId
[**getServiceRequestDetailsForNewProductUsingGET**](AggregateQueryResourceApi.md#getServiceRequestDetailsForNewProductUsingGET) | **get** /api/query/getServiceRequestDetailsForNewProduct | getServiceRequestDetailsForNewProduct
[**getTicketByIdUsingGET**](AggregateQueryResourceApi.md#getTicketByIdUsingGET) | **get** /api/query/ticket/{id} | getTicketById


# **getAllEnumServiceLocationsUsingGET**
> List<String> getAllEnumServiceLocationsUsingGET(page, size, sort)

getAllEnumServiceLocations

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumServiceLocationsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllEnumServiceLocationsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEnumServiceTypesUsingGET**
> List<String> getAllEnumServiceTypesUsingGET(page, size, sort)

getAllEnumServiceTypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumServiceTypesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllEnumServiceTypesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEnumTicketStatusUsingGET**
> List<String> getAllEnumTicketStatusUsingGET(page, size, sort)

getAllEnumTicketStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumTicketStatusUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllEnumTicketStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEnumTicketVerifiedStatusUsingGET**
> List<String> getAllEnumTicketVerifiedStatusUsingGET(page, size, sort)

getAllEnumTicketVerifiedStatus

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumTicketVerifiedStatusUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllEnumTicketVerifiedStatusUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEnumTimeLabelsUsingGET**
> List<String> getAllEnumTimeLabelsUsingGET(page, size, sort)

getAllEnumTimeLabels

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumTimeLabelsUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllEnumTimeLabelsUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEnumWarrantyTypesUsingGET**
> List<String> getAllEnumWarrantyTypesUsingGET(page, size, sort)

getAllEnumWarrantyTypes

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllEnumWarrantyTypesUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllEnumWarrantyTypesUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProductDetailsByCategoryIdUsingGET**
> List<ProductDetailAggregate> getAllProductDetailsByCategoryIdUsingGET(categoryId, page, size, sort)

getAllProductDetailsByCategoryId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var categoryId = 789; // int | categoryId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllProductDetailsByCategoryIdUsingGET(categoryId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllProductDetailsByCategoryIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| categoryId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<ProductDetailAggregate>**](ProductDetailAggregate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllServedProductsByCustomerIdUsingGET**
> PageOfServedProductAggregate getAllServedProductsByCustomerIdUsingGET(customerId, page, size, sort)

getAllServedProductsByCustomerId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var customerId = 789; // int | customerId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllServedProductsByCustomerIdUsingGET(customerId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllServedProductsByCustomerIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| customerId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**PageOfServedProductAggregate**](PageOfServedProductAggregate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllTicketsByCustomerIdUsingGET**
> List<Object> getAllTicketsByCustomerIdUsingGET(customerId, page, size, sort)

getAllTicketsByCustomerId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var customerId = 789; // int | customerId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getAllTicketsByCustomerIdUsingGET(customerId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getAllTicketsByCustomerIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| customerId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**List<Object>**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerContactDetailsByTicketIDUsingGET**
> AddressAggregate getCustomerContactDetailsByTicketIDUsingGET(ticketId, page, size, sort)

getCustomerContactDetailsByTicketID

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var ticketId = 789; // int | ticketId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getCustomerContactDetailsByTicketIDUsingGET(ticketId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getCustomerContactDetailsByTicketIDUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **int**| ticketId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**AddressAggregate**](AddressAggregate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceRequestDetailsByProductIdUsingGET**
> ProductServiceAggregate getServiceRequestDetailsByProductIdUsingGET(productId, page, size, sort)

getServiceRequestDetailsByProductId

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var productId = 789; // int | productId
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getServiceRequestDetailsByProductIdUsingGET(productId, page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getServiceRequestDetailsByProductIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **int**| productId | [default to null]
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**ProductServiceAggregate**](ProductServiceAggregate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServiceRequestDetailsForNewProductUsingGET**
> ProductServiceAggregate getServiceRequestDetailsForNewProductUsingGET(page, size, sort)

getServiceRequestDetailsForNewProduct

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var page = 56; // int | Page number of the requested page
var size = 56; // int | Size of a page
var sort = []; // List<String> | Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try { 
    var result = api_instance.getServiceRequestDetailsForNewProductUsingGET(page, size, sort);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getServiceRequestDetailsForNewProductUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number of the requested page | [optional] [default to null]
 **size** | **int**| Size of a page | [optional] [default to null]
 **sort** | [**List&lt;String&gt;**](String.md)| Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] [default to const []]

### Return type

[**ProductServiceAggregate**](ProductServiceAggregate.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketByIdUsingGET**
> Object getTicketByIdUsingGET(id)

getTicketById

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new AggregateQueryResourceApi();
var id = 789; // int | id

try { 
    var result = api_instance.getTicketByIdUsingGET(id);
    print(result);
} catch (e) {
    print("Exception when calling AggregateQueryResourceApi->getTicketByIdUsingGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

