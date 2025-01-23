import 'package:flutter/material.dart';
import 'package:healthdemo_app/data/health_json.dart';

class ModalanotherhealthPage extends StatelessWidget {
  const ModalanotherhealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: healthbottomanother.length,
        itemBuilder: (context, index) {
          final item = healthbottomanother[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
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
            ),
          );
        },
      ),
    );
  }
}