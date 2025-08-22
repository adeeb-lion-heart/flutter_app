import 'package:flutter/material.dart';
import '../widgets/auth_scaffold.dart';

class ForgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      title: 'هل نسيت كلمة المرور؟',
      subtitle: 'أدخل بريدك الإلكتروني وسنرسل لك رابطًا لإعادة تعيين كلمة المرور',
      icon: Icons.lock_reset,
      children: [
        TextField(
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            labelText: 'البريد الإلكتروني',
            hintText: 'أدخل بريدك الإلكتروني المسجل',
            prefixIcon: Icon(Icons.email),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('إرسال رابط الاستعادة'),
          ),
        ),
        SizedBox(height: 8),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('العودة إلى تسجيل الدخول'),
          ),
        ),
      ],
    );
  }
}