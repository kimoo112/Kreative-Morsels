// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Constant/color.dart';
import 'package:flutter_application_1/TheBase.dart';
import 'package:rive/rive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Artboard? _riveArtboard;
  SMIInput<bool>? _idle;
  SMIInput<bool>? _closeEyes;
  SMIInput<bool>? _isChecking;
  SMIInput<bool>? _trigSuccess;
  SMIInput<bool>? _trigFail;
  SMIInput<double>? _numLook;
  late final TextEditingController? _emailController;
  late final TextEditingController? _passwordController;
  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/animation_login.riv').then(
      (data) async {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        var controller =
            StateMachineController.fromArtboard(artboard, 'Login Machine');
        if (controller != null) {
          artboard.addController(controller);
          _idle = controller.findInput('idle');
          _closeEyes = controller.findInput('isHandsUp');
          _isChecking = controller.findInput('isChecking');
          _trigSuccess = controller.findInput('trigSuccess');
          _trigFail = controller.findInput('trigFail');
          _numLook = controller.findInput('numLook');
        }
        setState(() {
          _riveArtboard = artboard;
          _idle?.value = true;
        });
      },
    );
    _emailController = TextEditingController();
    _emailController?.addListener(_emailListener);
    _passwordController = TextEditingController();
    _passwordController?.addListener(_passwordListener);
  }

  @override
  void dispose() {
    super.dispose();
    _emailController?.dispose();
    _passwordController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFD6E2EA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.34,
              child: _riveArtboard != null
                  ? Rive(
                      artboard: _riveArtboard!,
                    )
                  : const Center(
                      child: Text('Art Board null'),
                    ),
            ),
            _loginSection(context),
            SizedBox(
              height: 50,
            ),
            Text(
              "Kreative Morsels  ",
              style: TextStyle(
                color:corangee,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _loginSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: MediaQuery.of(context).size.height * 0.04,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Focus(
                onFocusChange: (hasFocus) {
                  if (hasFocus) {
                    _isChecking?.value = true;
                  } else {
                    _isChecking?.value = false;
                  }
                },
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                  child: TextFormField(
                    key: const ValueKey('username'),
                    controller: _emailController,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Focus(
                onFocusChange: (hasFocus) {
                  if (hasFocus) {
                    _isChecking?.value = false;
                    _closeEyes?.value = true;
                  } else {
                    _closeEyes?.value = false;
                  }
                },
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                  child: TextFormField(
                    key: const ValueKey('password'),
                    controller: _passwordController,
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                    vertical: MediaQuery.of(context).size.width * 0.01,
                  ),
                  child: ElevatedButton(
                    
                    style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(corange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        
                      ),
                    ),
                    
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      Future.delayed(const Duration(seconds: 2)).then((_) {
                        if (_emailController?.text.trim().toLowerCase() ==
                                'kimo12@gmail.com' &&
                            _passwordController?.text.trim() == 'kimo12') {
                          _trigSuccess?.value = true;
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => TheBase()));
                        } else {
                          _trigFail?.value = true;
                        }
                      });
                    },
                    child: const Text('Submit',style: TextStyle(color: cwhite),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _emailListener() {
    if (_emailController == null) return;
    _numLook?.value = _emailController!.text.trim().length.toDouble();
  }

  void _passwordListener() {
    _numLook?.value = 0;
  }
}
