part of 'search_bloc.dart';

abstract class SearchState {
  const SearchState();
}

class SearchStateInitial extends SearchState {
  const SearchStateInitial();
}

class SearchTabState extends SearchState {
  final int index;

  const SearchTabState(this.index);
}
