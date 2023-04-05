part of 'page_index_bloc.dart';

@immutable
abstract class PageIndexEvent {}

class ScrollToPageIndexEvent extends PageIndexEvent {
  final int pageIndex;

  ScrollToPageIndexEvent(this.pageIndex);
}
