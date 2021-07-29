import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  InputText({
    Key? key,
    this.textController,
    this.focusNode,
    this.autoFocus,
    this.backgroundColor,
    this.height,
    this.hint,
    this.hintStyle,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.width,
    bool? isPassword,
  })  : this.isPassword = isPassword ?? false,
        super(key: key);

  final TextEditingController? textController;
  final FocusNode? focusNode;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? hint;
  final TextStyle? hintStyle;
  final double? width;
  final double? height;
  final bool? autoFocus;
  final Color? backgroundColor;
  final Function(String?)? onChanged;
  final bool isPassword;

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _visible = false;

  _visibility() {
    _visible = !_visible;
    setState(() {});
  }

  @override
  void dispose() {
    if (widget.focusNode != null) {
      widget.focusNode!.dispose();
    }
    if (widget.textController != null) {
      widget.textController!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        controller: widget.textController,
        onChanged: widget.onChanged,
        autofocus: widget.autoFocus ?? false,
        focusNode: widget.focusNode,
        obscureText: widget.isPassword ? !_visible : false,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.backgroundColor,
          hintText: widget.hint,
          hintStyle: widget.hintStyle ??
              TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon:
                      Icon(_visible ? Icons.visibility : Icons.visibility_off),
                  onPressed: _visibility,
                  color: Colors.red,
                )
              : SizedBox.shrink(),
        ),
      ),
    );
  }
}
