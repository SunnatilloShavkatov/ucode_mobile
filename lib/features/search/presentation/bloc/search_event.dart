part of 'search_bloc.dart';

abstract class SearchEvent {
  const SearchEvent();
}

class SearchTabChanged extends SearchEvent {
  final int index;

  const SearchTabChanged(this.index);
}