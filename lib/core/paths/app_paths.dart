import 'package:demo_app/ui/views/user/login_view/login_view.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/ui/views/home_view/home_view.dart';


Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {
  'home': ( _ ) => const HomeView(),
  'login': ( _ ) => const LoginView()
};