import 'package:test/test.dart';
import 'package:haohao_journal_api/haohao_journal_api.dart';


/// tests for HealthCheckControllerApi
void main() {
  final instance = HaohaoJournalApi().getHealthCheckControllerApi();

  group(HealthCheckControllerApi, () {
    //Future<BuiltMap<String, String>> health() async
    test('test health', () async {
      // TODO
    });

  });
}
