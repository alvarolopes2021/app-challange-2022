import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ispfinder/services/utils.dart';
import "package:latlong2/latlong.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('assets/logos/isp_64x64.png'),

        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Usuário',
          ),
        ),

        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',            
          ),
          obscuringCharacter: "•",
        ),

      ],
    ));
  }
}
