import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_index_event.dart';

part 'page_index_state.dart';

class PageIndexBloc extends Bloc<PageIndexEvent, PageIndexState> {
  PageIndexBloc() : super(PageIndexInitial()) {
    on<ScrollToPageIndexEvent>((event, emit) {
      emit(ScrollCurrentPageIndexState(event.pageIndex));
    });
  }
}
