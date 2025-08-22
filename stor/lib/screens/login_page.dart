import 'package:flutter/material.dart';
import '../widgets/auth_scaffold.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'أهلاً بك مرة أخرى! ✨',
      subtitle: 'قم بتسجيل الدخول للمتابعة إلى التطبيق',
      icon: Icons.lock_person,
      children: [
        TextField(
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            labelText: 'البريد الإلكتروني',
            hintText: 'أدخل بريدك الإلكتروني',
            prefixIcon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 16),
        TextField(
          obscureText: _obscurePassword,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            labelText: 'كلمة المرور',
            hintText: 'أدخل كلمة المرور الخاصة بك',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('دخول'),
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('إنشاء حساب جديد'),
            ),
            Text(' · '),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot');
              },
              child: Text('نسيت كلمة المرور؟'),
            ),
          ],
        ),
      ],
    );
  }
}