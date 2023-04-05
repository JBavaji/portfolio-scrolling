part of 'page_index_bloc.dart';

@immutable
abstract class PageIndexState {}

class PageIndexInitial extends PageIndexState {}

class ScrollCurrentPageIndexState extends PageIndexState {
  final int currentPage;

  ScrollCurrentPageIndexState(this.currentPage);
}
