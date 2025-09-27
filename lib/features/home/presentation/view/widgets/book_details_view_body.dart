import 'package:bookly_app/features/home/presentation/view/widgets/Book_deatils_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Custom_appbar_details.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/also_like_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppbarDetails(),

              BookDeatilsSection(),

              Expanded(child: SizedBox(height: 50)),

              AlsoLikeListview(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
