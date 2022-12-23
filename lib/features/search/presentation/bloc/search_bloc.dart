import 'package:ucode_mobile/core/theme/icons/app_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';

part 'search_state.dart';

const tabs = {
  SearchTab.plane: 'Полёт',
  SearchTab.bed: 'Отель',
  SearchTab.compass: 'Туры',
  SearchTab.car: 'Автопрокат',
};

const tabIcons = {
  SearchTab.plane: AppIcons.plane,
  SearchTab.bed: AppIcons.bed,
  SearchTab.compass: AppIcons.compass,
  SearchTab.car: AppIcons.car,
};

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchTabState(0)) {
    on<SearchTabChanged>((event, emit) {
      emit(SearchTabState(event.index));
    });
  }
}

enum SearchTab {
  plane,
  bed,
  compass,
  car,
}
