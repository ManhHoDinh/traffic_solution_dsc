part of 'report_cubit.dart';

@freezed
class ReportStateData with _$ReportStateData {
  const factory ReportStateData({
    @Default(StatusType.init) StatusType? status,
    @Default('') String? error,
    }) = _HomeStateData;
}


@freezed
class ReportState
 with _$ReportState {
  const factory ReportState.initial({ReportStateData?data}) = _Initial;
  const factory ReportState.loading({ReportStateData?data}) = _Loading;
  const factory ReportState.loaded({ReportStateData?data}) = _Loaded;
  const factory ReportState.error({ReportStateData?data}) = _Error;
}

