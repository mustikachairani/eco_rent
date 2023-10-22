import 'package:eco_rent/main.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'EcoRent',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
                height: 15,
              ),
              Text('RENTAL PERLENGKAPAN OUTDOOR'),
              SizedBox(
                height: 35,
              ),
              buildTextField('Username'),
              SizedBox(
                height: 10,
              ),
              buildTextField('Email Address'),
              SizedBox(
                height: 15,
              ),
              buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }

  buildLoginButton() {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(fontSize: 18.0),
        ));
  }
}
