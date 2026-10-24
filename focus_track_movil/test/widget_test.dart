import 'package:flutter_test/flutter_test.dart';
import 'package:focus_track_movil/main.dart';

void main() {
  testWidgets('Incrementa el contador de metas', (WidgetTester tester) async {
    await tester.pumpWidget(const FocusTrackApp());

    expect(find.text('0 / 5'), findsOneWidget);

    await tester.tap(find.text('Completar Meta'));
    await tester.pump();

    expect(find.text('1 / 5'), findsOneWidget);
  });
}
