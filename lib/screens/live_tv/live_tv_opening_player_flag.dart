/// Mutable flag shared by idle mode and player launcher.
class LiveTvOpeningPlayerFlag {
  bool value = false;
  bool isActive() => value;
}
