import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthCheckControllerApi
void main() {
  final instance = Openapi().getHealthCheckControllerApi();

  group(HealthCheckControllerApi, () {
    //Future<BuiltMap<String, String>> health() async
    test('test health', () async {
      // TODO
    });

  });
}
