import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project_fitting_app/core/widgets/custom_text_field.dart';
import 'package:graduation_project_fitting_app/core/widgets/product_card.dart';
import 'package:graduation_project_fitting_app/features/home/widgets/categories_widget.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, right: 10, left: 10),
        child: SizedBox(
          height: mediaQuery.height,
          width: mediaQuery.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Search",
                      hintStyle: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Iconsax.search_normal_14),
                        onPressed: () {

                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: CarouselSlider(
                        items: [
                          Image.asset(
                            "assets/images/banner1.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/banner2.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/banner3.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/banner4.jpg",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/banner5.jpg",
                            fit: BoxFit.contain,
                          ),
                        ],
                        options: CarouselOptions(
                          viewportFraction: 1,
                          autoPlay: true,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Categories",
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: Colors.grey.shade700, fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoriesWidget(
                      imageLink: "assets/images/fashion_cat.png",
                      categoryName: "Fashion",
                    ),
                    CategoriesWidget(
                        imageLink: "assets/images/men_cat.png",
                        categoryName: "Men"),
                    CategoriesWidget(
                        imageLink: "assets/images/women_cat.png",
                        categoryName: "Women"),
                    CategoriesWidget(
                        imageLink: "assets/images/kids_cat.png",
                        categoryName: "Kids"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Popular",
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: Colors.grey.shade700, fontSize: 14),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 870,
                  child: GridView(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    // scrollDirection: Axis.vertical,
                    children: [
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
