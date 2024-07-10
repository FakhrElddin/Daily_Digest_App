import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Connection timeout wiht ApiSever',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessage: 'Send timeout wiht ApiSever',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: 'Receive timeout wiht ApiSever',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessage:
              'There was a problem verifying the server\s security certificate',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage: 'Request to ApiServer was Canceled',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: 'No Internet Connection, Please check your network',
        );
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? false) {
          return ServerFailure(
            errorMessage: 'No Internet Connection',
          );
        } else {
          return ServerFailure(
            errorMessage: 'Unexpected error, Please try again!',
          );
        }
      default:
        return ServerFailure(
          errorMessage: 'Opps There was an error, Please try again',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode != 404) {
      return ServerFailure(
        errorMessage: response['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMessage: 'Your request not found, Please try later!',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMessage: 'Internal Server error, Please try later!',
      );
    } else {
      return ServerFailure(
        errorMessage: 'Opps There was an error, Please try again',
      );
    }
  }
}
