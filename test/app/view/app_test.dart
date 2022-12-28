import 'package:flutter_test/flutter_test.dart';
import 'package:phaarmy/app/app.dart';
import 'package:phaarmy/splash/view/splash.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType( Splash), findsOneWidget);
    });
  });
}
