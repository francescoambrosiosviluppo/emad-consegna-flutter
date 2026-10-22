import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prima_app_flutter/main.dart';

void main() {
  testWidgets('Mostra il nome e incrementa il contatore', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Ferdinando Francesco Ambrosio'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
