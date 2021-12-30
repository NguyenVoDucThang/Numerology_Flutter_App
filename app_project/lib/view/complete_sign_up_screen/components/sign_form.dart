import 'package:app_project/models/main_number.dart';
import 'package:app_project/view/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
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
  late String name;
  late DateTime? birthday;

  late FocusNode birthdayFocusNode;

  void _onFocusChange() {
    if (!birthdayFocusNode.hasFocus) {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      DatePicker.showDatePicker(context,
          showTitleActions: true,
          minTime: DateTime(2018, 3, 5),
          maxTime: DateTime(2021, 6, 7),
          onChanged: (date) {},
          onConfirm: (date) {},
          currentTime: DateTime.now(),
          locale: LocaleType.zh);
    }
  }

  @override
  void initState() {
    super.initState();

    birthdayFocusNode = FocusNode();
    birthdayFocusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    birthdayFocusNode.dispose();
    birthdayFocusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  TextEditingController birthdayController = TextEditingController();
  late Numerology numerologyData;
  @override
  Widget build(BuildContext context) {
    numerologyData = Provider.of<Numerology>(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          const SizedBox(height: 46),
          buildBirthdayFormField(),
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

  TextFormField buildNameFormField() {
    final validCharacters = RegExp(r'^[a-zA-Z]+$');
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      onSaved: (newValue) => name = newValue!,
      onChanged: (value) {
        if (validCharacters.hasMatch(value) &&
            errors.contains('Invalid characters in your name')) {
          setState(() {
            errors.remove('Invalid characters in your name');
          });
        }
        return;
      },
      validator: (value) {
        if (!validCharacters.hasMatch(value!) &&
            !errors.contains('Invalid characters in your name')) {
          setState(() {
            errors.add('Invalid characters in your name');
          });
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your full name',
        labelText: 'Name',
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
          child: SvgPicture.asset(
            'assets/icons/User.svg',
            height: 14,
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

  TextFormField buildBirthdayFormField() {
    return TextFormField(
      //focusNode: birthdayFocusNode,
      //onSaved: (newValue) => birthday = newValue!,
      controller: birthdayController,
      onChanged: (value) {},
      validator: (value) {},
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());

        birthday = await DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          minTime: DateTime(1900, 1, 1),
          maxTime: DateTime.now(),
          locale: LocaleType.en,
        );
        if (birthday != null) {
          birthdayController.text = DateFormat('yyyy-MM-dd').format(birthday!);
        }
      },
      decoration: InputDecoration(
        hintText: 'Enter your birthday',
        labelText: 'Birthday',
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
          child: SvgPicture.asset(
            'assets/icons/Gift Icon.svg',
            height: 14,
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
    var numerology = Provider.of<Numerology>(context, listen: false);
    numerology.setName(name);
    numerology.setBirthday(birthday!);
    Navigator.of(context).pushNamed(MainScreen.routeName);
  }
}
