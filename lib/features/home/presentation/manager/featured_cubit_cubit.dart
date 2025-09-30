import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_cubit_state.dart';

class FeaturedCubitCubit extends Cubit<FeaturedState> {
  FeaturedCubitCubit() : super(FeaturedInitialState());
}
