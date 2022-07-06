import 'package:freezed_annotation/freezed_annotation.dart';

part 'hide_and_seek_models.freezed.dart';

part 'hide_and_seek_models.g.dart';

@freezed
class HideAndSeekAction with _$HideAndSeekAction {
  const factory HideAndSeekAction({
    required String gfx,
    required String sfxWhat, //snd telling which object should be clicked
    required String sfxWhere, //snd telling where selected object should be dragged in
    required String sfxSuccess, //snd when selected object is placed in valid position
    required int destId, //destination id of move - relation id
  }) = _HideAndSeekAction;

  factory HideAndSeekAction.fromJson(Map<String, dynamic> json) =>
      _$HideAndSeekActionFromJson(json);
}

@freezed
class Point with _$Point {
  const factory Point({
    required int x,
    required int y,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);
}

@freezed
class DragAndDropZone with _$DragAndDropZone {
  const factory DragAndDropZone({
    required int id,
    required List<Point> path,
  }) = _DragAndDropZone;

  factory DragAndDropZone.fromJson(Map<String, dynamic> json) => _$DragAndDropZoneFromJson(json);
}

@freezed
class HideAndSeekLevel with _$HideAndSeekLevel {
  const factory HideAndSeekLevel({
    required String bkg,
    required List<HideAndSeekAction> actions,
    required List<DragAndDropZone> zones,
  }) = _HideAndSeekLevel;

  factory HideAndSeekLevel.fromJson(Map<String, dynamic> json) => _$HideAndSeekLevelFromJson(json);
}
