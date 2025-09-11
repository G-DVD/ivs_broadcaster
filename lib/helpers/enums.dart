// ignore_for_file: constant_identifier_names

enum BroadCastState {
  INVALID,
  DISCONNECTED,
  CONNECTING,
  CONNECTED,
  ERROR;
}

enum RetryState {
  NotRetrying,

  /// The SDK is waiting to for the internet connection to be restored before starting to backoff timer to attempt a reconnect.
  WaitingForInternet,

  /// The SDK is waiting to for the backoff timer to trigger a reconnect attempt.
  WaitingForBackoffTimer,

  /// The SDK is actively trying to reconnect a failed broadcast.
  Retrying,

  /// The SDK successfully reconnected a failed broadcast.
  Success,

  /// The SDK was unable to reconnect a failed broadcast within the maximum amount of allowed retries.
  Failure,
}

enum BroadcastQuality {
  NearMaximum,
  High,
  Medium,
  Low,
  NearMinimum,
}

enum BroadcastHealth {
  Excellent,
  High,
  Medium,
  Low,
  Bad,
}

enum CameraType {
  FRONT,
  BACK,
}

enum FocusMode {
  Locked,
  Auto,
  ContinuousAuto,
}

enum IOSCameraLens {
  DualCamera,
  WideAngleCamera,
  TripleCamera,
  TelePhotoCamera,
  DualWideAngleCamera,
  TrueDepthCamera,
  UltraWideCamera,
  LiDarDepthCamera,
  DefaultCamera,
}

enum PlayerState {
  PlayerStateIdle,

  /// Indicates that the player is ready to play the selected source.
  PlayerStateReady,

  /// Indicates that the player is buffering content.
  PlayerStateBuffering,

  /// Indicates that the player is playing.
  PlayerStatePlaying,

  /// Indicates that the player reached the end of the stream.
  PlayerStateEnded,
}

enum IvsQuality {
  q360,
  q720,
  q1080,
  auto,
}

extension IvsQualityExtension on IvsQuality {
  String get description {
    switch (this) {
      case IvsQuality.q360:
        return '360';
      case IvsQuality.q720:
        return '720';
      case IvsQuality.q1080:
        return '1080';
      case IvsQuality.auto:
        return 'auto';
    }
  }
}

enum IvsFps {
  f10,
  f15,
  f20,
  f24,
  f25,
  f30,
  f50,
  f60,
}

extension IvsFpsExtension on IvsFps {
  int get value {
    switch (this) {
      case IvsFps.f10:
        return 10;
      case IvsFps.f15:
        return 15;
      case IvsFps.f20:
        return 20;
      case IvsFps.f24:
        return 24;
      case IvsFps.f25:
        return 25;
      case IvsFps.f30:
        return 30;
      case IvsFps.f50:
        return 50;
      case IvsFps.f60:
        return 60;
    }
  }
}
