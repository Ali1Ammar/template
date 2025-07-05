abstract class AnalyticsRepo {
  Future<void> trackEvent(String eventName, Map<String, dynamic> properties);

  Future<void> trackScreen(String screenName);

  Future<void> setUserId(String userId);

  Future<void> setUserProperty(String propertyName, String propertyValue);
}
