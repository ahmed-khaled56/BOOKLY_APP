import 'package:bookly_app/features/home/presentation/view/widgets/AppBar_custom.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [AppbarCustom()]);
  }
}
