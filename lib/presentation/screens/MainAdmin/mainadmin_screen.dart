import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/app/app_bloc.dart';

class MainAdminScreen extends StatelessWidget {
  const MainAdminScreen({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: MainAdminScreen());

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MainAdmin'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(AppLogoutRequested()),
          )
        ],
      ),
      body: Align(
        alignment: const Alignment(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage:
                  user.image != null ? NetworkImage(user.image!) : null,
              child: user.image == null
                  ? const Icon(Icons.person_outline, size: 48)
                  : null,
            ),
            const SizedBox(height: 4),
            Text(user.email ?? '', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
