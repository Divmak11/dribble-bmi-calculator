import 'dart:async';

class Bloc
{
  StreamController<bool> _themecontroller = StreamController<bool>();

  get changeTheme => _themecontroller.sink.add;
  get darkThemeEnabled => _themecontroller.stream;

  void dispose()
  {
    _themecontroller.close();
  }
}