import 'package:flutter_test/flutter_test.dart';
import 'package:panoptes_lens/app.dart';

// Basic smoke test — confirms the app renders without crashing.
// Real unit tests for the pipeline and API client are added in Phase 2+.
void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const PanoptesApp());
    expect(find.text('The Refactor '), findsOneWidget);
    expect(find.text('Room'), findsOneWidget);
  });
}
