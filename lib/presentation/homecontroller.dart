import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';

class HomeController {
  void onClickSnackbar() {
    Asuka.showSnackBar(
      const SnackBar(
        content: Text('New Snackbar'),
      ),
    );
  }

  void onClickDialog() {
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
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  void onClickBottomSheet() {
    Asuka.showBottomSheet((context) {
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
    });
  }

  void onClickModalBottomSheet() {
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
  }
}
