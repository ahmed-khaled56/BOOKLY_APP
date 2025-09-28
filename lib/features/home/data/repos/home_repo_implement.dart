import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/errors/failurs.dart';
import 'package:bookly_app/core/utlis/api_servisce.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  HomeRepoImplement(this.apiServisce);
  final ApiServisce apiServisce;
  Future<Either<Failurs, List<BookModel>>> fetcNewestBooks() async {
    // TODO: implement fetchBestSellerBooks
    try {
      var data = await apiServisce.get(endpont: kEndPoint);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
        return right(books);
      }
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailur.fromDioExption(e));
      }
      return left(ServerFailur(e.toString()));
      // TODO
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failurs, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
