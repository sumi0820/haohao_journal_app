# openapi.api.HealthCheckControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health**](HealthCheckControllerApi.md#health) | **GET** /health | 


# **health**
> Map<String, String> health()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = HealthCheckControllerApi();

try {
    final result = api_instance.health();
    print(result);
} catch (e) {
    print('Exception when calling HealthCheckControllerApi->health: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Map<String, String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

