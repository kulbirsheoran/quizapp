import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return
      Container(

        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            LayoutBuilder(
                builder: (context, constraints) => Container(

                      width: constraints.maxWidth * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text("18 sec"),

                    Icon(Icons.alarm)
                ],
              ),
                  )),
            )
          ],
        ),
      );
  }
}
