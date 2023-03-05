import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package: google_maps_cluster_manager/google_maps_cluster_manager.dart'
import 'package: google_maps_flutter/google_maps_flutter.dart'

extension Target on Object {
  bool isAndroid() {
    return Platform.isAndroid;
  }

  bool isIOS() {
    return Platform.isIOS;
  }

  bool isLinux() {
    return Platform.isLinux;
  }

  bool isWindows() {
    return Platform.isWindows;
  }

  bool isMac0S() {
    return Platform.isMacOS;
  }
  bool isWeb() {
    return kIsWeb;
  }

}


class Place with ClusterItem {
  final String name;
  final bool isClosed;
  final LatLng latlng;
  int? storeld;


  Place({

    required this.name,
    required this.latlng,
    this.isClosed = false,
    this.storeld,
  });

  @override
  String toString() {
    return 'Place $name (closed : $isClosed)';
  }

  @override
  LatLng get location => latlng;

}