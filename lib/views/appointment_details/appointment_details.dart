import '../../consts/consts.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(title: "Appointments", color: AppColors.whiteColor, size: AppSizes.size18),
      ),
      body: ListView.builder(
          itemCount: 4,
        itemBuilder: (BuildContext context, int index){
            return  ListTile(
              leading: CircleAvatar(child: Image.asset(AppAssets.imgsign),),
              title: AppStyles.bold(title: "Doctor Name"),
              subtitle: AppStyles.normal(title: "Appointment time", color: AppColors.textColor.withOpacity(0.5)),
            );
        },
      ),
    );
  }
}
