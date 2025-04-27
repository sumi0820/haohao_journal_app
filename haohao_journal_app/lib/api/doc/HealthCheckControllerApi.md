# haohao_journal_api.api.HealthCheckControllerApi

## Load the API package
```dart
import 'package:haohao_journal_api/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health**](HealthCheckControllerApi.md#health) | **GET** /health | 


# **health**
> BuiltMap<String, String> health()



### Example
```dart
import 'package:haohao_journal_api/api.dart';

final api = HaohaoJournalApi().getHealthCheckControllerApi();

try {
    final response = api.health();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthCheckControllerApi->health: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltMap&lt;String, String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

