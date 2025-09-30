part of 'featured_cubit_cubit.dart';

abstract class FeaturedState extends Equatable {
  const FeaturedState();

  @override
  List<Object> get props => [];
}

class FeaturedInitialState extends FeaturedState {}

class FeaturedLoadState extends FeaturedState {}

class FeaturedSucessState extends FeaturedState {
  final List<BookModel> books;

  const FeaturedSucessState({required this.books});
}

class FeaturedFailurState extends FeaturedState {
  final String erMessage;

  const FeaturedFailurState({required this.erMessage});
}
