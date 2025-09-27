import 'package:bookly_app/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: kPrimaryColor, actions: []),
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
