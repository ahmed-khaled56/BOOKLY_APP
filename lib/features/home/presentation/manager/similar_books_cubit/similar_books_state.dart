part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> Books;

  SimilarBooksSuccess({required this.Books});
}

class SimilarBooksFailur extends SimilarBooksState {
  final String errormessage;

  SimilarBooksFailur({required this.errormessage});
}
