import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DatePickerExample extends StatefulWidget {
  static const String routeName = 'DatePickerExample';

  const DatePickerExample({super.key});

  @override
  _DatePickerExampleState createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.only(top: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter Date ',
                style: GoogleFonts.fjordOne(
                    fontSize: 20.sp, fontStyle: FontStyle.italic)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DatePickerField(
                  label: 'Day',
                  initialValue: DateFormat('d').format(selectedDate),
                  onTap: () => _selectDate(context),
                ),
                SizedBox(width: 10),
                DatePickerField(
                  label: 'Month',
                  initialValue: DateFormat('MMM').format(selectedDate),
                  onTap: () => _selectDate(context),
                ),
                SizedBox(width: 10),
                DatePickerField(
                  label: 'Year',
                  initialValue: DateFormat('yyyy').format(selectedDate),
                  onTap: () => _selectDate(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}

class DatePickerField extends StatelessWidget {
  final String label;
  final String initialValue;
  final VoidCallback onTap;

  DatePickerField({
    required this.label,
    required this.initialValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(initialValue, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }
}
