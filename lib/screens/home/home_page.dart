import 'package:flutter/material.dart';
import 'package:healthdemo_app/screens/widgets/doctor_profile.dart';
import 'package:healthdemo_app/screens/widgets/healthneed.dart';
import 'package:healthdemo_app/screens/widgets/nearby_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Jane',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: 'Poppins'),
            ),
            Text(
              'How are you feeling today?',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 12.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Image.asset(
                'assets/images/notification.png',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black12),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/images/search.png',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(14),
        children: [
          DoctorProfile(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Health Needs',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Healthneed(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nearby Doctor',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          NearbyPage(),
        ],
      ),
    );
  }
}
