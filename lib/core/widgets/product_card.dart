import 'package:flutter/material.dart';
import 'package:graduation_project_fitting_app/features/login/pages/login_view.dart';
import 'package:graduation_project_fitting_app/features/product/pages/product_view.dart';
import 'package:iconsax/iconsax.dart';
import 'package:like_button/like_button.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductView.routeName);
        print("pppppppppppppppppppppppppppppppppppppppppppppp");
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/banner2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: SizedBox(
                height: 24,
                child: LikeButton(
                  size: 23,
                  animationDuration: Duration(milliseconds: 500),
                  likeBuilder: (isLiked) {
                    if (isLiked)
                      return Icon(
                        Iconsax.heart5,
                        size: 24,
                        color: Colors.red,
                      );
                    if (!isLiked)
                      return Icon(
                        Iconsax.heart5,
                        size: 24,
                        color: Colors.white,
                      );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                    overflow: TextOverflow.ellipsis,
                    'Product Name',
                    style: theme.textTheme.bodyMedium
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}