import 'package:flutter/material.dart';

class AddOptionWidget extends StatefulWidget {
  const AddOptionWidget({super.key});

  @override
  State<AddOptionWidget> createState() => _AddOptionWidgetState();
}

class _AddOptionWidgetState extends State<AddOptionWidget> {
  @override
  bool _isChecked = false;

  Widget build(BuildContext context) {

    return   Container(
      width: double.infinity,
      //height: 500,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter task name';
                } else
                  return null;
              },
              decoration: InputDecoration(
                filled: true,
                //  fillColor: Colors.blue,

                enabled: true,
                hintText: "Enter option ",
                enabledBorder: OutlineInputBorder(

                ),

              ),
            ),
          ),
          Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value ?? false;
              });
            },
          ),

        ],
      ),
    );
  }
}
