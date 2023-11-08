import 'package:flutter/material.dart';
import 'package:joureny/login/signup_second.dart';
import 'package:joureny/planjoureny/tasks_screen.dart';
import 'package:lottie/lottie.dart';


class SignIn extends StatefulWidget {
  static const String signin = "signin";
  static const String task = "task";

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // form key
  final _formKey = GlobalKey<FormState>();
  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: (){},
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.email,
          color: Colors.indigo,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter your E-mail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      //validator: (){},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,

      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.vpn_key,
          color: Colors.indigo,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter your password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final loginButtom = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.cyan,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskScreen(),
            ),
          );
          }
          ,
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.cyan[50],
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Center(
                        child: Image.asset(
                          "images/signin.png",
                          //scale:2,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    emailField,
                    const SizedBox(height: 10),
                    passwordField,
                    const SizedBox(height: 20),
                    loginButtom,
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Donot have an acount?',
                          style: TextStyle(fontSize: 15),
                        ),
                        const SizedBox(width: 5,),
                        // page sig in go to it
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context) => const SignUp()));
                          },
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LottieBuilder.network(
                            'https://lottie.host/37516613-a142-495d-8cd5-b90aece34349/ZfzFpLuLcO.json',
                            height: 40,
                            width: 40,
                          ),
                          LottieBuilder.network(
                            'https://lottie.host/a8627238-404f-4966-8fa5-4cddcfdc4c91/EDMYUBT5pA.json',
                            height: 40,
                            width: 40,
                          ),
                          LottieBuilder.network(
                            'https://lottie.host/0785019d-c827-40c3-b4d7-e60d7775f3d8/lxGbFlPDQA.json',
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }}


//     child: Container(
//       margin: const EdgeInsets.only(top: 120),
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage("images/sigin.png"),
//             alignment: Alignment.topCenter),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(40),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             //email
//             const SizedBox(height: 20),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 hintText: "Enter your E-mail",
//                 prefixIcon: const Icon(
//                   Icons.email,
//                   color: Colors.indigo,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//
//             //password
//             const SizedBox(
//               height: 20,
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: "Enter your password",
//                 prefixIcon: const Icon(
//                   Icons.password,
//                   color: Colors.indigo,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   minimumSize: const Size.fromHeight(50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   )), //  ElevatedButton.styleFrom
//               onPressed: () {},
//               //{Navigator.pushReplacementNamed(context,Task.task);} ,  //  onPressed to task page
//               child: const Text(
//                 'SIGN IN',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Donot have an acount?',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushReplacementNamed(context, SignUp.signup);
//                     },
//                     child: const Text(
//                       'Create account',
//                       style: TextStyle(
//                           fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ], // children
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   LottieBuilder.network(
//                     'https://lottie.host/37516613-a142-495d-8cd5-b90aece34349/ZfzFpLuLcO.json',
//                     height: 40,
//                     width: 40,
//                   ),
//                   LottieBuilder.network(
//                     'https://lottie.host/a8627238-404f-4966-8fa5-4cddcfdc4c91/EDMYUBT5pA.json',
//                     height: 40,
//                     width: 40,
//                   ),
//                   LottieBuilder.network(
//                     'https://lottie.host/0785019d-c827-40c3-b4d7-e60d7775f3d8/lxGbFlPDQA.json',
//                     height: 40,
//                     width: 40,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//       ),  );
// }}
