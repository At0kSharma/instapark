import 'package:flutter/material.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const Text(
          "I agree to",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(
              EdgeInsets.only(left: 5, right: 5),
            ),
          ),
          child: const Text(
            "Privacy Policy",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Text(
          "and",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.only(left: 5))),
          child: const Text(
            "Terms & Conditions",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
