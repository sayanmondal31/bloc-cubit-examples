part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

// will tell presentation layer that an error has occured 
class PostFailure extends PostState {}

// will tell presentaion layer it has content to render
class PostSuccess extends PostState {


  //it shows list of posts and tell either post reached to max or not 
  final List<Post> posts;
  final bool hasReachedMax;


  // create constructor
  const PostSuccess({this.posts, this.hasReachedMax});


  // implement [`copywith`] to copy an instance PostSuccess and update 
  PostSuccess copyWith({List<Post> posts, bool hasReachedMax}) {
    return PostSuccess(
        posts: this.posts ?? posts,
        hasReachedMax: this.hasReachedMax ?? hasReachedMax);
  }

  @override
  List<Object> get props => [posts, hasReachedMax];

  @override
  String toString() =>
      'PostSuccess { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
