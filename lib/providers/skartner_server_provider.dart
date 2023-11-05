import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/providers/firebase_providers.dart';
import 'package:skartner_app/utils/environment_vars.dart';
import 'package:skartner_app/utils/errors_utils.dart';

final skartnerServerDioProvider = Provider((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: '${EnvironmentVars.skartnerServer}',
    ),
  );
  dio.interceptors.add(AuthInterceptor(auth: ref.watch(authProvider)));
  dio.interceptors.add(ErrorInterceptor());
  return dio;
});

final skartnerServerProvider = Provider(
  (ref) => SkartnerServer(
    dio: ref.watch(skartnerServerDioProvider),
  ),
);

class SkartnerServer {
  final Dio _dio;

  SkartnerServer({
    required Dio dio,
  }) : _dio = dio;

  Future<ApiUser> getUser() async {
    try {
      final res = await _dio.get(
        '/sample/user',
      );
      return ApiUser.fromJson(res.data);
    } on DioException catch (err) {
      final errorMessage = err.response!.data['message'];
      throw errorMessage;
    }
  }
}

class AuthInterceptor extends Interceptor {
  final FirebaseAuth _auth;

  AuthInterceptor({
    required FirebaseAuth auth,
  }) : _auth = auth;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _auth.currentUser?.getIdToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      final responseData = err.response!.data;
      reportSkartnerServerError(responseData['message']);

      // TODO: redirect to login page, if token is invalid

      // final statusCode = err.response!.statusCode!;
      // if (statusCode >= 400) {
      //   // Handle error based on status code
      //   if (statusCode == 401) {
      //     // Unauthorized: Token expired or invalid, for example
      //     // Redirect to login or refresh token
      //   } else {
      //     // Handle other status codes
      //     // You can also parse the response data for more details
      //     final responseData = err.response!.data;
      //     // Perform custom error handling based on the responseData

      //     print('responseData');
      //     print(responseData);
      //   }
      // }
    }

    handler.next(err);
  }
}

class Meta {
  final String defaultGreWordSearchPromptInput;

  Meta({
    required this.defaultGreWordSearchPromptInput,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      defaultGreWordSearchPromptInput:
          json['defaultGreWordSearchPromptInput'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'defaultGreWordSearchPromptInput': defaultGreWordSearchPromptInput,
    };
  }
}

class ApiUser {
  final String id;
  final String email;
  final Meta meta;
  final DateTime createdAt;
  final DateTime updatedAt;

  ApiUser({
    required this.id,
    required this.email,
    required this.meta,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ApiUser.fromJson(Map<String, dynamic> json) {
    return ApiUser(
      id: json['id'] as String,
      email: json['email'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'meta': meta.toJson(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
