import 'package:bookly_app/constants.dart';

import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/Book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key, required this.bookmodel});

  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: MediaQuery.of(context).size.height * .2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: bookmodel.volumeInfo!.imageLinks!.thumbnail!,
                fit: BoxFit.fill,

                errorWidget: (context, url, error) => Icon(Icons.error),
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Text(
                      bookmodel.volumeInfo!.title!,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,

                      style: Styles.TextStyle30,
                    ),
                  ),
                  (bookmodel.volumeInfo?.authors != null &&
                          bookmodel.volumeInfo!.authors!.isNotEmpty)
                      ? Text(
                          "${bookmodel.volumeInfo?.authors?[0]}",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.TextStyle12,
                        )
                      : const SizedBox(
                          child: Text("None", style: Styles.TextStyle12),
                        ),

                  const SizedBox(height: 3),
                  Row(
                    children: [
                      bookmodel.saleInfo?.listPrice?.amount != null
                          ? Text(
                              "${bookmodel.saleInfo?.listPrice?.amount ?? ""} ${bookmodel.saleInfo?.listPrice?.currencyCode ?? ''}",

                              style: Styles.TextStyle15.copyWith(
                                fontFamily: kGtSectraFine,
                              ),
                            )
                          : const SizedBox(child: Text('free'), width: 85),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: BookRating(
                          rate: bookmodel.volumeInfo?.rating ?? "0",
                          ratingsCount:
                              bookmodel.volumeInfo?.countRating ?? "0",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
