import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({super.key});

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  int selectedChoiceIndex = 0;

  void handleChipSelected(int index) {
    setState(() {
      selectedChoiceIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List<Widget>.generate(4, (int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: ChoiceChip(
                label: SizedBox(
                  height: 25,
                  width: index == 0
                      ? 80
                      : index == 1
                          ? 57
                          : index == 2
                              ? 113
                              : 61,
                  child: Center(
                    child: Text(
                      index == 0
                          ? 'Discover'
                          : index == 1
                              ? 'News'
                              : index == 2
                                  ? 'Most Viewed'
                                  : 'Saved',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: selectedChoiceIndex == index
                            ? const Color(0xFF6941C6)
                            : const Color(0xFF667085),
                      ),
                    ),
                  ),
                ),
                showCheckmark: false,
                side: BorderSide(
                  color: selectedChoiceIndex == index
                      ? const Color(0xFFD6BBFB)
                      : const Color(0xFFE4E7EC),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                ),
                selectedColor: const Color(0xFFF4EBFF),
                backgroundColor: const Color(0xFFF9FAFB),
                selected: selectedChoiceIndex == index,
                onSelected: (bool selected) {
                  setState(() {
                    handleChipSelected(index);
                  });
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
