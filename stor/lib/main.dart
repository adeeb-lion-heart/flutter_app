import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';
import 'screens/forgot_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // لدعم اللغة العربية
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'تطبيق تجريبي',
        theme: ThemeData( // <--- أضفنا هذا الجزء
          useMaterial3: true,
          fontFamily: GoogleFonts.cairo().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          primarySwatch: Colors.blue, // لون أساسي للتطبيق
          hintColor: Colors.grey[600], // لون التلميحات في حقول الإدخال
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.blueGrey[50], // خلفية خفيفة لحقول الإدخال
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none, // لإزالة الحدود الافتراضية إذا كنت تستخدم filled: true
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.blueAccent, width: 2.0), // حدود عند التركيز
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: Colors.blueGrey[200]!, width: 1.0), // حدود عند التمكين
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, // لون النص والخلفية للزر
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              elevation: 5, // ظل الزر
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blueAccent, // لون النص للأزرار النصية
              textStyle: TextStyle(fontSize: 16),
            ),
          ),
          appBarTheme: AppBarTheme(
            color: Colors.transparent, // شريط علوي شفاف
            elevation: 0, // إزالة الظل من شريط التطبيق
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black87), // لون الأيقونات في ال AppBar
            titleTextStyle: GoogleFonts.cairo(color: Colors.black87, fontSize: 22, fontWeight: FontWeight.bold), // لون وحجم نص العنوان
          ),
        ),
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/forgot': (context) => ForgotPage(),
        },
      ),
    );
  }
}