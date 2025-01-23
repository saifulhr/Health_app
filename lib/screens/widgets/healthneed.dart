import 'package:flutter/material.dart';
import 'package:healthdemo_app/data/health_json.dart';
import 'package:healthdemo_app/screens/widgets/modalanotherhealth_page.dart';
import 'package:healthdemo_app/screens/widgets/modalhealth.dart';

class Healthneed extends StatelessWidget {
  const Healthneed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: health.length,
        itemBuilder: (context, index) {
          final item = health[index];
          return Row(
            children: [
              SizedBox(
                width: 15.5,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  item['text'] == 'More'
                      ? GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              context: context,
                              builder: (context) {
                                return SingleChildScrollView(
                                  child: Container(
                                    width: double.infinity,
                                    height: 410,
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Health Needs",
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Modalhealth(),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "Health Needs",
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        ModalanotherhealthPage(),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xfff7f8ff),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                '${item['image']}',
                                height: 30,
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xfff7f8ff),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              '${item['image']}',
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                  SizedBox(height: 8),
                  Text(
                    '${item['text']}',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
