import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes_dart/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes_dart/services/auth/bloc/auth_event.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify email"),
      ),
      body: Column(
        children: [
          const Text(
              "We´ve sent you a verification email! Please check your inbox (including spam folder)"),
          const Text(
              "If you haven´t received a verification email, press the button below "),
          TextButton(
            onPressed: () {
              context.read<Authbloc>().add(
                    const AuthEventSendEmailVerification(),
                  );
            },
            child: const Text("Send email verification"),
          ),
          TextButton(
            onPressed: () async {
              context.read<Authbloc>().add(
                    const AuthEventLogOut(),
                  );
            },
            child: const Text("Restart"),
          )
        ],
      ),
    );
  }
}
