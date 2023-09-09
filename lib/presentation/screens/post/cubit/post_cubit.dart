import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:traffic_solution_dsc/core/models/post/post.dart';


part 'post_state.dart';
part 'post_cubit.freezed.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostState.initial());
  getPost() async {
    try {
      emit(PostState.loading());
      Dio dio = Dio();
      Response response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        List<Post> posts = response.data.map<Post>((e) {
          return Post.fromJson(e);
        }).toList();
        emit(PostState.loaded(posts));
      } else {
        emit(PostState.error());
      }
    } catch (e) {
      emit(PostState.error());
    }
  }
}
