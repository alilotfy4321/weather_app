// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReportFirstPart extends StatelessWidget {
  ReportFirstPart(this.list, this.color,{super.key});
  List list;
  var color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        list.length,
        (index) => Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            height: 150,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      '${list[index].title}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${list[index].degree}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        ' ْ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
