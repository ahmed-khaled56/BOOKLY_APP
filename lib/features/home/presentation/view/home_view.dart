import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    fetchFeaturedBooks();
  }

  void fetchFeaturedBooks() async {
    await BlocProvider.of<FeaturedCubitCubit>(context).fetchFeaturerdBooks();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeViewBody());
  }
}
