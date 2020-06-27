import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

void main()=>runApp(LocationPage());

class LocationPage extends StatefulWidget {
  @override
  State createState() => LocationPageState();
}

class LocationPageState extends State<LocationPage> {
  String _text = '현재 위치: 모름';
  
  static const String CHANNEL_LOCATION = "android/location";
  static const String METHOD_CURRENT_LOCATION = "getCurrentLocation";
  static const String MethodChannel locationChannel = MethodChannel(CHANNEL_LOCATION);
  
  @override
  void initState() {
    _checkPermissions();
  }
  
  _checkPermissions() async {
    await PermissionHandler().requestPermissions([PermissionGroup.location]);
  }
  
  _refresh() async {
    print('refresh current location');
    
    String _newText;
    try {
      final String result = await locationChannel.invokeMethod(METHOD_CURRENT_LOCATION);
      _newText = '현재 위치는 $result ';
    } on PlatformException {
      _newText = '현재 위치는 사용 불가합니다.';
    }
    
    setState(() {
      _text = _newText;
    });
  }
}
