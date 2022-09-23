import 'package:asuka/asuka.dart';
import 'package:asuka_teste/presentation/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  var controller = HomeController();

  testWidgets(
    'AsukaSnackbar.warning appears',
    (tester) async {
      const String content = 'test';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    AsukaSnackbar.warning('test').show();
                  },
                  child: const Text('Warning'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Warning');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );
  testWidgets(
    'AsukaSnackbar.success appears',
    (tester) async {
      const String content = 'test';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    AsukaSnackbar.success('test').show();
                  },
                  child: const Text('Success'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Success');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );
  testWidgets(
    'AsukaSnackbar.alert appears',
    (tester) async {
      const String content = 'test';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    AsukaSnackbar.success('test').show();
                  },
                  child: const Text('Alert'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Alert');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );
  testWidgets(
    'AsukaSnackbar.info appears',
    (tester) async {
      const String content = 'test';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    AsukaSnackbar.info('test').show();
                  },
                  child: const Text('Info'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Info');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );
  testWidgets(
    'AsukaSnackbar.message appears',
    (tester) async {
      const String content = 'test';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    AsukaSnackbar.message('test').show();
                  },
                  child: const Text('Message'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Message');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );

  testWidgets(
    'controller.onClickSnackbar appears',
    (tester) async {
      const String content = 'New Snackbar';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    controller.onClickSnackbar;
                    Asuka.showSnackBar(
                      const SnackBar(
                        content: Text('New Snackbar'),
                      ),
                    );
                  },
                  child: const Text('Custom SnackBar'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Custom SnackBar');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );

  testWidgets(
    'controller.onClickDialog appears',
    (tester) async {
      const String content = 'Dialog';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    controller.onClickDialog;
                    Asuka.showDialog(
                      builder: (context) => AlertDialog(
                        title: const Text('Dialog'),
                        content: const Text('This is a custom Dialog '),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          )
                        ],
                      ),
                    );
                  },
                  child: const Text('Custom Dialog'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Custom Dialog');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );

  testWidgets(
    'controller.onClickBottomSheet showBottomSheet appears',
    (tester) async {
      const String content = 'Cancel';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    controller.onClickBottomSheet;
                    Asuka.showBottomSheet(
                      (context) {
                        return Material(
                          elevation: 7,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                            child: ListView(
                              children: [
                                const ListTile(
                                  title: Text('1'),
                                ),
                                const ListTile(
                                  title: Text('2'),
                                ),
                                const ListTile(
                                  title: Text('3'),
                                ),
                                ListTile(
                                  title: const Text('Cancel'),
                                  onTap: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Custom BottomSheet'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Custom BottomSheet');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );

  testWidgets(
    'controller.onClickModalBottomSheet showModalBottomSheet appears',
    (tester) async {
      const String content = 'Cancel';
      await tester.pumpWidget(
        MaterialApp(
          builder: Asuka.builder,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    controller.onClickModalBottomSheet;
                    Asuka.showModalBottomSheet(
                      builder: (context) => Material(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        elevation: 7,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                          child: ListView(
                            children: [
                              const ListTile(
                                title: Text('Modal 1'),
                              ),
                              const ListTile(
                                title: Text('Modal 2'),
                              ),
                              const ListTile(
                                title: Text('Modal 3'),
                              ),
                              ListTile(
                                title: const Text('Cancel'),
                                onTap: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                    );
                  },
                  child: const Text('Custom showModalBottomSheet'),
                );
              },
            ),
          ),
        ),
      );

      // Create the Finders.
      final btnFinder = find.text('Custom showModalBottomSheet');
      await tester.tap(btnFinder);
      final textFinder = find.text(content);
      await tester.pumpAndSettle();
      expect(textFinder, findsOneWidget);
    },
  );
}
