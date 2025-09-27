import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_textfield.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_sharp),
          ),
          SizedBox(height: 8),
          CustomTextfield(),

          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Results', style: Styles.TextStyle15),
            ),
          ),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}
