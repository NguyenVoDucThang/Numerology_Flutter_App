import 'package:flutter/material.dart';

import 'components/body.dart';

class GetPhoneNumberScreen extends StatelessWidget {
  static const String routeName = '/get_phone_number';

  const GetPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   leading: const IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       size: 20,
      //     ),
      //     onPressed: null,
      //   ),
      //   centerTitle: true,
      //   title: const Text(
      //     'About You',
      //   ),
      // ),
      body: Body(),
    );
  }
}
