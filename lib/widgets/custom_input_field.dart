import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {

  final String hintText;
  final bool suffixIcon;
  final bool prefixIcon;
  final bool? isDense;
  final bool obscureText;
  final TextEditingController? controller;
  final IconData iconss;

   CustomInputField(
      {Key? key,

        required this.iconss,
      required this.hintText,
      this.suffixIcon = false,
        this.prefixIcon = false,
      this.isDense,
      this.obscureText = false,
      this.controller})
      : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Column(
        children: [

          TextFormField(
            obscureText: (widget.obscureText && _obscureText),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff1B406D),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              isDense: (widget.isDense != null) ? widget.isDense : false,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon
                  ? IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.remove_red_eye
                            : Icons.visibility_off_outlined,
                        color: Color(0xff1B406D),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
              suffixIconConstraints: (widget.isDense != null)
                  ? const BoxConstraints(maxHeight: 33)
                  : null,

              prefixIcon: widget.prefixIcon
                  ? IconButton(
                icon: Icon(widget.iconss ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
                  : null,
              prefixIconConstraints: (widget.isDense != null)
                  ? const BoxConstraints(maxHeight: 33)
                  : null,




            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (textValue) {
              if (textValue == null || textValue.isEmpty) {
                return 'required!';
              }
              return null;
            },
            controller: widget.controller,
          ),
        ],
      ),
    );
  }
}
