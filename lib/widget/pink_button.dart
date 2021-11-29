import 'package:flutter/material.dart';

class PinkButton extends StatelessWidget {
  const PinkButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 0, 40, 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
