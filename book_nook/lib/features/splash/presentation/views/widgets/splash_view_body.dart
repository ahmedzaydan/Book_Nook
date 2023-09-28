import 'package:book_nook/core/utils/assets_manager.dart';
import 'package:book_nook/core/utils/constants.dart';
import 'package:book_nook/core/utils/functions.dart';
import 'package:book_nook/core/utils/routes_manager.dart';
import 'package:book_nook/core/utils/values_manager.dart';
import 'package:book_nook/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  // use Animation<Offset> to scale the value comes
  // from animation controller which is from 0-1 only
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // used stretch to make the logo fill the screen
      // as the image does not fill the whole screen
      // and so on the column width will be only the width of the image
      // which is not the whole screen width, but stretch fixes this issue.
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // logo
        // TODO: create your custom logo and delete this one
        Image.asset(AssetsManager.logo),
        const SizedBox(height: AppValues.v20),
        // title
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration:
          const Duration(seconds: Constants.slidingAnimationDurationInSeconds),
    );

    slidingAnimation = Tween<Offset>(
      begin: Constants.animationBegin,
      end: Constants.animationEnd,
    ).animate(animationController);

    animationController.forward();
  }

  void navigateToHome(BuildContext context) {
    navigateTo(
      context: context,
      dest: RoutesManager.homeView,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
