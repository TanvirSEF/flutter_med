import 'package:doctime/consts/consts.dart';
import 'package:doctime/views/appointment_details/appointment_details.dart';
import 'package:doctime/views/appointment_view/appointment.dart';
import 'package:doctime/views/category_view/category_view.dart';
import 'package:doctime/views/home/home.dart';
import 'package:doctime/views/login_view/login_view.dart';
import 'package:doctime/views/settings/settings_view.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  int selectedIndex = 0;
  List screenList =[
     const Home(),
      const AppointmentDetails(),
    const CategoryView(),
    const LoginView(),
    const SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex) ,
      bottomNavigationBar:BottomNavigationBar(
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: AppColors.whiteColor,
        selectedLabelStyle: TextStyle(
          color: AppColors.whiteColor,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.blueColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value){
         setState(() {
           selectedIndex = (value);
         });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "Appointments"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Doctor"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
        ],
      ) ,
    );
  }
}
