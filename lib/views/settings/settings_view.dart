import 'package:doctime/consts/consts.dart';
import 'package:doctime/consts/lists.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(title: AppStrings.settings, color: AppColors.whiteColor,size: AppSizes.size18),
        backgroundColor: AppColors.blueColor,
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Image.asset(AppAssets.imgsign),),
            title: AppStyles.bold(title: "Username"),
            subtitle: AppStyles.normal(title: "user_email@gmail.com"),
          ),
         const Divider(),
          10.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(settingsList.length, (index)=> ListTile(
              onTap: (){},
              leading: Icon(settingsListIcon[index],
              color: AppColors.blueColor,),
              title: AppStyles.bold(title: settingsList[index],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
