import 'package:flower_app/features/login/presentation/views/login_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String signUp = '/signUp';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
