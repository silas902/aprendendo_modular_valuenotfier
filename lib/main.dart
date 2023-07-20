import 'package:apredendo_modular_valuenotfier/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app_module.dart';


void main() async {
  runApp( ModularApp(module: AppModule(), child: const AppWidget()));
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://wjqevmmqodftrksyujrq.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndqcWV2bW1xb2RmdHJrc3l1anJxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ1NTc0MTAsImV4cCI6MjAwMDEzMzQxMH0.cW_hGZtw3uUMKQO_RlKGfm-NIHufBer0LI7xTJmtHug',
  );
}



