import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';
import 'package:like_button/like_button.dart';

class FavoritesCard extends StatefulWidget {
  const FavoritesCard({super.key});

  @override
  State<FavoritesCard> createState() => _FavoritesCardState();
}

class _FavoritesCardState extends State<FavoritesCard> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            padding: EdgeInsets.zero,

          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          width: mediaQuery.width,
          height: 100,
          child: Row(
            children: [
              SizedBox(
                height: 100,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/men_cat.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('SHIRT'),
                            LikeButton(
                              size: 23,
                              animationDuration:
                              const Duration(milliseconds: 500),
                              likeBuilder: (isLiked) {
                                if (isLiked) {
                                  return const Icon(
                                    Iconsax.heart5,
                                    size: 24,
                                    color: Colors.white,
                                  );
                                }
                                if (!isLiked) {
                                  return const Icon(
                                    Iconsax.heart5,
                                    size: 24,
                                    color: Colors.red,
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, bottom: 10),
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Try it',
                          style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}