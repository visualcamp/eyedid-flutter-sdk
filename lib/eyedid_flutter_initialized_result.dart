/// Represents the result of the Eyedid GazeTracker initialization.
///
/// - [result] indicates whether the initialization was successful.
/// - [message] provides additional information in case of failure. If initialization
///   is successful, [message] will be "ERROR_NONE".
///
/// Use this class to obtain the result of the initialization process after calling
/// [initGazeTracker].
class InitializedResult {
  /// Whether the initialization was successful.
  late bool result;

  /// Additional information in case of failure.
  ///
  /// If initialization is successful, this will be "ERROR_NONE."
  late String message;

  final String _initializedResultKey = "initializedResultKey";
  final String _initializedResultMessageKey = "initializedMessageKey";
  static const String isAlreadyAttempting = "Already attempting";
  static const String gazeTrackerAlreadyInitialized =
      "Gaze tracker is already initialized.";

  /// Creates an [InitializedResult] by parsing a result map.
  ///
  /// The [resultMap] must contain the keys for initializing [result] and [message].
  /// If required keys are missing, an assertion error is thrown.
  InitializedResult(Map<dynamic, dynamic> resultMap) {
    _checkKeyExists(resultMap, _initializedResultKey);
    _checkKeyExists(resultMap, _initializedResultMessageKey);

    result = resultMap[_initializedResultKey];
    message = resultMap[_initializedResultMessageKey];
  }

  void _checkKeyExists(Map<dynamic, dynamic> event, String key) {
    assert(event.containsKey(key), "Missing $key");
  }
}
