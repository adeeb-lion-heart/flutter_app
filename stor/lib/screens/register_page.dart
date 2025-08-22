import 'package:flutter/material.dart';
import '../widgets/auth_scaffold.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'انضم إلينا الآن! 🎉',
      subtitle: 'قم بإنشاء حساب جديد للاستفادة من جميع الميزات',
      icon: Icons.person_add,
      children: [
        TextField(
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            labelText: 'الاسم الكامل',
            hintText: 'أدخل اسمك',
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 16),
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
            hintText: 'أدخل كلمة مرور قوية',
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
            child: Text('إنشاء حساب'),
          ),
        ),
        SizedBox(height: 8),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('لدي حساب بالفعل؟ تسجيل الدخول'),
          ),
        ),
      ],
    );
  }
}