import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_cubit_state.dart';

class FeaturedCubitCubit extends Cubit<FeaturedState> {
  FeaturedCubitCubit(this.homeRepo) : super(FeaturedInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturerdBooks() async {
    emit(FeaturedLoadState());

    var result = await homeRepo.fetchFeaturedBooks();
    print(result);
    result.fold(
      (failur) {
        emit(FeaturedFailurState(erMessage: failur.errorMessage));
      },
      (books) {
        emit(FeaturedSucessState(books: books));
      },
    );
  }
}
