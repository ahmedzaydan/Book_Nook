import 'package:book_nook/core/errors/failure_messages.dart';
import 'package:book_nook/core/utils/constants.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  const Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required String message}) : super(message: message);

  factory ServerFailure.fromDioException({
    required DioException dioException,
  }) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: FailureMessages.connnectionTimeout);
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: FailureMessages.sendTimeout);
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: FailureMessages.receiveTimeout);
      case DioExceptionType.badCertificate:
        return ServerFailure(message: FailureMessages.badCertificate);
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          statusCode: dioException.response!.statusCode!,
          responseJson: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(message: FailureMessages.cancel);
      case DioExceptionType.connectionError:
        return ServerFailure(message: FailureMessages.connectionError);
      case DioExceptionType.unknown:
        if (dioException.message!.contains(Constants.socketException)) {
          return ServerFailure(message: FailureMessages.noInternetConnection);
        }
        return ServerFailure(message: FailureMessages.unknown);
      default:
        return ServerFailure(message: FailureMessages.unknown);
    }
  }

  factory ServerFailure.fromResponse({
    required int statusCode,
    required Map<String, dynamic> responseJson,
  }) {
    switch (statusCode) {
      case 400:
        return ServerFailure(
          message: responseJson[Constants.errorField][Constants.messageField],
        );
      case 401:
        return ServerFailure(
          message: responseJson[Constants.errorField][Constants.messageField],
        );
      case 403:
        return ServerFailure(
          message: responseJson[Constants.errorField][Constants.messageField],
        );
      case 404:
        return ServerFailure(message: FailureMessages.notFound);
      case 409:
        return ServerFailure(
          message: responseJson[Constants.errorField][Constants.messageField],
        );
      case 500:
        return ServerFailure(message: FailureMessages.internalServerError);
      default:
        return ServerFailure(message: FailureMessages.unknown);
    }
  }
}


