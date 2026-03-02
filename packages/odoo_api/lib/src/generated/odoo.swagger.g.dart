// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odoo.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiMeta _$ApiMetaFromJson(Map<String, dynamic> json) => ApiMeta();

Map<String, dynamic> _$ApiMetaToJson(ApiMeta instance) => <String, dynamic>{};

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) => ApiError(
  ok: json['ok'] as bool,
  error: ApiError$Error.fromJson(json['error'] as Map<String, dynamic>),
  data: json['data'] as Object,
);

Map<String, dynamic> _$ApiErrorToJson(ApiError instance) => <String, dynamic>{
  'ok': instance.ok,
  'error': instance.error.toJson(),
  'data': instance.data,
};

IdName _$IdNameFromJson(Map<String, dynamic> json) =>
    IdName(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$IdNameToJson(IdName instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

FalseOrIdName _$FalseOrIdNameFromJson(Map<String, dynamic> json) =>
    FalseOrIdName();

Map<String, dynamic> _$FalseOrIdNameToJson(FalseOrIdName instance) =>
    <String, dynamic>{};

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
  db: json['db'] as String,
  login: json['login'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'db': instance.db,
      'login': instance.login,
      'password': instance.password,
    };

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    LoginResponseData(
      token: json['token'] as String,
      tokenType: json['token_type'] as String,
      expiresAt: json['expires_at'] as String,
      user: LoginResponseData$User.fromJson(
        json['user'] as Map<String, dynamic>,
      ),
      employee: IdName.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseDataToJson(LoginResponseData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'token_type': instance.tokenType,
      'expires_at': instance.expiresAt,
      'user': instance.user.toJson(),
      'employee': instance.employee.toJson(),
    };

ApiOkLogin _$ApiOkLoginFromJson(Map<String, dynamic> json) => ApiOkLogin(
  ok: json['ok'] as bool,
  data: LoginResponseData.fromJson(json['data'] as Map<String, dynamic>),
  meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiOkLoginToJson(ApiOkLogin instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LogoutResponseData _$LogoutResponseDataFromJson(Map<String, dynamic> json) =>
    LogoutResponseData(revoked: json['revoked'] as bool);

Map<String, dynamic> _$LogoutResponseDataToJson(LogoutResponseData instance) =>
    <String, dynamic>{'revoked': instance.revoked};

ApiOkLogout _$ApiOkLogoutFromJson(Map<String, dynamic> json) => ApiOkLogout(
  ok: json['ok'] as bool,
  data: LogoutResponseData.fromJson(json['data'] as Map<String, dynamic>),
  meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiOkLogoutToJson(ApiOkLogout instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

MeResponseData _$MeResponseDataFromJson(Map<String, dynamic> json) =>
    MeResponseData(
      uid: (json['uid'] as num).toInt(),
      login: json['login'] as String,
      name: json['name'] as String,
      partner: MeResponseData$Partner.fromJson(
        json['partner'] as Map<String, dynamic>,
      ),
      employee: MeResponseData$Employee.fromJson(
        json['employee'] as Map<String, dynamic>,
      ),
      roles: MeResponseData$Roles.fromJson(
        json['roles'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$MeResponseDataToJson(MeResponseData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'login': instance.login,
      'name': instance.name,
      'partner': instance.partner.toJson(),
      'employee': instance.employee.toJson(),
      'roles': instance.roles.toJson(),
    };

ApiOkMe _$ApiOkMeFromJson(Map<String, dynamic> json) => ApiOkMe(
  ok: json['ok'] as bool,
  data: MeResponseData.fromJson(json['data'] as Map<String, dynamic>),
  meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiOkMeToJson(ApiOkMe instance) => <String, dynamic>{
  'ok': instance.ok,
  'data': instance.data.toJson(),
  'meta': instance.meta.toJson(),
};

AttendanceMarkRequest _$AttendanceMarkRequestFromJson(
  Map<String, dynamic> json,
) => AttendanceMarkRequest(
  action: json['action'] as String?,
  mode: json['mode'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
  countryName: json['country_name'] as String?,
  ip: json['ip'] as String?,
  browser: json['browser'] as String?,
  note: json['note'] as String?,
  when: json['when'] as String?,
  token: json['token'] as String?,
  faceB64: json['face_b64'] as String?,
  faceInB64: json['face_in_b64'] as String?,
  faceOutB64: json['face_out_b64'] as String?,
);

Map<String, dynamic> _$AttendanceMarkRequestToJson(
  AttendanceMarkRequest instance,
) => <String, dynamic>{
  'action': instance.action,
  'mode': instance.mode,
  'lat': instance.lat,
  'lng': instance.lng,
  'country_name': instance.countryName,
  'ip': instance.ip,
  'browser': instance.browser,
  'note': instance.note,
  'when': instance.when,
  'token': instance.token,
  'face_b64': instance.faceB64,
  'face_in_b64': instance.faceInB64,
  'face_out_b64': instance.faceOutB64,
};

AttendanceMarkAttendance _$AttendanceMarkAttendanceFromJson(
  Map<String, dynamic> json,
) => AttendanceMarkAttendance(
  id: (json['id'] as num?)?.toInt(),
  employeeId: (json['employee_id'] as num?)?.toInt(),
  checkIn: json['check_in'] as String?,
  checkOut: json['check_out'] as String?,
  workedHours: (json['worked_hours'] as num?)?.toDouble(),
  inMode: json['in_mode'] as String?,
  outMode: json['out_mode'] as String?,
  inIpAddress: json['in_ip_address'] as String?,
  outIpAddress: json['out_ip_address'] as String?,
  inBrowser: json['in_browser'] as String?,
  outBrowser: json['out_browser'] as String?,
  inCountryName: json['in_country_name'] as String?,
  outCountryName: json['out_country_name'] as String?,
  inLatitude: (json['in_latitude'] as num?)?.toDouble(),
  inLongitude: (json['in_longitude'] as num?)?.toDouble(),
  outLatitude: (json['out_latitude'] as num?)?.toDouble(),
  outLongitude: (json['out_longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AttendanceMarkAttendanceToJson(
  AttendanceMarkAttendance instance,
) => <String, dynamic>{
  'id': instance.id,
  'employee_id': instance.employeeId,
  'check_in': instance.checkIn,
  'check_out': instance.checkOut,
  'worked_hours': instance.workedHours,
  'in_mode': instance.inMode,
  'out_mode': instance.outMode,
  'in_ip_address': instance.inIpAddress,
  'out_ip_address': instance.outIpAddress,
  'in_browser': instance.inBrowser,
  'out_browser': instance.outBrowser,
  'in_country_name': instance.inCountryName,
  'out_country_name': instance.outCountryName,
  'in_latitude': instance.inLatitude,
  'in_longitude': instance.inLongitude,
  'out_latitude': instance.outLatitude,
  'out_longitude': instance.outLongitude,
};

AttendanceMarkResponseData _$AttendanceMarkResponseDataFromJson(
  Map<String, dynamic> json,
) => AttendanceMarkResponseData(
  action: json['action'] as String,
  duplicate: json['duplicate'] as bool?,
  attendance: json['attendance'] == null
      ? null
      : AttendanceMarkAttendance.fromJson(
          json['attendance'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AttendanceMarkResponseDataToJson(
  AttendanceMarkResponseData instance,
) => <String, dynamic>{
  'action': instance.action,
  'duplicate': instance.duplicate,
  'attendance': instance.attendance?.toJson(),
};

ApiOkAttendanceMark _$ApiOkAttendanceMarkFromJson(Map<String, dynamic> json) =>
    ApiOkAttendanceMark(
      ok: json['ok'] as bool,
      data: AttendanceMarkResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkAttendanceMarkToJson(
  ApiOkAttendanceMark instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'data': instance.data.toJson(),
  'meta': instance.meta.toJson(),
};

AttendanceListRequest _$AttendanceListRequestFromJson(
  Map<String, dynamic> json,
) => AttendanceListRequest(
  employeeId: (json['employee_id'] as num?)?.toInt(),
  dateFrom: json['date_from'] as String?,
  dateTo: json['date_to'] as String?,
);

Map<String, dynamic> _$AttendanceListRequestToJson(
  AttendanceListRequest instance,
) => <String, dynamic>{
  'employee_id': instance.employeeId,
  'date_from': instance.dateFrom,
  'date_to': instance.dateTo,
};

AttendanceActionItem _$AttendanceActionItemFromJson(
  Map<String, dynamic> json,
) => AttendanceActionItem(
  attendanceId: (json['attendance_id'] as num).toInt(),
  action: json['action'] as String,
  timestamp: json['timestamp'] as String,
  timestampLocal: json['timestamp_local'] as String?,
  mode: json['mode'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
  ip: json['ip'] as String?,
  browser: json['browser'] as String?,
  countryName: json['country_name'] as String?,
);

Map<String, dynamic> _$AttendanceActionItemToJson(
  AttendanceActionItem instance,
) => <String, dynamic>{
  'attendance_id': instance.attendanceId,
  'action': instance.action,
  'timestamp': instance.timestamp,
  'timestamp_local': instance.timestampLocal,
  'mode': instance.mode,
  'lat': instance.lat,
  'lng': instance.lng,
  'ip': instance.ip,
  'browser': instance.browser,
  'country_name': instance.countryName,
};

AttendanceListResponseData _$AttendanceListResponseDataFromJson(
  Map<String, dynamic> json,
) => AttendanceListResponseData(
  from: json['from'] as String,
  to: json['to'] as String,
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => AttendanceActionItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AttendanceListResponseDataToJson(
  AttendanceListResponseData instance,
) => <String, dynamic>{
  'from': instance.from,
  'to': instance.to,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiOkAttendanceList _$ApiOkAttendanceListFromJson(Map<String, dynamic> json) =>
    ApiOkAttendanceList(
      ok: json['ok'] as bool,
      data: AttendanceListResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkAttendanceListToJson(
  ApiOkAttendanceList instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'data': instance.data.toJson(),
  'meta': instance.meta.toJson(),
};

PayslipsListRequest _$PayslipsListRequestFromJson(Map<String, dynamic> json) =>
    PayslipsListRequest(
      employeeId: (json['employee_id'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PayslipsListRequestToJson(
  PayslipsListRequest instance,
) => <String, dynamic>{
  'employee_id': instance.employeeId,
  'year': instance.year,
  'month': instance.month,
  'limit': instance.limit,
};

PayslipListItem _$PayslipListItemFromJson(Map<String, dynamic> json) =>
    PayslipListItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
      state: json['state'] as String?,
      net: (json['net'] as num?)?.toDouble(),
      gross: (json['gross'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PayslipListItemToJson(PayslipListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'state': instance.state,
      'net': instance.net,
      'gross': instance.gross,
    };

PayslipsListResponseData _$PayslipsListResponseDataFromJson(
  Map<String, dynamic> json,
) => PayslipsListResponseData(
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PayslipListItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totals: json['totals'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PayslipsListResponseDataToJson(
  PayslipsListResponseData instance,
) => <String, dynamic>{
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'totals': instance.totals,
};

ApiOkPayslipsList _$ApiOkPayslipsListFromJson(Map<String, dynamic> json) =>
    ApiOkPayslipsList(
      ok: json['ok'] as bool,
      data: PayslipsListResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkPayslipsListToJson(ApiOkPayslipsList instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

PayslipDetailRequest _$PayslipDetailRequestFromJson(
  Map<String, dynamic> json,
) => PayslipDetailRequest(slipId: (json['slip_id'] as num).toInt());

Map<String, dynamic> _$PayslipDetailRequestToJson(
  PayslipDetailRequest instance,
) => <String, dynamic>{'slip_id': instance.slipId};

PayslipLine _$PayslipLineFromJson(Map<String, dynamic> json) => PayslipLine(
  code: json['code'] as String?,
  name: json['name'] as String?,
  category: json['category'] as String?,
  amount: (json['amount'] as num?)?.toDouble(),
  quantity: (json['quantity'] as num?)?.toDouble(),
  total: (json['total'] as num?)?.toDouble(),
);

Map<String, dynamic> _$PayslipLineToJson(PayslipLine instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'category': instance.category,
      'amount': instance.amount,
      'quantity': instance.quantity,
      'total': instance.total,
    };

PayslipDetailResponseData _$PayslipDetailResponseDataFromJson(
  Map<String, dynamic> json,
) => PayslipDetailResponseData(
  slip: PayslipDetailResponseData$Slip.fromJson(
    json['slip'] as Map<String, dynamic>,
  ),
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map((e) => PayslipLine.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totals: json['totals'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PayslipDetailResponseDataToJson(
  PayslipDetailResponseData instance,
) => <String, dynamic>{
  'slip': instance.slip.toJson(),
  'lines': instance.lines?.map((e) => e.toJson()).toList(),
  'totals': instance.totals,
};

ApiOkPayslipDetail _$ApiOkPayslipDetailFromJson(Map<String, dynamic> json) =>
    ApiOkPayslipDetail(
      ok: json['ok'] as bool,
      data: PayslipDetailResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkPayslipDetailToJson(ApiOkPayslipDetail instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveTypesResponseData _$LeaveTypesResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveTypesResponseData(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => LeaveTypesResponseData$Items$Item.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$LeaveTypesResponseDataToJson(
  LeaveTypesResponseData instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

ApiOkLeaveTypes _$ApiOkLeaveTypesFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveTypes(
      ok: json['ok'] as bool,
      data: LeaveTypesResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveTypesToJson(ApiOkLeaveTypes instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveSummaryRequest _$LeaveSummaryRequestFromJson(Map<String, dynamic> json) =>
    LeaveSummaryRequest(employeeId: (json['employee_id'] as num?)?.toInt());

Map<String, dynamic> _$LeaveSummaryRequestToJson(
  LeaveSummaryRequest instance,
) => <String, dynamic>{'employee_id': instance.employeeId};

LeaveSummaryResponseData _$LeaveSummaryResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveSummaryResponseData(
  employeeId: (json['employee_id'] as num?)?.toInt(),
  remainingDays: (json['remaining_days'] as num?)?.toDouble(),
  hourlyBalance: (json['hourly_balance'] as num?)?.toDouble(),
  flexMinutes: (json['flex_minutes'] as num?)?.toInt(),
);

Map<String, dynamic> _$LeaveSummaryResponseDataToJson(
  LeaveSummaryResponseData instance,
) => <String, dynamic>{
  'employee_id': instance.employeeId,
  'remaining_days': instance.remainingDays,
  'hourly_balance': instance.hourlyBalance,
  'flex_minutes': instance.flexMinutes,
};

ApiOkLeaveSummary _$ApiOkLeaveSummaryFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveSummary(
      ok: json['ok'] as bool,
      data: LeaveSummaryResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveSummaryToJson(ApiOkLeaveSummary instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveListRequest _$LeaveListRequestFromJson(Map<String, dynamic> json) =>
    LeaveListRequest(
      employeeId: (json['employee_id'] as num?)?.toInt(),
      states:
          (json['states'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
      latest: (json['latest'] as num?)?.toInt(),
      includePending: json['include_pending'] as bool?,
    );

Map<String, dynamic> _$LeaveListRequestToJson(LeaveListRequest instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'states': instance.states,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'latest': instance.latest,
      'include_pending': instance.includePending,
    };

LeaveListItem _$LeaveListItemFromJson(Map<String, dynamic> json) =>
    LeaveListItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      state: json['state'] as String?,
      leaveTypeId: (json['leave_type_id'] as num?)?.toInt(),
      leaveTypeName: json['leave_type_name'] as String?,
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
      numberOfDays: (json['number_of_days'] as num?)?.toDouble(),
      canApprove: json['can_approve'] as bool?,
      approvalRoute: (json['approval_route'] as List<dynamic>?)
          ?.map(
            (e) => LeaveListItem$ApprovalRoute$Item.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$LeaveListItemToJson(LeaveListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'leave_type_id': instance.leaveTypeId,
      'leave_type_name': instance.leaveTypeName,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'number_of_days': instance.numberOfDays,
      'can_approve': instance.canApprove,
      'approval_route': instance.approvalRoute?.map((e) => e.toJson()).toList(),
    };

LeaveListResponseData _$LeaveListResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveListResponseData(
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LeaveListItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$LeaveListResponseDataToJson(
  LeaveListResponseData instance,
) => <String, dynamic>{
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiOkLeaveList _$ApiOkLeaveListFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveList(
      ok: json['ok'] as bool,
      data: LeaveListResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveListToJson(ApiOkLeaveList instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveDetailRequest _$LeaveDetailRequestFromJson(Map<String, dynamic> json) =>
    LeaveDetailRequest(leaveId: (json['leave_id'] as num).toInt());

Map<String, dynamic> _$LeaveDetailRequestToJson(LeaveDetailRequest instance) =>
    <String, dynamic>{'leave_id': instance.leaveId};

LeaveDetailResponseData _$LeaveDetailResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveDetailResponseData(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  state: json['state'] as String?,
  leaveType: json['leave_type'] == null
      ? null
      : IdName.fromJson(json['leave_type'] as Map<String, dynamic>),
  dateFrom: json['date_from'] as String?,
  dateTo: json['date_to'] as String?,
  numberOfDays: (json['number_of_days'] as num?)?.toDouble(),
  description: json['description'] as String?,
  employee: json['employee'] == null
      ? null
      : IdName.fromJson(json['employee'] as Map<String, dynamic>),
  approvers:
      (json['approvers'] as List<dynamic>?)
          ?.map((e) => IdName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$LeaveDetailResponseDataToJson(
  LeaveDetailResponseData instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'state': instance.state,
  'leave_type': instance.leaveType?.toJson(),
  'date_from': instance.dateFrom,
  'date_to': instance.dateTo,
  'number_of_days': instance.numberOfDays,
  'description': instance.description,
  'employee': instance.employee?.toJson(),
  'approvers': instance.approvers?.map((e) => e.toJson()).toList(),
};

ApiOkLeaveDetail _$ApiOkLeaveDetailFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveDetail(
      ok: json['ok'] as bool,
      data: LeaveDetailResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveDetailToJson(ApiOkLeaveDetail instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveHistoryRequest _$LeaveHistoryRequestFromJson(Map<String, dynamic> json) =>
    LeaveHistoryRequest(
      employeeId: (json['employee_id'] as num?)?.toInt(),
      latest: (json['latest'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LeaveHistoryRequestToJson(
  LeaveHistoryRequest instance,
) => <String, dynamic>{
  'employee_id': instance.employeeId,
  'latest': instance.latest,
};

LeaveHistoryResponseData _$LeaveHistoryResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveHistoryResponseData(
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LeaveListItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$LeaveHistoryResponseDataToJson(
  LeaveHistoryResponseData instance,
) => <String, dynamic>{
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiOkLeaveHistory _$ApiOkLeaveHistoryFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveHistory(
      ok: json['ok'] as bool,
      data: LeaveHistoryResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveHistoryToJson(ApiOkLeaveHistory instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveCreateRequest _$LeaveCreateRequestFromJson(Map<String, dynamic> json) =>
    LeaveCreateRequest(
      leaveTypeId: (json['leave_type_id'] as num).toInt(),
      employeeId: (json['employee_id'] as num?)?.toInt(),
      dateFrom: json['date_from'] as String,
      dateTo: json['date_to'] as String,
      description: json['description'] as String?,
      autoSubmit: json['auto_submit'] as bool?,
      requestHourFrom: (json['request_hour_from'] as num?)?.toDouble(),
      requestHourTo: (json['request_hour_to'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LeaveCreateRequestToJson(LeaveCreateRequest instance) =>
    <String, dynamic>{
      'leave_type_id': instance.leaveTypeId,
      'employee_id': instance.employeeId,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'description': instance.description,
      'auto_submit': instance.autoSubmit,
      'request_hour_from': instance.requestHourFrom,
      'request_hour_to': instance.requestHourTo,
    };

LeaveCreateResponseData _$LeaveCreateResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveCreateResponseData(
  id: (json['id'] as num).toInt(),
  state: json['state'] as String,
);

Map<String, dynamic> _$LeaveCreateResponseDataToJson(
  LeaveCreateResponseData instance,
) => <String, dynamic>{'id': instance.id, 'state': instance.state};

ApiOkLeaveCreate _$ApiOkLeaveCreateFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveCreate(
      ok: json['ok'] as bool,
      data: LeaveCreateResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveCreateToJson(ApiOkLeaveCreate instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

ApprovalsEmployeesResponseData _$ApprovalsEmployeesResponseDataFromJson(
  Map<String, dynamic> json,
) => ApprovalsEmployeesResponseData(
  managed:
      (json['managed'] as List<dynamic>?)
          ?.map((e) => IdName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  waitingForMe:
      (json['waiting_for_me'] as List<dynamic>?)
          ?.map((e) => IdName.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ApprovalsEmployeesResponseDataToJson(
  ApprovalsEmployeesResponseData instance,
) => <String, dynamic>{
  'managed': instance.managed?.map((e) => e.toJson()).toList(),
  'waiting_for_me': instance.waitingForMe?.map((e) => e.toJson()).toList(),
};

ApiOkApprovalsEmployees _$ApiOkApprovalsEmployeesFromJson(
  Map<String, dynamic> json,
) => ApiOkApprovalsEmployees(
  ok: json['ok'] as bool,
  data: ApprovalsEmployeesResponseData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiOkApprovalsEmployeesToJson(
  ApiOkApprovalsEmployees instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'data': instance.data.toJson(),
  'meta': instance.meta.toJson(),
};

ApprovalsListRequest _$ApprovalsListRequestFromJson(
  Map<String, dynamic> json,
) => ApprovalsListRequest(
  scope: json['scope'] as String?,
  employeeId: (json['employee_id'] as num?)?.toInt(),
  states:
      (json['states'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  dateFrom: json['date_from'] as String?,
  dateTo: json['date_to'] as String?,
  latest: (json['latest'] as num?)?.toInt(),
);

Map<String, dynamic> _$ApprovalsListRequestToJson(
  ApprovalsListRequest instance,
) => <String, dynamic>{
  'scope': instance.scope,
  'employee_id': instance.employeeId,
  'states': instance.states,
  'date_from': instance.dateFrom,
  'date_to': instance.dateTo,
  'latest': instance.latest,
};

ApprovalsListResponseData _$ApprovalsListResponseDataFromJson(
  Map<String, dynamic> json,
) => ApprovalsListResponseData(
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LeaveListItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$ApprovalsListResponseDataToJson(
  ApprovalsListResponseData instance,
) => <String, dynamic>{
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiOkApprovalsList _$ApiOkApprovalsListFromJson(Map<String, dynamic> json) =>
    ApiOkApprovalsList(
      ok: json['ok'] as bool,
      data: ApprovalsListResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkApprovalsListToJson(ApiOkApprovalsList instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveApproveRequest _$LeaveApproveRequestFromJson(Map<String, dynamic> json) =>
    LeaveApproveRequest(leaveId: (json['leave_id'] as num).toInt());

Map<String, dynamic> _$LeaveApproveRequestToJson(
  LeaveApproveRequest instance,
) => <String, dynamic>{'leave_id': instance.leaveId};

LeaveApproveResponseData _$LeaveApproveResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveApproveResponseData(
  id: (json['id'] as num?)?.toInt(),
  state: json['state'] as String?,
);

Map<String, dynamic> _$LeaveApproveResponseDataToJson(
  LeaveApproveResponseData instance,
) => <String, dynamic>{'id': instance.id, 'state': instance.state};

ApiOkLeaveApprove _$ApiOkLeaveApproveFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveApprove(
      ok: json['ok'] as bool,
      data: LeaveApproveResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveApproveToJson(ApiOkLeaveApprove instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveRefuseRequest _$LeaveRefuseRequestFromJson(Map<String, dynamic> json) =>
    LeaveRefuseRequest(
      leaveId: (json['leave_id'] as num).toInt(),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$LeaveRefuseRequestToJson(LeaveRefuseRequest instance) =>
    <String, dynamic>{'leave_id': instance.leaveId, 'reason': instance.reason};

LeaveRefuseResponseData _$LeaveRefuseResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveRefuseResponseData(
  id: (json['id'] as num?)?.toInt(),
  state: json['state'] as String?,
);

Map<String, dynamic> _$LeaveRefuseResponseDataToJson(
  LeaveRefuseResponseData instance,
) => <String, dynamic>{'id': instance.id, 'state': instance.state};

ApiOkLeaveRefuse _$ApiOkLeaveRefuseFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveRefuse(
      ok: json['ok'] as bool,
      data: LeaveRefuseResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveRefuseToJson(ApiOkLeaveRefuse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

LeaveHRListRequest _$LeaveHRListRequestFromJson(Map<String, dynamic> json) =>
    LeaveHRListRequest(
      onlyPending: json['only_pending'] as bool?,
      states:
          (json['states'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
      latest: (json['latest'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LeaveHRListRequestToJson(LeaveHRListRequest instance) =>
    <String, dynamic>{
      'only_pending': instance.onlyPending,
      'states': instance.states,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'latest': instance.latest,
    };

LeaveHRListResponseData _$LeaveHRListResponseDataFromJson(
  Map<String, dynamic> json,
) => LeaveHRListResponseData(
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => LeaveListItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$LeaveHRListResponseDataToJson(
  LeaveHRListResponseData instance,
) => <String, dynamic>{
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiOkLeaveHRList _$ApiOkLeaveHRListFromJson(Map<String, dynamic> json) =>
    ApiOkLeaveHRList(
      ok: json['ok'] as bool,
      data: LeaveHRListResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkLeaveHRListToJson(ApiOkLeaveHRList instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

CelebrationsRequest _$CelebrationsRequestFromJson(Map<String, dynamic> json) =>
    CelebrationsRequest($true: json['true'] as String?);

Map<String, dynamic> _$CelebrationsRequestToJson(
  CelebrationsRequest instance,
) => <String, dynamic>{'true': instance.$true};

CelebrationItem _$CelebrationItemFromJson(Map<String, dynamic> json) =>
    CelebrationItem(
      employee: json['employee'] == null
          ? null
          : IdName.fromJson(json['employee'] as Map<String, dynamic>),
      type: json['type'] as String?,
      date: json['date'] as String?,
      years: (json['years'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CelebrationItemToJson(CelebrationItem instance) =>
    <String, dynamic>{
      'employee': instance.employee?.toJson(),
      'type': instance.type,
      'date': instance.date,
      'years': instance.years,
    };

CelebrationsResponseData _$CelebrationsResponseDataFromJson(
  Map<String, dynamic> json,
) => CelebrationsResponseData(
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CelebrationItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CelebrationsResponseDataToJson(
  CelebrationsResponseData instance,
) => <String, dynamic>{
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

ApiOkCelebrations _$ApiOkCelebrationsFromJson(Map<String, dynamic> json) =>
    ApiOkCelebrations(
      ok: json['ok'] as bool,
      data: CelebrationsResponseData.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      meta: ApiMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiOkCelebrationsToJson(ApiOkCelebrations instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'data': instance.data.toJson(),
      'meta': instance.meta.toJson(),
    };

ApiError$Error _$ApiError$ErrorFromJson(Map<String, dynamic> json) =>
    ApiError$Error(
      code: json['code'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ApiError$ErrorToJson(ApiError$Error instance) =>
    <String, dynamic>{'code': instance.code, 'message': instance.message};

LoginResponseData$User _$LoginResponseData$UserFromJson(
  Map<String, dynamic> json,
) => LoginResponseData$User(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  login: json['login'] as String,
);

Map<String, dynamic> _$LoginResponseData$UserToJson(
  LoginResponseData$User instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'login': instance.login,
};

MeResponseData$Partner _$MeResponseData$PartnerFromJson(
  Map<String, dynamic> json,
) => MeResponseData$Partner(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String?,
  mobile: json['mobile'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$MeResponseData$PartnerToJson(
  MeResponseData$Partner instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'mobile': instance.mobile,
  'phone': instance.phone,
};

MeResponseData$Employee _$MeResponseData$EmployeeFromJson(
  Map<String, dynamic> json,
) => MeResponseData$Employee(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  barcode: json['barcode'] as String?,
  mobilePhone: json['mobile_phone'] as String?,
  workPhone: json['work_phone'] as String?,
  workEmail: json['work_email'] as String?,
  departmentId: json['department_id'] == null
      ? null
      : FalseOrIdName.fromJson(json['department_id'] as Map<String, dynamic>),
  jobId: json['job_id'] == null
      ? null
      : FalseOrIdName.fromJson(json['job_id'] as Map<String, dynamic>),
  parentId: json['parent_id'] == null
      ? null
      : FalseOrIdName.fromJson(json['parent_id'] as Map<String, dynamic>),
  addressId: json['address_id'] == null
      ? null
      : FalseOrIdName.fromJson(json['address_id'] as Map<String, dynamic>),
  resourceCalendarId: json['resource_calendar_id'] == null
      ? null
      : FalseOrIdName.fromJson(
          json['resource_calendar_id'] as Map<String, dynamic>,
        ),
  department: json['department'] as String?,
  jobTitle: json['job_title'] as String?,
);

Map<String, dynamic> _$MeResponseData$EmployeeToJson(
  MeResponseData$Employee instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'barcode': instance.barcode,
  'mobile_phone': instance.mobilePhone,
  'work_phone': instance.workPhone,
  'work_email': instance.workEmail,
  'department_id': instance.departmentId?.toJson(),
  'job_id': instance.jobId?.toJson(),
  'parent_id': instance.parentId?.toJson(),
  'address_id': instance.addressId?.toJson(),
  'resource_calendar_id': instance.resourceCalendarId?.toJson(),
  'department': instance.department,
  'job_title': instance.jobTitle,
};

MeResponseData$Roles _$MeResponseData$RolesFromJson(
  Map<String, dynamic> json,
) => MeResponseData$Roles(
  isHrManager: json['is_hr_manager'] as bool?,
  isLineManager: json['is_line_manager'] as bool?,
  isDeptManager: json['is_dept_manager'] as bool?,
  isLeaveTypeResponsible: json['is_leave_type_responsible'] as bool?,
  subordinateCount: (json['subordinate_count'] as num?)?.toInt(),
  isManagerOrApprover: json['is_manager_or_approver'] as bool?,
);

Map<String, dynamic> _$MeResponseData$RolesToJson(
  MeResponseData$Roles instance,
) => <String, dynamic>{
  'is_hr_manager': instance.isHrManager,
  'is_line_manager': instance.isLineManager,
  'is_dept_manager': instance.isDeptManager,
  'is_leave_type_responsible': instance.isLeaveTypeResponsible,
  'subordinate_count': instance.subordinateCount,
  'is_manager_or_approver': instance.isManagerOrApprover,
};

PayslipDetailResponseData$Slip _$PayslipDetailResponseData$SlipFromJson(
  Map<String, dynamic> json,
) => PayslipDetailResponseData$Slip(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  dateFrom: json['date_from'] as String?,
  dateTo: json['date_to'] as String?,
  state: json['state'] as String?,
);

Map<String, dynamic> _$PayslipDetailResponseData$SlipToJson(
  PayslipDetailResponseData$Slip instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'date_from': instance.dateFrom,
  'date_to': instance.dateTo,
  'state': instance.state,
};

LeaveTypesResponseData$Items$Item _$LeaveTypesResponseData$Items$ItemFromJson(
  Map<String, dynamic> json,
) => LeaveTypesResponseData$Items$Item(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  balanceDays: (json['balance_days'] as num?)?.toDouble(),
  canRequest: json['can_request'] as bool?,
  requestUnit: json['request_unit'] as String?,
  requiresAllocation: json['requires_allocation'] as bool?,
);

Map<String, dynamic> _$LeaveTypesResponseData$Items$ItemToJson(
  LeaveTypesResponseData$Items$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'balance_days': instance.balanceDays,
  'can_request': instance.canRequest,
  'request_unit': instance.requestUnit,
  'requires_allocation': instance.requiresAllocation,
};

LeaveListItem$ApprovalRoute$Item _$LeaveListItem$ApprovalRoute$ItemFromJson(
  Map<String, dynamic> json,
) => LeaveListItem$ApprovalRoute$Item(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  state: json['state'] as String?,
);

Map<String, dynamic> _$LeaveListItem$ApprovalRoute$ItemToJson(
  LeaveListItem$ApprovalRoute$Item instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'state': instance.state,
};
