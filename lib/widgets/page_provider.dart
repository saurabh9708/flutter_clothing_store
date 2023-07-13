import 'package:flutter_bloc/flutter_bloc.dart';

class PageProvider extends Cubit<int> {
  PageProvider({this.currentPage = 1}) : super(currentPage);
  int currentPage;
  setCurrentPage(int page) {
    emit(page);
  }
}
