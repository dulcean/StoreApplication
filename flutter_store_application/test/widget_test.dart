import 'package:flutter/material.dart';
import 'package:flutter_store_application/view/login/welcome_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_store_application/view/on_boarding/startup_view.dart';

void main() {
  group('StartupView', () {
    testWidgets('displays images correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const StartupView());
      expect(find.byType(Image), findsNWidgets(2));
      expect(find.byWidgetPredicate(
        (Widget widget) => widget is Image && widget.image is AssetImage && (widget.image as AssetImage).assetName == 'assets/img/splash_bg.png'
      ), findsOneWidget);
      expect(find.byWidgetPredicate(
        (Widget widget) => widget is Image && widget.image is AssetImage && (widget.image as AssetImage).assetName == 'assets/img/app_logo.png'
      ), findsOneWidget);
    });

    testWidgets('navigates to WelcomeView after 3 seconds', (WidgetTester tester) async {
      await tester.pumpWidget(const StartupView());
      expect(find.byType(WelcomeView), findsNothing);
      await tester.pumpAndSettle(const Duration(seconds: 3));
      expect(find.byType(WelcomeView), findsOneWidget);
    });
  });
}
