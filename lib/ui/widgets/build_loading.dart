part of 'widgets.dart';

Widget buildLoading() {
  return Center(
    child: SpinKitFadingCircle(
      color: mainColor,
      size: 50,
    ),
  );
}
