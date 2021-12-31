import 'package:app_project/models/main_number.dart';
import 'package:app_project/view/screens/main_screen.dart';
import 'package:app_project/view/screens/phone_number_screen/phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../address_number_screen.dart';
import 'form_error.dart';
import 'orange_button.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:gender_picker/gender_picker.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String address;

  late Numerology numerologyData;

  @override
  Widget build(BuildContext context) {
    numerologyData = Provider.of<Numerology>(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPhoneFormField(),
          const SizedBox(height: 8),
          FormError(errors: errors),
          GenderPickerWithImage(
            showOtherGender: true,
            verticalAlignedText: true,
            onChanged: null,
            equallyAligned: true,
            animationDuration: const Duration(milliseconds: 300),
            unSelectedGenderTextStyle: const TextStyle(
              color: Color.fromRGBO(98, 98, 98, 1),
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            selectedGenderTextStyle: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            size: 60,
          ),
          const SizedBox(height: 36),
          OrangeButton(
            text: 'Continue',
            onPress: routeToMeaningNumberScreen,
            isSolid: true,
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    MainNumber numberData = MainNumber(name: "hihi", birthday: DateTime.now());
    bool isValid = false;
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        address = value;
        isValid = numberData.getHouseNumberNumerology(address) == 0 ? false : true;
        if (isValid &&
            errors.contains('Invalid address')) {
          setState(() {
            errors.remove('Invalid address');
          });
        }
        return;
      },
      validator: (value) {
        if (isValid == false &&
            !errors.contains('Invalid address')) {
          setState(() {
            errors.add('Invalid address');
          });
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your address include number',
        labelText: 'Address number',
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: SvgPicture.asset(
            'assets/icons/Shop Icon.svg',
            height: 10,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: const TextStyle(
          color: Colors.deepPurple,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
      ),
    );
  }

  void routeToMeaningNumberScreen() {
    numerologyData.changeGetNumberStatus();
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {}
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddressNumberScreen(),
        // Pass the arguments as part of the RouteSettings. The
        // DetailScreen reads the arguments from these settings.
        settings: RouteSettings(
          arguments: {'address': address},
        ),
      ),
    );
  }
}
