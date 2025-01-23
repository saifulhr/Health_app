import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff5873d8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/doctorprofile.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'dr. Ruben Dorwart',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Dental Specialist',
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 35,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff5367c3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/calendar.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Today',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.lock_clock,
                      color: Colors.white70,
                    ),
                    Text(
                      '14:30-15:30AM',
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
