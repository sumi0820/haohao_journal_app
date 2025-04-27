import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:openapi/src/api/health_check_controller_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';

// モッククラスを生成するためのアノテーション
@GenerateMocks([], customMocks: [
  MockSpec<HealthCheckControllerApi>(as: #MockHealthCheckControllerApi),
])
import 'health_check_controller_test.mocks.dart';

void main() {
  late MockHealthCheckControllerApi mockApi;

  setUp(() {
    mockApi = MockHealthCheckControllerApi();
  });

  group('HealthCheckController Tests', () {
    test('healthCheck returns success response', () async {
      // モックの設定
      final expectedData = BuiltMap<String, String>({
        'status': 'UP',
        'timestamp': DateTime.now().toIso8601String(),
      });

      when(mockApi.health()).thenAnswer((_) async {
        return Response<BuiltMap<String, String>>(
          requestOptions: RequestOptions(path: '/health'),
          statusCode: 200,
          data: expectedData,
        );
      });

      // テスト実行
      final response = await mockApi.health();

      // 検証
      expect(response.statusCode, equals(200));
      expect(response.data, equals(expectedData));
      expect(response.data?['status'], equals('UP'));
      expect(response.data?['timestamp'], isNotNull);

      // モックが呼び出されたことを確認
      verify(mockApi.health()).called(1);
    });

    test('healthCheck returns error response', () async {
      // エラーレスポンスのモック設定
      when(mockApi.health()).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: '/health'),
          response: Response<BuiltMap<String, String>>(
            requestOptions: RequestOptions(path: '/health'),
            statusCode: 500,
            data: BuiltMap<String, String>({'error': 'Internal Server Error'}),
          ),
        ),
      );

      // エラーがスローされることを期待
      expect(
        () => mockApi.health(),
        throwsA(isA<DioException>()),
      );

      // モックが呼び出されたことを確認
      verify(mockApi.health()).called(1);
    });
  });
}
