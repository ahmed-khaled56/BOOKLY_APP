part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestLoadState extends NewestBooksState {}

class NewestSucessState extends NewestBooksState {
  final List<BookModel> books;

  const NewestSucessState({required this.books});
}

class NewestFailurState extends NewestBooksState {
  final String erMessage;

  const NewestFailurState({required this.erMessage});
}
