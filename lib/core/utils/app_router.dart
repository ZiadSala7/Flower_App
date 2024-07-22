import 'package:flower_app/features/home/presentation/views/home_view.dart';
import 'package:flower_app/features/home/presentation/views/product_details_view.dart';
import 'package:flower_app/features/login/presentation/views/login_view.dart';
import 'package:flower_app/features/sign%20up/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String signUp = '/signUp';
  static const String homeView = '/homeView';
  static const productDetailsView = '/productDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRouter.signUp,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AppRouter.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRouter.productDetailsView,
        builder: (context, state) => const ProductDetailsView(),
      ),
    ],
  );
}
