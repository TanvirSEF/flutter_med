import 'package:doctime/consts/lists.dart';

import '../../consts/consts.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppStyles.bold(title: AppStrings.category, size: AppSizes.size18),
      ),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 200,
      ),
        itemCount: iconsList.length,
        itemBuilder: (BuildContext context, int index){
        return Container(
          color: Colors.green,
        );
        }
      ),
    );
    }
}
