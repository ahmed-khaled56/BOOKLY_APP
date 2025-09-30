import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestdBooks() async {
    emit(NewestLoadState());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failur) {
        emit(NewestFailurState(erMessage: failur.errorMessage));
      },
      (books) {
        emit(NewestSucessState(books: books));
      },
    );
  }
}
