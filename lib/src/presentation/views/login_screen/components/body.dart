import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/home/home_bloc.dart';
import 'package:smart_ix/src/presentation/blocs/routines/routines_bloc.dart';

import '../../../../config/colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/screen_config.dart';
import '../../home_screen/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late final _formKey;
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                loginScreenImagePath,
                height: getThirtyPercentOfHeight(),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        smartString,
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: Colors.black, fontSize: 33),
                      ),
                      Text(
                        homeString,
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: color_11,
                          fontSize: 40,
                          fontFamily: "Poppins",
                          shadows: <Shadow>[
                            const Shadow(
                              offset: Offset(5.0, 5.0),
                              blurRadius: 3.0,
                              color: color_0,
                            ),
                            const Shadow(
                              offset: Offset(5.0, 5.0),
                              blurRadius: 8.0,
                              color: color_5,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              signIntoString,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              validator: (value) {
                return context.read<HomeBloc>().fieldValidation(value, false);
              },
              controller: usernameController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  hintText: usernameString,
                  suffixIcon: const Icon(
                    Icons.email,
                    color: Colors.black,
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                return context.read<HomeBloc>().fieldValidation(value, true);
              },
              controller: passwordController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 40.0, right: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  hintText: passwordString,
                  suffixIcon: const Icon(
                    Icons.lock,
                    color: Colors.black,
                  )),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  context.read<RoutinesBloc>().setUsernameAndPassword(
                      usernameController.value.text, passwordController.value.text);
                  Navigator.of(context).pushReplacementNamed(homeScreen);
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: color_16,
                  borderRadius: BorderRadius.circular(70.0),
                ),
                alignment: Alignment.center,
                child: const Text(
                  getStartedString,
                  style: TextStyle(color: color_0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Center(child: Text(doNotHaveAccountString))
        ],
      ),
    );
  }
}
