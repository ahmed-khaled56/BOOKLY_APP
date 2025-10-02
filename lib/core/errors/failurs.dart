import 'package:dio/dio.dart';

abstract class Failurs {
  final String errorMessage;
  Failurs(this.errorMessage);
}

class ServerFailur extends Failurs {
  ServerFailur(super.errorMessage);

  factory ServerFailur.fromDioExption(DioException dioExption) {
    switch (dioExption.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailur('Connection Timeout with API Server');
      case DioExceptionType.sendTimeout:
        return ServerFailur('Send Timeout with API Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailur('Receive Timeout with API Server');
      case DioExceptionType.badCertificate:
        return ServerFailur('Bad Certificate with API Server');

      case DioExceptionType.badResponse:
        return ServerFailur.fromResponse(
          dioExption.response!.data!,
          dioExption.response!.statusCode!,
        );
      case DioExceptionType.cancel:
        return ServerFailur('Canceled Conection with API Server');
      case DioExceptionType.connectionError:
        return ServerFailur('Connection Error with API Server');
      case DioExceptionType.unknown:
        if (dioExption.message!.contains('SocketException')) {
          return ServerFailur('Internet Connection ereeor');
        }
        return ServerFailur('Unexpected Error!!, plse try later');

      default:
        return ServerFailur("Opps there is an error..plse try later!!");
    }
  }
  factory ServerFailur.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailur(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailur("Your Request not found..plse try later!!");
    } else if (statusCode == 500) {
      return ServerFailur("Server error..plse try later!!");
    } else {
      return ServerFailur("Opps there is an error..plse try later!!");
    }
  }
}
