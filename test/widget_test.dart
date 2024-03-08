
import 'package:big_project/main.dart';

import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('big project', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( const MyApp());

  });
}
