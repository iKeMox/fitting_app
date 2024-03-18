import 'package:flutter/material.dart';
import 'package:graduation_project_fitting_app/features/categorise/pages/categorise_view.dart';
import 'package:graduation_project_fitting_app/features/login/pages/login_view.dart';

class CategoriesWidget extends StatelessWidget {
  String imageLink;
  String categoryName;


  CategoriesWidget({super.key, required this.imageLink, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, CategoriseView.routeName);
        print(categoryName);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1,
          color: Colors.grey.shade700
          )
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.shade700,

              child: Image.asset(imageLink),
            ),
            SizedBox(height: 8),
            Text(categoryName, style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey.shade700))
          ],
        ),
      ),
    );
  }
}
