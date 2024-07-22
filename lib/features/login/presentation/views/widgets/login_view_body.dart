import 'package:flower_app/constants.dart';
import 'package:flower_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomRegularTextField(
            hintText: 'Enter Your Email :',
            icon: Icon(Icons.email),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomPasswordTextField(),
          const SizedBox(
            height: 20,
          ),
          const CustomButton(),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forget Password",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't you have an account ?",
                style: TextStyles.textStyle18Med,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign in",
                  style: TextStyles.textStyle18Med,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: customColor,
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        "Login",
        style: TextStyles.textStyle20Med.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({
    super.key,
  });

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isVisible,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.all(15),
        hintText: "Enter your password: ",
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: textFieldBorderColor,
            width: 0,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          icon: isVisible
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      ),
    );
  }
}

class CustomRegularTextField extends StatelessWidget {
  final TextInputType? textInputType;
  final String hintText;
  final Icon icon;
  const CustomRegularTextField({
    super.key,
    this.textInputType,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: false,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.all(15),
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: textFieldBorderColor,
            width: 0,
          ),
        ),
        suffixIcon: icon,
      ),
    );
  }
}
