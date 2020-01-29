import './EventController.dart';

class EventControllerUtils {
  static EventControllerUtils __instance;

  static EventControllerUtils get getInstance {
    if (__instance == null) {
      __instance = EventControllerUtils._internal();
    }
    return __instance;
  }

  EventControllerUtils._internal() {
    // constructor
  }

  EventController<Object> putStateContainer(String key) {
    if (_stateContainerMap.containsKey(key)) {
      // if present return
      return _stateContainerMap[key];
    } else {
      // create and return
      var obj = EventController<Object>();
      _stateContainerMap[key] = obj;

      return obj;
    }
  }

  Map<String, EventController<Object>> _stateContainerMap = Map();
}
