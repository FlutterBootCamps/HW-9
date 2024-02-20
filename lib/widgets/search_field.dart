import 'package:flutter/material.dart';
import 'package:game_store/utils/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key, required this.label, required this.hint,
  });
  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 299.14,
      height: 55.77,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset("assets/icons/search.png"),
          fillColor: darkGreyColor,
          filled: true,
          hintText: hint,
          hintStyle: const TextStyle(color: whiteColor, fontFamily: "InriaSans"),
          label: Text(
            label,
            style: const TextStyle(
                color: whiteColor,
                fontFamily: "InriaSans",
                fontSize: 18.51,
                fontWeight: FontWeight.w200),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.63),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(4.63))),
        ),
      ),
    );
  }
}
