import 'package:flutter_test/flutter_test.dart';

import 'package:multiplier_icons/multiplier_icons.dart';

void main() {
  testWidgets('Build all icons', (WidgetTester tester) async {
    final icons = AppIcons.toList();

    for (String iconPath in icons) {
      final appIcon = AppIcon(iconPath);

      await tester.pumpWidget(appIcon);

      expect(
        find.byWidget(appIcon),
        findsOneWidget,
      );
    }
  });
}
