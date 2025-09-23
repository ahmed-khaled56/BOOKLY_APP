import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_deatils_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Books_details_listView.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Custom_appbar_details.dart';
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

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BooksAction(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      topLeft: Radius.circular(14),
                    ),
                    backgrounColor: Colors.white,
                    textColor: Colors.black,
                    text: "19.99€",
                  ),
                  BooksAction(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      topRight: Radius.circular(14),
                    ),
                    backgrounColor: Color(0xFFEF8262),
                    textColor: Colors.white,
                    text: "Free preview",
                  ),
                ],
              ),
              Expanded(child: SizedBox(height: 50)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'You can also like',
                    style: Styles.TextStyle12.copyWith(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              BooksDetailsListview(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
