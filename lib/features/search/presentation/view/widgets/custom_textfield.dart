import 'package:flutter/material.dart';

var searchText;
TextEditingController _controller = TextEditingController();

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 50,
        child: TextField(
          controller: _controller,
          onSubmitted: (value) {
            print("value : $value");
            searchText = value;
          },
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                print("value : ${_controller.text}");
                searchText = _controller.text;
              },
              icon: Icon(Icons.search),
            ),
            hintText: 'Start search now',
            helperStyle: TextStyle(fontSize: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
          ),
        ),
      ),
    );
  }
}
