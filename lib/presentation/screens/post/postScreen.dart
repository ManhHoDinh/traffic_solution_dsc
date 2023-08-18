import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_solution_dsc/presentation/screens/post/cubit/post_cubit.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  getPost() {
    context.read<PostCubit>().getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Screen')),
      body: Center(
        child: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) {
            return state.when(
              initial: () => ElevatedButton(
                child: Text('Get Posts'),
                onPressed: () {
                  getPost();
                },
              ),
              loading: () => CircularProgressIndicator(),
              loaded: (posts) => ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                        title: Text(posts[index].title.toString()),
                        subtitle: Text(posts[index].body.toString()),
                      )),
              error: () => ElevatedButton(
                child: Text('Retry get posts'),
                onPressed: () {
                  getPost();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
