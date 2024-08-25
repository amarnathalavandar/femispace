import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class FSDropdown extends StatefulWidget {
  const FSDropdown({
    super.key,
    this.dropdownValues = const ['Monthly ', 'Weekly ', 'Daily ', 'Yearly '], // Default values

  });
  final List<String> dropdownValues;

  @override
  State<FSDropdown> createState() => _FSDropdownState();
}

class _FSDropdownState extends State<FSDropdown> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.07),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          icon: const Icon(
            FluentIcons.chevron_down_16_filled,
            size: 30,
          ),
          value: _selectedValue ?? widget.dropdownValues.first,
          items: widget.dropdownValues
        .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.w500),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
