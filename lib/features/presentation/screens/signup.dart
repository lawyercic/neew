import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lawer/features/presentation/screens/login.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController =TextEditingController();

  @override
  Future signup() async{
    if (passwordConfirmed()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword
        (email: _emailController.text.trim(),
        password: _passwordController.text.trim(),);
      Navigator.of(context).pushNamed('/');
    }
  }

bool passwordConfirmed(){
    if(_passwordController.text.trim() == _confirmpasswordController.text.trim()){
      return true;
    }else{
      return false;
    }
}

  @override
  void  dispose(){

    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(

        child: SingleChildScrollView(
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                SizedBox(height: 30,),
                CircleAvatar(
                  radius: 90,
                  child: Image.asset(
                    'assets/ask.png',
                    height: 50,
                  ),
                  backgroundColor: Color(0xffF0CC41),
                ),

                SizedBox(height: 20),

                // Title
                Text(''
                    'انشاء حساب',
                  style: TextStyle(
                    fontSize: 40,

                  ),
                ),

                Text(''
                    'سعيد انى هقدر اخدمك',
                  style: TextStyle(
                    fontSize: 20,

                  ),
                ),

                SizedBox(height: 20,),

                // Email Textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'عنوان البريد الإلكتروني'
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                //pasword testfiled
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'كلمة السر'
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'اعادة كلمة السر'
                        ),
                      ),
                    ),
                  ),
                ),



                SizedBox(height: 10,),

                //sign in bottom
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: signup,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color(0xffF0CC41),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(
                        child: Text('انشاء حساب',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                // Text sign up

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => loginScreen()),
                                (route) => false,
                          );
                        },
                        child: Text(
                          "سجل الدخول الان",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF0CC41)),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text((' لديك حساب بالفعل')),
                  ],
                )
              ],



            ),
          ),
        ),
      ),
    );
  }
}
