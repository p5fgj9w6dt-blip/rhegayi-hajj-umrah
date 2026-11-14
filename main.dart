import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const RhegayiApp());

class RhegayiApp extends StatelessWidget {
  const RhegayiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ڕێگای حەج و عومرە',
      locale: const Locale('ckb'),
      supportedLocales: const [Locale('ckb'), Locale('ar'), Locale('en')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF176B4D)),
        useMaterial3: true,
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ڕێگای حەج و عومرە')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text('بەخێربێیت', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('سیستەمی بەڕێوەبردنی کۆمپانیای حەج و عومرە'),
          SizedBox(height: 20),
          _ModuleTile(icon: Icons.people_alt_outlined, title: 'حەجکاران'),
          _ModuleTile(icon: Icons.flight_takeoff, title: 'گەشتەکان'),
          _ModuleTile(icon: Icons.payments_outlined, title: 'پارەدان و قەرز'),
          _ModuleTile(icon: Icons.description_outlined, title: 'پاسپۆرت و ڤیزا'),
          _ModuleTile(icon: Icons.hotel_outlined, title: 'فڕۆکە و هۆتێل'),
          _ModuleTile(icon: Icons.analytics_outlined, title: 'ڕاپۆرتەکان'),
        ],
      ),
    );
  }
}

class _ModuleTile extends StatelessWidget {
  const _ModuleTile({required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.chevron_left),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('بەشی $title لە قۆناغی داهاتوودا زیاد دەکرێت')),
        ),
      ),
    );
  }
}
