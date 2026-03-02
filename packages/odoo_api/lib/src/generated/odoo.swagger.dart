// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'odoo.metadata.swagger.dart';

part 'odoo.swagger.chopper.dart';
part 'odoo.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Odoo extends ChopperService {
  static Odoo create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$Odoo(client);
    }

    final newClient = ChopperClient(
      services: [_$Odoo()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$Odoo(newClient);
  }

  ///Download OpenAPI YAML
  Future<chopper.Response<String>> apiDocsOpenapiGet() {
    return _apiDocsOpenapiGet();
  }

  ///Download OpenAPI YAML
  @GET(path: '/api/docs/openapi')
  Future<chopper.Response<String>> _apiDocsOpenapiGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Download OpenAPI YAML',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Docs"],
      deprecated: false,
    ),
  });

  ///Login (Portal) -> Bearer token
  Future<chopper.Response<ApiOkLogin>> fkhrApiAuthLoginPost({
    required LoginRequest? body,
  }) {
    generatedMapping.putIfAbsent(ApiOkLogin, () => ApiOkLogin.fromJsonFactory);

    return _fkhrApiAuthLoginPost(body: body);
  }

  ///Login (Portal) -> Bearer token
  @POST(path: '/fkhr/api/auth/login', optionalBody: true)
  Future<chopper.Response<ApiOkLogin>> _fkhrApiAuthLoginPost({
    @Body() required LoginRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Login (Portal) -> Bearer token',
      operationId: '',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Auth"],
      deprecated: false,
    ),
  });

  ///Logout (revoke current Bearer token)
  Future<chopper.Response<ApiOkLogout>> fkhrApiAuthLogoutPost() {
    generatedMapping.putIfAbsent(
      ApiOkLogout,
      () => ApiOkLogout.fromJsonFactory,
    );

    return _fkhrApiAuthLogoutPost();
  }

  ///Logout (revoke current Bearer token)
  @POST(path: '/fkhr/api/auth/logout', optionalBody: true)
  Future<chopper.Response<ApiOkLogout>> _fkhrApiAuthLogoutPost({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Logout (revoke current Bearer token)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Auth"],
      deprecated: false,
    ),
  });

  ///Profile + roles + employee details
  Future<chopper.Response<ApiOkMe>> fkhrApiMePost() {
    generatedMapping.putIfAbsent(ApiOkMe, () => ApiOkMe.fromJsonFactory);

    return _fkhrApiMePost();
  }

  ///Profile + roles + employee details
  @POST(path: '/fkhr/api/me', optionalBody: true)
  Future<chopper.Response<ApiOkMe>> _fkhrApiMePost({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Profile + roles + employee details',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Profile"],
      deprecated: false,
    ),
  });

  ///Attendance mark (in/out) + geofence + idempotency + face images
  Future<chopper.Response<ApiOkAttendanceMark>> fkhrApiAttendanceMarkPost({
    required AttendanceMarkRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkAttendanceMark,
      () => ApiOkAttendanceMark.fromJsonFactory,
    );

    return _fkhrApiAttendanceMarkPost(body: body);
  }

  ///Attendance mark (in/out) + geofence + idempotency + face images
  @POST(path: '/fkhr/api/attendance/mark_', optionalBody: true)
  Future<chopper.Response<ApiOkAttendanceMark>> _fkhrApiAttendanceMarkPost({
    @Body() required AttendanceMarkRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary:
          'Attendance mark (in/out) + geofence + idempotency + face images',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Attendance"],
      deprecated: false,
    ),
  });

  ///Attendance list (actions in/out) by date range
  Future<chopper.Response<ApiOkAttendanceList>> fkhrApiAttendanceListPost({
    required AttendanceListRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkAttendanceList,
      () => ApiOkAttendanceList.fromJsonFactory,
    );

    return _fkhrApiAttendanceListPost(body: body);
  }

  ///Attendance list (actions in/out) by date range
  @POST(path: '/fkhr/api/attendance/list', optionalBody: true)
  Future<chopper.Response<ApiOkAttendanceList>> _fkhrApiAttendanceListPost({
    @Body() required AttendanceListRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Attendance list (actions in/out) by date range',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Attendance"],
      deprecated: false,
    ),
  });

  ///Payslips list + totals
  Future<chopper.Response<ApiOkPayslipsList>> fkhrApiPayslipsListPost({
    required PayslipsListRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkPayslipsList,
      () => ApiOkPayslipsList.fromJsonFactory,
    );

    return _fkhrApiPayslipsListPost(body: body);
  }

  ///Payslips list + totals
  @POST(path: '/fkhr/api/payslips/list', optionalBody: true)
  Future<chopper.Response<ApiOkPayslipsList>> _fkhrApiPayslipsListPost({
    @Body() required PayslipsListRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Payslips list + totals',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Payslips"],
      deprecated: false,
    ),
  });

  ///Payslip detail (lines + totals)
  Future<chopper.Response<ApiOkPayslipDetail>> fkhrApiPayslipsDetailPost({
    required PayslipDetailRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkPayslipDetail,
      () => ApiOkPayslipDetail.fromJsonFactory,
    );

    return _fkhrApiPayslipsDetailPost(body: body);
  }

  ///Payslip detail (lines + totals)
  @POST(path: '/fkhr/api/payslips/detail', optionalBody: true)
  Future<chopper.Response<ApiOkPayslipDetail>> _fkhrApiPayslipsDetailPost({
    @Body() required PayslipDetailRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Payslip detail (lines + totals)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Payslips"],
      deprecated: false,
    ),
  });

  ///Leave types + balance + request rules
  Future<chopper.Response<ApiOkLeaveTypes>> fkhrApiLeaveTypesPost() {
    generatedMapping.putIfAbsent(
      ApiOkLeaveTypes,
      () => ApiOkLeaveTypes.fromJsonFactory,
    );

    return _fkhrApiLeaveTypesPost();
  }

  ///Leave types + balance + request rules
  @POST(path: '/fkhr/api/leave/types', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveTypes>> _fkhrApiLeaveTypesPost({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Leave types + balance + request rules',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Leaves"],
      deprecated: false,
    ),
  });

  ///Summary (remaining days + hourly balance + flex minutes)
  Future<chopper.Response<ApiOkLeaveSummary>> fkhrApiLeaveSummaryPost({
    required LeaveSummaryRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveSummary,
      () => ApiOkLeaveSummary.fromJsonFactory,
    );

    return _fkhrApiLeaveSummaryPost(body: body);
  }

  ///Summary (remaining days + hourly balance + flex minutes)
  @POST(path: '/fkhr/api/leave/summary', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveSummary>> _fkhrApiLeaveSummaryPost({
    @Body() required LeaveSummaryRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Summary (remaining days + hourly balance + flex minutes)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Leaves"],
      deprecated: false,
    ),
  });

  ///Leave list (smart latest + include pending) + approval route
  Future<chopper.Response<ApiOkLeaveList>> fkhrApiLeaveListPost({
    required LeaveListRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveList,
      () => ApiOkLeaveList.fromJsonFactory,
    );

    return _fkhrApiLeaveListPost(body: body);
  }

  ///Leave list (smart latest + include pending) + approval route
  @POST(path: '/fkhr/api/leave/list', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveList>> _fkhrApiLeaveListPost({
    @Body() required LeaveListRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Leave list (smart latest + include pending) + approval route',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Leaves"],
      deprecated: false,
    ),
  });

  ///Leave detail
  Future<chopper.Response<ApiOkLeaveDetail>> fkhrApiLeaveDetailPost({
    required LeaveDetailRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveDetail,
      () => ApiOkLeaveDetail.fromJsonFactory,
    );

    return _fkhrApiLeaveDetailPost(body: body);
  }

  ///Leave detail
  @POST(path: '/fkhr/api/leave/detail', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveDetail>> _fkhrApiLeaveDetailPost({
    @Body() required LeaveDetailRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Leave detail',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Leaves"],
      deprecated: false,
    ),
  });

  ///Leave history by employee
  Future<chopper.Response<ApiOkLeaveHistory>> fkhrApiLeaveHistoryPost({
    required LeaveHistoryRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveHistory,
      () => ApiOkLeaveHistory.fromJsonFactory,
    );

    return _fkhrApiLeaveHistoryPost(body: body);
  }

  ///Leave history by employee
  @POST(path: '/fkhr/api/leave/history', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveHistory>> _fkhrApiLeaveHistoryPost({
    @Body() required LeaveHistoryRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Leave history by employee',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Leaves"],
      deprecated: false,
    ),
  });

  ///Create leave (days/hours)
  Future<chopper.Response<ApiOkLeaveCreate>> fkhrApiLeaveCreatePost({
    required LeaveCreateRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveCreate,
      () => ApiOkLeaveCreate.fromJsonFactory,
    );

    return _fkhrApiLeaveCreatePost(body: body);
  }

  ///Create leave (days/hours)
  @POST(path: '/fkhr/api/leave/create_', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveCreate>> _fkhrApiLeaveCreatePost({
    @Body() required LeaveCreateRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Create leave (days/hours) ',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Leaves"],
      deprecated: false,
    ),
  });

  ///Approvals employees (managed + waiting for me)
  Future<chopper.Response<ApiOkApprovalsEmployees>>
  fkhrApiLeaveApprovalsEmployeesPost() {
    generatedMapping.putIfAbsent(
      ApiOkApprovalsEmployees,
      () => ApiOkApprovalsEmployees.fromJsonFactory,
    );

    return _fkhrApiLeaveApprovalsEmployeesPost();
  }

  ///Approvals employees (managed + waiting for me)
  @POST(path: '/fkhr/api/leave/approvals/employees', optionalBody: true)
  Future<chopper.Response<ApiOkApprovalsEmployees>>
  _fkhrApiLeaveApprovalsEmployeesPost({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Approvals employees (managed + waiting for me)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Approvals"],
      deprecated: false,
    ),
  });

  ///Approvals list (for_me/team)
  Future<chopper.Response<ApiOkApprovalsList>> fkhrApiLeaveApprovalsListPost({
    required ApprovalsListRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkApprovalsList,
      () => ApiOkApprovalsList.fromJsonFactory,
    );

    return _fkhrApiLeaveApprovalsListPost(body: body);
  }

  ///Approvals list (for_me/team)
  @POST(path: '/fkhr/api/leave/approvals/list', optionalBody: true)
  Future<chopper.Response<ApiOkApprovalsList>> _fkhrApiLeaveApprovalsListPost({
    @Body() required ApprovalsListRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Approvals list (for_me/team)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Approvals"],
      deprecated: false,
    ),
  });

  ///Approve leave (current approver only)
  Future<chopper.Response<ApiOkLeaveApprove>> fkhrApiLeaveApprovePost({
    required LeaveApproveRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveApprove,
      () => ApiOkLeaveApprove.fromJsonFactory,
    );

    return _fkhrApiLeaveApprovePost(body: body);
  }

  ///Approve leave (current approver only)
  @POST(path: '/fkhr/api/leave/approve', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveApprove>> _fkhrApiLeaveApprovePost({
    @Body() required LeaveApproveRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Approve leave (current approver only)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Approvals"],
      deprecated: false,
    ),
  });

  ///Refuse leave (current approver only)
  Future<chopper.Response<ApiOkLeaveRefuse>> fkhrApiLeaveRefusePost({
    required LeaveRefuseRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveRefuse,
      () => ApiOkLeaveRefuse.fromJsonFactory,
    );

    return _fkhrApiLeaveRefusePost(body: body);
  }

  ///Refuse leave (current approver only)
  @POST(path: '/fkhr/api/leave/refuse', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveRefuse>> _fkhrApiLeaveRefusePost({
    @Body() required LeaveRefuseRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Refuse leave (current approver only)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Approvals"],
      deprecated: false,
    ),
  });

  ///HR list (all leaves except mine)
  Future<chopper.Response<ApiOkLeaveHRList>> fkhrApiLeaveHrListPost({
    required LeaveHRListRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkLeaveHRList,
      () => ApiOkLeaveHRList.fromJsonFactory,
    );

    return _fkhrApiLeaveHrListPost(body: body);
  }

  ///HR list (all leaves except mine)
  @POST(path: '/fkhr/api/leave/hr/list', optionalBody: true)
  Future<chopper.Response<ApiOkLeaveHRList>> _fkhrApiLeaveHrListPost({
    @Body() required LeaveHRListRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'HR list (all leaves except mine)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["Approvals"],
      deprecated: false,
    ),
  });

  ///Celebrations (birthdays + anniversaries)
  Future<chopper.Response<ApiOkCelebrations>> fkhrApiEmployeesCelebrationsPost({
    required CelebrationsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      ApiOkCelebrations,
      () => ApiOkCelebrations.fromJsonFactory,
    );

    return _fkhrApiEmployeesCelebrationsPost(body: body);
  }

  ///Celebrations (birthdays + anniversaries)
  @POST(path: '/fkhr/api/employees/celebrations', optionalBody: true)
  Future<chopper.Response<ApiOkCelebrations>>
  _fkhrApiEmployeesCelebrationsPost({
    @Body() required CelebrationsRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Celebrations (birthdays + anniversaries)',
      operationId: '',
      consumes: [],
      produces: [],
      security: ["BearerAuth"],
      tags: ["People"],
      deprecated: false,
    ),
  });
}

@JsonSerializable(explicitToJson: true)
class ApiMeta {
  const ApiMeta();

  factory ApiMeta.fromJson(Map<String, dynamic> json) =>
      _$ApiMetaFromJson(json);

  static const toJsonFactory = _$ApiMetaToJson;
  Map<String, dynamic> toJson() => _$ApiMetaToJson(this);

  static const fromJsonFactory = _$ApiMetaFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ApiError {
  const ApiError({required this.ok, required this.error, required this.data});

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  static const toJsonFactory = _$ApiErrorToJson;
  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'error')
  final ApiError$Error error;
  @JsonKey(name: 'data')
  final Object data;
  static const fromJsonFactory = _$ApiErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiError &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ApiErrorExtension on ApiError {
  ApiError copyWith({bool? ok, ApiError$Error? error, Object? data}) {
    return ApiError(
      ok: ok ?? this.ok,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }

  ApiError copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<ApiError$Error>? error,
    Wrapped<Object>? data,
  }) {
    return ApiError(
      ok: (ok != null ? ok.value : this.ok),
      error: (error != null ? error.value : this.error),
      data: (data != null ? data.value : this.data),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class IdName {
  const IdName({required this.id, required this.name});

  factory IdName.fromJson(Map<String, dynamic> json) => _$IdNameFromJson(json);

  static const toJsonFactory = _$IdNameToJson;
  Map<String, dynamic> toJson() => _$IdNameToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$IdNameFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is IdName &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $IdNameExtension on IdName {
  IdName copyWith({int? id, String? name}) {
    return IdName(id: id ?? this.id, name: name ?? this.name);
  }

  IdName copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return IdName(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FalseOrIdName {
  const FalseOrIdName();

  factory FalseOrIdName.fromJson(Map<String, dynamic> json) =>
      _$FalseOrIdNameFromJson(json);

  static const toJsonFactory = _$FalseOrIdNameToJson;
  Map<String, dynamic> toJson() => _$FalseOrIdNameToJson(this);

  static const fromJsonFactory = _$FalseOrIdNameFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class LoginRequest {
  const LoginRequest({
    required this.db,
    required this.login,
    required this.password,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  static const toJsonFactory = _$LoginRequestToJson;
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @JsonKey(name: 'db')
  final String db;
  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$LoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LoginRequest &&
            (identical(other.db, db) ||
                const DeepCollectionEquality().equals(other.db, db)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(db) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginRequestExtension on LoginRequest {
  LoginRequest copyWith({String? db, String? login, String? password}) {
    return LoginRequest(
      db: db ?? this.db,
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }

  LoginRequest copyWithWrapped({
    Wrapped<String>? db,
    Wrapped<String>? login,
    Wrapped<String>? password,
  }) {
    return LoginRequest(
      db: (db != null ? db.value : this.db),
      login: (login != null ? login.value : this.login),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LoginResponseData {
  const LoginResponseData({
    required this.token,
    required this.tokenType,
    required this.expiresAt,
    required this.user,
    required this.employee,
  });

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);

  static const toJsonFactory = _$LoginResponseDataToJson;
  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);

  @JsonKey(name: 'token')
  final String token;
  @JsonKey(name: 'token_type')
  final String tokenType;
  @JsonKey(name: 'expires_at')
  final String expiresAt;
  @JsonKey(name: 'user')
  final LoginResponseData$User user;
  @JsonKey(name: 'employee')
  final IdName employee;
  static const fromJsonFactory = _$LoginResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LoginResponseData &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality().equals(
                  other.expiresAt,
                  expiresAt,
                )) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality().equals(
                  other.employee,
                  employee,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(employee) ^
      runtimeType.hashCode;
}

extension $LoginResponseDataExtension on LoginResponseData {
  LoginResponseData copyWith({
    String? token,
    String? tokenType,
    String? expiresAt,
    LoginResponseData$User? user,
    IdName? employee,
  }) {
    return LoginResponseData(
      token: token ?? this.token,
      tokenType: tokenType ?? this.tokenType,
      expiresAt: expiresAt ?? this.expiresAt,
      user: user ?? this.user,
      employee: employee ?? this.employee,
    );
  }

  LoginResponseData copyWithWrapped({
    Wrapped<String>? token,
    Wrapped<String>? tokenType,
    Wrapped<String>? expiresAt,
    Wrapped<LoginResponseData$User>? user,
    Wrapped<IdName>? employee,
  }) {
    return LoginResponseData(
      token: (token != null ? token.value : this.token),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
      expiresAt: (expiresAt != null ? expiresAt.value : this.expiresAt),
      user: (user != null ? user.value : this.user),
      employee: (employee != null ? employee.value : this.employee),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLogin {
  const ApiOkLogin({required this.ok, required this.data, required this.meta});

  factory ApiOkLogin.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLoginFromJson(json);

  static const toJsonFactory = _$ApiOkLoginToJson;
  Map<String, dynamic> toJson() => _$ApiOkLoginToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LoginResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLoginFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLogin &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLoginExtension on ApiOkLogin {
  ApiOkLogin copyWith({bool? ok, LoginResponseData? data, ApiMeta? meta}) {
    return ApiOkLogin(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLogin copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LoginResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLogin(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LogoutResponseData {
  const LogoutResponseData({required this.revoked});

  factory LogoutResponseData.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseDataFromJson(json);

  static const toJsonFactory = _$LogoutResponseDataToJson;
  Map<String, dynamic> toJson() => _$LogoutResponseDataToJson(this);

  @JsonKey(name: 'revoked')
  final bool revoked;
  static const fromJsonFactory = _$LogoutResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LogoutResponseData &&
            (identical(other.revoked, revoked) ||
                const DeepCollectionEquality().equals(other.revoked, revoked)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(revoked) ^ runtimeType.hashCode;
}

extension $LogoutResponseDataExtension on LogoutResponseData {
  LogoutResponseData copyWith({bool? revoked}) {
    return LogoutResponseData(revoked: revoked ?? this.revoked);
  }

  LogoutResponseData copyWithWrapped({Wrapped<bool>? revoked}) {
    return LogoutResponseData(
      revoked: (revoked != null ? revoked.value : this.revoked),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLogout {
  const ApiOkLogout({required this.ok, required this.data, required this.meta});

  factory ApiOkLogout.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLogoutFromJson(json);

  static const toJsonFactory = _$ApiOkLogoutToJson;
  Map<String, dynamic> toJson() => _$ApiOkLogoutToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LogoutResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLogoutFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLogout &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLogoutExtension on ApiOkLogout {
  ApiOkLogout copyWith({bool? ok, LogoutResponseData? data, ApiMeta? meta}) {
    return ApiOkLogout(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLogout copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LogoutResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLogout(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MeResponseData {
  const MeResponseData({
    required this.uid,
    required this.login,
    required this.name,
    required this.partner,
    required this.employee,
    required this.roles,
  });

  factory MeResponseData.fromJson(Map<String, dynamic> json) =>
      _$MeResponseDataFromJson(json);

  static const toJsonFactory = _$MeResponseDataToJson;
  Map<String, dynamic> toJson() => _$MeResponseDataToJson(this);

  @JsonKey(name: 'uid')
  final int uid;
  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'partner')
  final MeResponseData$Partner partner;
  @JsonKey(name: 'employee')
  final MeResponseData$Employee employee;
  @JsonKey(name: 'roles')
  final MeResponseData$Roles roles;
  static const fromJsonFactory = _$MeResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MeResponseData &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.partner, partner) ||
                const DeepCollectionEquality().equals(
                  other.partner,
                  partner,
                )) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality().equals(
                  other.employee,
                  employee,
                )) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(partner) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(roles) ^
      runtimeType.hashCode;
}

extension $MeResponseDataExtension on MeResponseData {
  MeResponseData copyWith({
    int? uid,
    String? login,
    String? name,
    MeResponseData$Partner? partner,
    MeResponseData$Employee? employee,
    MeResponseData$Roles? roles,
  }) {
    return MeResponseData(
      uid: uid ?? this.uid,
      login: login ?? this.login,
      name: name ?? this.name,
      partner: partner ?? this.partner,
      employee: employee ?? this.employee,
      roles: roles ?? this.roles,
    );
  }

  MeResponseData copyWithWrapped({
    Wrapped<int>? uid,
    Wrapped<String>? login,
    Wrapped<String>? name,
    Wrapped<MeResponseData$Partner>? partner,
    Wrapped<MeResponseData$Employee>? employee,
    Wrapped<MeResponseData$Roles>? roles,
  }) {
    return MeResponseData(
      uid: (uid != null ? uid.value : this.uid),
      login: (login != null ? login.value : this.login),
      name: (name != null ? name.value : this.name),
      partner: (partner != null ? partner.value : this.partner),
      employee: (employee != null ? employee.value : this.employee),
      roles: (roles != null ? roles.value : this.roles),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkMe {
  const ApiOkMe({required this.ok, required this.data, required this.meta});

  factory ApiOkMe.fromJson(Map<String, dynamic> json) =>
      _$ApiOkMeFromJson(json);

  static const toJsonFactory = _$ApiOkMeToJson;
  Map<String, dynamic> toJson() => _$ApiOkMeToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final MeResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkMeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkMe &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkMeExtension on ApiOkMe {
  ApiOkMe copyWith({bool? ok, MeResponseData? data, ApiMeta? meta}) {
    return ApiOkMe(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkMe copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<MeResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkMe(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceMarkRequest {
  const AttendanceMarkRequest({
    this.action,
    this.mode,
    this.lat,
    this.lng,
    this.countryName,
    this.ip,
    this.browser,
    this.note,
    this.when,
    this.token,
    this.faceB64,
    this.faceInB64,
    this.faceOutB64,
  });

  factory AttendanceMarkRequest.fromJson(Map<String, dynamic> json) =>
      _$AttendanceMarkRequestFromJson(json);

  static const toJsonFactory = _$AttendanceMarkRequestToJson;
  Map<String, dynamic> toJson() => _$AttendanceMarkRequestToJson(this);

  @JsonKey(name: 'action')
  final String? action;
  @JsonKey(name: 'mode')
  final String? mode;
  @JsonKey(name: 'lat')
  final double? lat;
  @JsonKey(name: 'lng')
  final double? lng;
  @JsonKey(name: 'country_name')
  final String? countryName;
  @JsonKey(name: 'ip')
  final String? ip;
  @JsonKey(name: 'browser')
  final String? browser;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'when')
  final String? when;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'face_b64')
  final String? faceB64;
  @JsonKey(name: 'face_in_b64')
  final String? faceInB64;
  @JsonKey(name: 'face_out_b64')
  final String? faceOutB64;
  static const fromJsonFactory = _$AttendanceMarkRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttendanceMarkRequest &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)) &&
            (identical(other.browser, browser) ||
                const DeepCollectionEquality().equals(
                  other.browser,
                  browser,
                )) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.when, when) ||
                const DeepCollectionEquality().equals(other.when, when)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.faceB64, faceB64) ||
                const DeepCollectionEquality().equals(
                  other.faceB64,
                  faceB64,
                )) &&
            (identical(other.faceInB64, faceInB64) ||
                const DeepCollectionEquality().equals(
                  other.faceInB64,
                  faceInB64,
                )) &&
            (identical(other.faceOutB64, faceOutB64) ||
                const DeepCollectionEquality().equals(
                  other.faceOutB64,
                  faceOutB64,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(ip) ^
      const DeepCollectionEquality().hash(browser) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(when) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(faceB64) ^
      const DeepCollectionEquality().hash(faceInB64) ^
      const DeepCollectionEquality().hash(faceOutB64) ^
      runtimeType.hashCode;
}

extension $AttendanceMarkRequestExtension on AttendanceMarkRequest {
  AttendanceMarkRequest copyWith({
    String? action,
    String? mode,
    double? lat,
    double? lng,
    String? countryName,
    String? ip,
    String? browser,
    String? note,
    String? when,
    String? token,
    String? faceB64,
    String? faceInB64,
    String? faceOutB64,
  }) {
    return AttendanceMarkRequest(
      action: action ?? this.action,
      mode: mode ?? this.mode,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      countryName: countryName ?? this.countryName,
      ip: ip ?? this.ip,
      browser: browser ?? this.browser,
      note: note ?? this.note,
      when: when ?? this.when,
      token: token ?? this.token,
      faceB64: faceB64 ?? this.faceB64,
      faceInB64: faceInB64 ?? this.faceInB64,
      faceOutB64: faceOutB64 ?? this.faceOutB64,
    );
  }

  AttendanceMarkRequest copyWithWrapped({
    Wrapped<String?>? action,
    Wrapped<String?>? mode,
    Wrapped<double?>? lat,
    Wrapped<double?>? lng,
    Wrapped<String?>? countryName,
    Wrapped<String?>? ip,
    Wrapped<String?>? browser,
    Wrapped<String?>? note,
    Wrapped<String?>? when,
    Wrapped<String?>? token,
    Wrapped<String?>? faceB64,
    Wrapped<String?>? faceInB64,
    Wrapped<String?>? faceOutB64,
  }) {
    return AttendanceMarkRequest(
      action: (action != null ? action.value : this.action),
      mode: (mode != null ? mode.value : this.mode),
      lat: (lat != null ? lat.value : this.lat),
      lng: (lng != null ? lng.value : this.lng),
      countryName: (countryName != null ? countryName.value : this.countryName),
      ip: (ip != null ? ip.value : this.ip),
      browser: (browser != null ? browser.value : this.browser),
      note: (note != null ? note.value : this.note),
      when: (when != null ? when.value : this.when),
      token: (token != null ? token.value : this.token),
      faceB64: (faceB64 != null ? faceB64.value : this.faceB64),
      faceInB64: (faceInB64 != null ? faceInB64.value : this.faceInB64),
      faceOutB64: (faceOutB64 != null ? faceOutB64.value : this.faceOutB64),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceMarkAttendance {
  const AttendanceMarkAttendance({
    this.id,
    this.employeeId,
    this.checkIn,
    this.checkOut,
    this.workedHours,
    this.inMode,
    this.outMode,
    this.inIpAddress,
    this.outIpAddress,
    this.inBrowser,
    this.outBrowser,
    this.inCountryName,
    this.outCountryName,
    this.inLatitude,
    this.inLongitude,
    this.outLatitude,
    this.outLongitude,
  });

  factory AttendanceMarkAttendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceMarkAttendanceFromJson(json);

  static const toJsonFactory = _$AttendanceMarkAttendanceToJson;
  Map<String, dynamic> toJson() => _$AttendanceMarkAttendanceToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'check_in')
  final String? checkIn;
  @JsonKey(name: 'check_out')
  final String? checkOut;
  @JsonKey(name: 'worked_hours')
  final double? workedHours;
  @JsonKey(name: 'in_mode')
  final String? inMode;
  @JsonKey(name: 'out_mode')
  final String? outMode;
  @JsonKey(name: 'in_ip_address')
  final String? inIpAddress;
  @JsonKey(name: 'out_ip_address')
  final String? outIpAddress;
  @JsonKey(name: 'in_browser')
  final String? inBrowser;
  @JsonKey(name: 'out_browser')
  final String? outBrowser;
  @JsonKey(name: 'in_country_name')
  final String? inCountryName;
  @JsonKey(name: 'out_country_name')
  final String? outCountryName;
  @JsonKey(name: 'in_latitude')
  final double? inLatitude;
  @JsonKey(name: 'in_longitude')
  final double? inLongitude;
  @JsonKey(name: 'out_latitude')
  final double? outLatitude;
  @JsonKey(name: 'out_longitude')
  final double? outLongitude;
  static const fromJsonFactory = _$AttendanceMarkAttendanceFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttendanceMarkAttendance &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.checkIn, checkIn) ||
                const DeepCollectionEquality().equals(
                  other.checkIn,
                  checkIn,
                )) &&
            (identical(other.checkOut, checkOut) ||
                const DeepCollectionEquality().equals(
                  other.checkOut,
                  checkOut,
                )) &&
            (identical(other.workedHours, workedHours) ||
                const DeepCollectionEquality().equals(
                  other.workedHours,
                  workedHours,
                )) &&
            (identical(other.inMode, inMode) ||
                const DeepCollectionEquality().equals(other.inMode, inMode)) &&
            (identical(other.outMode, outMode) ||
                const DeepCollectionEquality().equals(
                  other.outMode,
                  outMode,
                )) &&
            (identical(other.inIpAddress, inIpAddress) ||
                const DeepCollectionEquality().equals(
                  other.inIpAddress,
                  inIpAddress,
                )) &&
            (identical(other.outIpAddress, outIpAddress) ||
                const DeepCollectionEquality().equals(
                  other.outIpAddress,
                  outIpAddress,
                )) &&
            (identical(other.inBrowser, inBrowser) ||
                const DeepCollectionEquality().equals(
                  other.inBrowser,
                  inBrowser,
                )) &&
            (identical(other.outBrowser, outBrowser) ||
                const DeepCollectionEquality().equals(
                  other.outBrowser,
                  outBrowser,
                )) &&
            (identical(other.inCountryName, inCountryName) ||
                const DeepCollectionEquality().equals(
                  other.inCountryName,
                  inCountryName,
                )) &&
            (identical(other.outCountryName, outCountryName) ||
                const DeepCollectionEquality().equals(
                  other.outCountryName,
                  outCountryName,
                )) &&
            (identical(other.inLatitude, inLatitude) ||
                const DeepCollectionEquality().equals(
                  other.inLatitude,
                  inLatitude,
                )) &&
            (identical(other.inLongitude, inLongitude) ||
                const DeepCollectionEquality().equals(
                  other.inLongitude,
                  inLongitude,
                )) &&
            (identical(other.outLatitude, outLatitude) ||
                const DeepCollectionEquality().equals(
                  other.outLatitude,
                  outLatitude,
                )) &&
            (identical(other.outLongitude, outLongitude) ||
                const DeepCollectionEquality().equals(
                  other.outLongitude,
                  outLongitude,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(checkIn) ^
      const DeepCollectionEquality().hash(checkOut) ^
      const DeepCollectionEquality().hash(workedHours) ^
      const DeepCollectionEquality().hash(inMode) ^
      const DeepCollectionEquality().hash(outMode) ^
      const DeepCollectionEquality().hash(inIpAddress) ^
      const DeepCollectionEquality().hash(outIpAddress) ^
      const DeepCollectionEquality().hash(inBrowser) ^
      const DeepCollectionEquality().hash(outBrowser) ^
      const DeepCollectionEquality().hash(inCountryName) ^
      const DeepCollectionEquality().hash(outCountryName) ^
      const DeepCollectionEquality().hash(inLatitude) ^
      const DeepCollectionEquality().hash(inLongitude) ^
      const DeepCollectionEquality().hash(outLatitude) ^
      const DeepCollectionEquality().hash(outLongitude) ^
      runtimeType.hashCode;
}

extension $AttendanceMarkAttendanceExtension on AttendanceMarkAttendance {
  AttendanceMarkAttendance copyWith({
    int? id,
    int? employeeId,
    String? checkIn,
    String? checkOut,
    double? workedHours,
    String? inMode,
    String? outMode,
    String? inIpAddress,
    String? outIpAddress,
    String? inBrowser,
    String? outBrowser,
    String? inCountryName,
    String? outCountryName,
    double? inLatitude,
    double? inLongitude,
    double? outLatitude,
    double? outLongitude,
  }) {
    return AttendanceMarkAttendance(
      id: id ?? this.id,
      employeeId: employeeId ?? this.employeeId,
      checkIn: checkIn ?? this.checkIn,
      checkOut: checkOut ?? this.checkOut,
      workedHours: workedHours ?? this.workedHours,
      inMode: inMode ?? this.inMode,
      outMode: outMode ?? this.outMode,
      inIpAddress: inIpAddress ?? this.inIpAddress,
      outIpAddress: outIpAddress ?? this.outIpAddress,
      inBrowser: inBrowser ?? this.inBrowser,
      outBrowser: outBrowser ?? this.outBrowser,
      inCountryName: inCountryName ?? this.inCountryName,
      outCountryName: outCountryName ?? this.outCountryName,
      inLatitude: inLatitude ?? this.inLatitude,
      inLongitude: inLongitude ?? this.inLongitude,
      outLatitude: outLatitude ?? this.outLatitude,
      outLongitude: outLongitude ?? this.outLongitude,
    );
  }

  AttendanceMarkAttendance copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<int?>? employeeId,
    Wrapped<String?>? checkIn,
    Wrapped<String?>? checkOut,
    Wrapped<double?>? workedHours,
    Wrapped<String?>? inMode,
    Wrapped<String?>? outMode,
    Wrapped<String?>? inIpAddress,
    Wrapped<String?>? outIpAddress,
    Wrapped<String?>? inBrowser,
    Wrapped<String?>? outBrowser,
    Wrapped<String?>? inCountryName,
    Wrapped<String?>? outCountryName,
    Wrapped<double?>? inLatitude,
    Wrapped<double?>? inLongitude,
    Wrapped<double?>? outLatitude,
    Wrapped<double?>? outLongitude,
  }) {
    return AttendanceMarkAttendance(
      id: (id != null ? id.value : this.id),
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      checkIn: (checkIn != null ? checkIn.value : this.checkIn),
      checkOut: (checkOut != null ? checkOut.value : this.checkOut),
      workedHours: (workedHours != null ? workedHours.value : this.workedHours),
      inMode: (inMode != null ? inMode.value : this.inMode),
      outMode: (outMode != null ? outMode.value : this.outMode),
      inIpAddress: (inIpAddress != null ? inIpAddress.value : this.inIpAddress),
      outIpAddress: (outIpAddress != null
          ? outIpAddress.value
          : this.outIpAddress),
      inBrowser: (inBrowser != null ? inBrowser.value : this.inBrowser),
      outBrowser: (outBrowser != null ? outBrowser.value : this.outBrowser),
      inCountryName: (inCountryName != null
          ? inCountryName.value
          : this.inCountryName),
      outCountryName: (outCountryName != null
          ? outCountryName.value
          : this.outCountryName),
      inLatitude: (inLatitude != null ? inLatitude.value : this.inLatitude),
      inLongitude: (inLongitude != null ? inLongitude.value : this.inLongitude),
      outLatitude: (outLatitude != null ? outLatitude.value : this.outLatitude),
      outLongitude: (outLongitude != null
          ? outLongitude.value
          : this.outLongitude),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceMarkResponseData {
  const AttendanceMarkResponseData({
    required this.action,
    this.duplicate,
    this.attendance,
  });

  factory AttendanceMarkResponseData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceMarkResponseDataFromJson(json);

  static const toJsonFactory = _$AttendanceMarkResponseDataToJson;
  Map<String, dynamic> toJson() => _$AttendanceMarkResponseDataToJson(this);

  @JsonKey(name: 'action')
  final String action;
  @JsonKey(name: 'duplicate')
  final bool? duplicate;
  @JsonKey(name: 'attendance')
  final AttendanceMarkAttendance? attendance;
  static const fromJsonFactory = _$AttendanceMarkResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttendanceMarkResponseData &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.duplicate, duplicate) ||
                const DeepCollectionEquality().equals(
                  other.duplicate,
                  duplicate,
                )) &&
            (identical(other.attendance, attendance) ||
                const DeepCollectionEquality().equals(
                  other.attendance,
                  attendance,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(duplicate) ^
      const DeepCollectionEquality().hash(attendance) ^
      runtimeType.hashCode;
}

extension $AttendanceMarkResponseDataExtension on AttendanceMarkResponseData {
  AttendanceMarkResponseData copyWith({
    String? action,
    bool? duplicate,
    AttendanceMarkAttendance? attendance,
  }) {
    return AttendanceMarkResponseData(
      action: action ?? this.action,
      duplicate: duplicate ?? this.duplicate,
      attendance: attendance ?? this.attendance,
    );
  }

  AttendanceMarkResponseData copyWithWrapped({
    Wrapped<String>? action,
    Wrapped<bool?>? duplicate,
    Wrapped<AttendanceMarkAttendance?>? attendance,
  }) {
    return AttendanceMarkResponseData(
      action: (action != null ? action.value : this.action),
      duplicate: (duplicate != null ? duplicate.value : this.duplicate),
      attendance: (attendance != null ? attendance.value : this.attendance),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkAttendanceMark {
  const ApiOkAttendanceMark({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkAttendanceMark.fromJson(Map<String, dynamic> json) =>
      _$ApiOkAttendanceMarkFromJson(json);

  static const toJsonFactory = _$ApiOkAttendanceMarkToJson;
  Map<String, dynamic> toJson() => _$ApiOkAttendanceMarkToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final AttendanceMarkResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkAttendanceMarkFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkAttendanceMark &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkAttendanceMarkExtension on ApiOkAttendanceMark {
  ApiOkAttendanceMark copyWith({
    bool? ok,
    AttendanceMarkResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkAttendanceMark(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkAttendanceMark copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<AttendanceMarkResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkAttendanceMark(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceListRequest {
  const AttendanceListRequest({this.employeeId, this.dateFrom, this.dateTo});

  factory AttendanceListRequest.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListRequestFromJson(json);

  static const toJsonFactory = _$AttendanceListRequestToJson;
  Map<String, dynamic> toJson() => _$AttendanceListRequestToJson(this);

  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  static const fromJsonFactory = _$AttendanceListRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttendanceListRequest &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      runtimeType.hashCode;
}

extension $AttendanceListRequestExtension on AttendanceListRequest {
  AttendanceListRequest copyWith({
    int? employeeId,
    String? dateFrom,
    String? dateTo,
  }) {
    return AttendanceListRequest(
      employeeId: employeeId ?? this.employeeId,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
    );
  }

  AttendanceListRequest copyWithWrapped({
    Wrapped<int?>? employeeId,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
  }) {
    return AttendanceListRequest(
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceActionItem {
  const AttendanceActionItem({
    required this.attendanceId,
    required this.action,
    required this.timestamp,
    this.timestampLocal,
    this.mode,
    this.lat,
    this.lng,
    this.ip,
    this.browser,
    this.countryName,
  });

  factory AttendanceActionItem.fromJson(Map<String, dynamic> json) =>
      _$AttendanceActionItemFromJson(json);

  static const toJsonFactory = _$AttendanceActionItemToJson;
  Map<String, dynamic> toJson() => _$AttendanceActionItemToJson(this);

  @JsonKey(name: 'attendance_id')
  final int attendanceId;
  @JsonKey(name: 'action')
  final String action;
  @JsonKey(name: 'timestamp')
  final String timestamp;
  @JsonKey(name: 'timestamp_local')
  final String? timestampLocal;
  @JsonKey(name: 'mode')
  final String? mode;
  @JsonKey(name: 'lat')
  final double? lat;
  @JsonKey(name: 'lng')
  final double? lng;
  @JsonKey(name: 'ip')
  final String? ip;
  @JsonKey(name: 'browser')
  final String? browser;
  @JsonKey(name: 'country_name')
  final String? countryName;
  static const fromJsonFactory = _$AttendanceActionItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttendanceActionItem &&
            (identical(other.attendanceId, attendanceId) ||
                const DeepCollectionEquality().equals(
                  other.attendanceId,
                  attendanceId,
                )) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality().equals(
                  other.timestamp,
                  timestamp,
                )) &&
            (identical(other.timestampLocal, timestampLocal) ||
                const DeepCollectionEquality().equals(
                  other.timestampLocal,
                  timestampLocal,
                )) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)) &&
            (identical(other.browser, browser) ||
                const DeepCollectionEquality().equals(
                  other.browser,
                  browser,
                )) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attendanceId) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(timestampLocal) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(ip) ^
      const DeepCollectionEquality().hash(browser) ^
      const DeepCollectionEquality().hash(countryName) ^
      runtimeType.hashCode;
}

extension $AttendanceActionItemExtension on AttendanceActionItem {
  AttendanceActionItem copyWith({
    int? attendanceId,
    String? action,
    String? timestamp,
    String? timestampLocal,
    String? mode,
    double? lat,
    double? lng,
    String? ip,
    String? browser,
    String? countryName,
  }) {
    return AttendanceActionItem(
      attendanceId: attendanceId ?? this.attendanceId,
      action: action ?? this.action,
      timestamp: timestamp ?? this.timestamp,
      timestampLocal: timestampLocal ?? this.timestampLocal,
      mode: mode ?? this.mode,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      ip: ip ?? this.ip,
      browser: browser ?? this.browser,
      countryName: countryName ?? this.countryName,
    );
  }

  AttendanceActionItem copyWithWrapped({
    Wrapped<int>? attendanceId,
    Wrapped<String>? action,
    Wrapped<String>? timestamp,
    Wrapped<String?>? timestampLocal,
    Wrapped<String?>? mode,
    Wrapped<double?>? lat,
    Wrapped<double?>? lng,
    Wrapped<String?>? ip,
    Wrapped<String?>? browser,
    Wrapped<String?>? countryName,
  }) {
    return AttendanceActionItem(
      attendanceId: (attendanceId != null
          ? attendanceId.value
          : this.attendanceId),
      action: (action != null ? action.value : this.action),
      timestamp: (timestamp != null ? timestamp.value : this.timestamp),
      timestampLocal: (timestampLocal != null
          ? timestampLocal.value
          : this.timestampLocal),
      mode: (mode != null ? mode.value : this.mode),
      lat: (lat != null ? lat.value : this.lat),
      lng: (lng != null ? lng.value : this.lng),
      ip: (ip != null ? ip.value : this.ip),
      browser: (browser != null ? browser.value : this.browser),
      countryName: (countryName != null ? countryName.value : this.countryName),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceListResponseData {
  const AttendanceListResponseData({
    required this.from,
    required this.to,
    required this.count,
    required this.items,
  });

  factory AttendanceListResponseData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListResponseDataFromJson(json);

  static const toJsonFactory = _$AttendanceListResponseDataToJson;
  Map<String, dynamic> toJson() => _$AttendanceListResponseDataToJson(this);

  @JsonKey(name: 'from')
  final String from;
  @JsonKey(name: 'to')
  final String to;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <AttendanceActionItem>[])
  final List<AttendanceActionItem> items;
  static const fromJsonFactory = _$AttendanceListResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttendanceListResponseData &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $AttendanceListResponseDataExtension on AttendanceListResponseData {
  AttendanceListResponseData copyWith({
    String? from,
    String? to,
    int? count,
    List<AttendanceActionItem>? items,
  }) {
    return AttendanceListResponseData(
      from: from ?? this.from,
      to: to ?? this.to,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  AttendanceListResponseData copyWithWrapped({
    Wrapped<String>? from,
    Wrapped<String>? to,
    Wrapped<int>? count,
    Wrapped<List<AttendanceActionItem>>? items,
  }) {
    return AttendanceListResponseData(
      from: (from != null ? from.value : this.from),
      to: (to != null ? to.value : this.to),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkAttendanceList {
  const ApiOkAttendanceList({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkAttendanceList.fromJson(Map<String, dynamic> json) =>
      _$ApiOkAttendanceListFromJson(json);

  static const toJsonFactory = _$ApiOkAttendanceListToJson;
  Map<String, dynamic> toJson() => _$ApiOkAttendanceListToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final AttendanceListResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkAttendanceListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkAttendanceList &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkAttendanceListExtension on ApiOkAttendanceList {
  ApiOkAttendanceList copyWith({
    bool? ok,
    AttendanceListResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkAttendanceList(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkAttendanceList copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<AttendanceListResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkAttendanceList(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipsListRequest {
  const PayslipsListRequest({
    this.employeeId,
    this.year,
    this.month,
    this.limit,
  });

  factory PayslipsListRequest.fromJson(Map<String, dynamic> json) =>
      _$PayslipsListRequestFromJson(json);

  static const toJsonFactory = _$PayslipsListRequestToJson;
  Map<String, dynamic> toJson() => _$PayslipsListRequestToJson(this);

  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'year')
  final int? year;
  @JsonKey(name: 'month')
  final int? month;
  @JsonKey(name: 'limit')
  final int? limit;
  static const fromJsonFactory = _$PayslipsListRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipsListRequest &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(limit) ^
      runtimeType.hashCode;
}

extension $PayslipsListRequestExtension on PayslipsListRequest {
  PayslipsListRequest copyWith({
    int? employeeId,
    int? year,
    int? month,
    int? limit,
  }) {
    return PayslipsListRequest(
      employeeId: employeeId ?? this.employeeId,
      year: year ?? this.year,
      month: month ?? this.month,
      limit: limit ?? this.limit,
    );
  }

  PayslipsListRequest copyWithWrapped({
    Wrapped<int?>? employeeId,
    Wrapped<int?>? year,
    Wrapped<int?>? month,
    Wrapped<int?>? limit,
  }) {
    return PayslipsListRequest(
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      year: (year != null ? year.value : this.year),
      month: (month != null ? month.value : this.month),
      limit: (limit != null ? limit.value : this.limit),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipListItem {
  const PayslipListItem({
    this.id,
    this.name,
    this.dateFrom,
    this.dateTo,
    this.state,
    this.net,
    this.gross,
  });

  factory PayslipListItem.fromJson(Map<String, dynamic> json) =>
      _$PayslipListItemFromJson(json);

  static const toJsonFactory = _$PayslipListItemToJson;
  Map<String, dynamic> toJson() => _$PayslipListItemToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'net')
  final double? net;
  @JsonKey(name: 'gross')
  final double? gross;
  static const fromJsonFactory = _$PayslipListItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipListItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.net, net) ||
                const DeepCollectionEquality().equals(other.net, net)) &&
            (identical(other.gross, gross) ||
                const DeepCollectionEquality().equals(other.gross, gross)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(net) ^
      const DeepCollectionEquality().hash(gross) ^
      runtimeType.hashCode;
}

extension $PayslipListItemExtension on PayslipListItem {
  PayslipListItem copyWith({
    int? id,
    String? name,
    String? dateFrom,
    String? dateTo,
    String? state,
    double? net,
    double? gross,
  }) {
    return PayslipListItem(
      id: id ?? this.id,
      name: name ?? this.name,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      state: state ?? this.state,
      net: net ?? this.net,
      gross: gross ?? this.gross,
    );
  }

  PayslipListItem copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<String?>? state,
    Wrapped<double?>? net,
    Wrapped<double?>? gross,
  }) {
    return PayslipListItem(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      state: (state != null ? state.value : this.state),
      net: (net != null ? net.value : this.net),
      gross: (gross != null ? gross.value : this.gross),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipsListResponseData {
  const PayslipsListResponseData({
    required this.count,
    required this.items,
    this.totals,
  });

  factory PayslipsListResponseData.fromJson(Map<String, dynamic> json) =>
      _$PayslipsListResponseDataFromJson(json);

  static const toJsonFactory = _$PayslipsListResponseDataToJson;
  Map<String, dynamic> toJson() => _$PayslipsListResponseDataToJson(this);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <PayslipListItem>[])
  final List<PayslipListItem> items;
  @JsonKey(name: 'totals')
  final Map<String, dynamic>? totals;
  static const fromJsonFactory = _$PayslipsListResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipsListResponseData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.totals, totals) ||
                const DeepCollectionEquality().equals(other.totals, totals)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(totals) ^
      runtimeType.hashCode;
}

extension $PayslipsListResponseDataExtension on PayslipsListResponseData {
  PayslipsListResponseData copyWith({
    int? count,
    List<PayslipListItem>? items,
    Map<String, dynamic>? totals,
  }) {
    return PayslipsListResponseData(
      count: count ?? this.count,
      items: items ?? this.items,
      totals: totals ?? this.totals,
    );
  }

  PayslipsListResponseData copyWithWrapped({
    Wrapped<int>? count,
    Wrapped<List<PayslipListItem>>? items,
    Wrapped<Map<String, dynamic>?>? totals,
  }) {
    return PayslipsListResponseData(
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
      totals: (totals != null ? totals.value : this.totals),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkPayslipsList {
  const ApiOkPayslipsList({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkPayslipsList.fromJson(Map<String, dynamic> json) =>
      _$ApiOkPayslipsListFromJson(json);

  static const toJsonFactory = _$ApiOkPayslipsListToJson;
  Map<String, dynamic> toJson() => _$ApiOkPayslipsListToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final PayslipsListResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkPayslipsListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkPayslipsList &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkPayslipsListExtension on ApiOkPayslipsList {
  ApiOkPayslipsList copyWith({
    bool? ok,
    PayslipsListResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkPayslipsList(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkPayslipsList copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<PayslipsListResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkPayslipsList(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipDetailRequest {
  const PayslipDetailRequest({required this.slipId});

  factory PayslipDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$PayslipDetailRequestFromJson(json);

  static const toJsonFactory = _$PayslipDetailRequestToJson;
  Map<String, dynamic> toJson() => _$PayslipDetailRequestToJson(this);

  @JsonKey(name: 'slip_id')
  final int slipId;
  static const fromJsonFactory = _$PayslipDetailRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipDetailRequest &&
            (identical(other.slipId, slipId) ||
                const DeepCollectionEquality().equals(other.slipId, slipId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(slipId) ^ runtimeType.hashCode;
}

extension $PayslipDetailRequestExtension on PayslipDetailRequest {
  PayslipDetailRequest copyWith({int? slipId}) {
    return PayslipDetailRequest(slipId: slipId ?? this.slipId);
  }

  PayslipDetailRequest copyWithWrapped({Wrapped<int>? slipId}) {
    return PayslipDetailRequest(
      slipId: (slipId != null ? slipId.value : this.slipId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipLine {
  const PayslipLine({
    this.code,
    this.name,
    this.category,
    this.amount,
    this.quantity,
    this.total,
  });

  factory PayslipLine.fromJson(Map<String, dynamic> json) =>
      _$PayslipLineFromJson(json);

  static const toJsonFactory = _$PayslipLineToJson;
  Map<String, dynamic> toJson() => _$PayslipLineToJson(this);

  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'quantity')
  final double? quantity;
  @JsonKey(name: 'total')
  final double? total;
  static const fromJsonFactory = _$PayslipLineFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipLine &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality().equals(
                  other.category,
                  category,
                )) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality().equals(
                  other.quantity,
                  quantity,
                )) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $PayslipLineExtension on PayslipLine {
  PayslipLine copyWith({
    String? code,
    String? name,
    String? category,
    double? amount,
    double? quantity,
    double? total,
  }) {
    return PayslipLine(
      code: code ?? this.code,
      name: name ?? this.name,
      category: category ?? this.category,
      amount: amount ?? this.amount,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
    );
  }

  PayslipLine copyWithWrapped({
    Wrapped<String?>? code,
    Wrapped<String?>? name,
    Wrapped<String?>? category,
    Wrapped<double?>? amount,
    Wrapped<double?>? quantity,
    Wrapped<double?>? total,
  }) {
    return PayslipLine(
      code: (code != null ? code.value : this.code),
      name: (name != null ? name.value : this.name),
      category: (category != null ? category.value : this.category),
      amount: (amount != null ? amount.value : this.amount),
      quantity: (quantity != null ? quantity.value : this.quantity),
      total: (total != null ? total.value : this.total),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipDetailResponseData {
  const PayslipDetailResponseData({
    required this.slip,
    this.lines,
    this.totals,
  });

  factory PayslipDetailResponseData.fromJson(Map<String, dynamic> json) =>
      _$PayslipDetailResponseDataFromJson(json);

  static const toJsonFactory = _$PayslipDetailResponseDataToJson;
  Map<String, dynamic> toJson() => _$PayslipDetailResponseDataToJson(this);

  @JsonKey(name: 'slip')
  final PayslipDetailResponseData$Slip slip;
  @JsonKey(name: 'lines', defaultValue: <PayslipLine>[])
  final List<PayslipLine>? lines;
  @JsonKey(name: 'totals')
  final Map<String, dynamic>? totals;
  static const fromJsonFactory = _$PayslipDetailResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipDetailResponseData &&
            (identical(other.slip, slip) ||
                const DeepCollectionEquality().equals(other.slip, slip)) &&
            (identical(other.lines, lines) ||
                const DeepCollectionEquality().equals(other.lines, lines)) &&
            (identical(other.totals, totals) ||
                const DeepCollectionEquality().equals(other.totals, totals)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(slip) ^
      const DeepCollectionEquality().hash(lines) ^
      const DeepCollectionEquality().hash(totals) ^
      runtimeType.hashCode;
}

extension $PayslipDetailResponseDataExtension on PayslipDetailResponseData {
  PayslipDetailResponseData copyWith({
    PayslipDetailResponseData$Slip? slip,
    List<PayslipLine>? lines,
    Map<String, dynamic>? totals,
  }) {
    return PayslipDetailResponseData(
      slip: slip ?? this.slip,
      lines: lines ?? this.lines,
      totals: totals ?? this.totals,
    );
  }

  PayslipDetailResponseData copyWithWrapped({
    Wrapped<PayslipDetailResponseData$Slip>? slip,
    Wrapped<List<PayslipLine>?>? lines,
    Wrapped<Map<String, dynamic>?>? totals,
  }) {
    return PayslipDetailResponseData(
      slip: (slip != null ? slip.value : this.slip),
      lines: (lines != null ? lines.value : this.lines),
      totals: (totals != null ? totals.value : this.totals),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkPayslipDetail {
  const ApiOkPayslipDetail({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkPayslipDetail.fromJson(Map<String, dynamic> json) =>
      _$ApiOkPayslipDetailFromJson(json);

  static const toJsonFactory = _$ApiOkPayslipDetailToJson;
  Map<String, dynamic> toJson() => _$ApiOkPayslipDetailToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final PayslipDetailResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkPayslipDetailFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkPayslipDetail &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkPayslipDetailExtension on ApiOkPayslipDetail {
  ApiOkPayslipDetail copyWith({
    bool? ok,
    PayslipDetailResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkPayslipDetail(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkPayslipDetail copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<PayslipDetailResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkPayslipDetail(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveTypesResponseData {
  const LeaveTypesResponseData({required this.items});

  factory LeaveTypesResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveTypesResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveTypesResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveTypesResponseDataToJson(this);

  @JsonKey(name: 'items')
  final List<LeaveTypesResponseData$Items$Item> items;
  static const fromJsonFactory = _$LeaveTypesResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveTypesResponseData &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $LeaveTypesResponseDataExtension on LeaveTypesResponseData {
  LeaveTypesResponseData copyWith({
    List<LeaveTypesResponseData$Items$Item>? items,
  }) {
    return LeaveTypesResponseData(items: items ?? this.items);
  }

  LeaveTypesResponseData copyWithWrapped({
    Wrapped<List<LeaveTypesResponseData$Items$Item>>? items,
  }) {
    return LeaveTypesResponseData(
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveTypes {
  const ApiOkLeaveTypes({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveTypes.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveTypesFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveTypesToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveTypesToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveTypesResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveTypesFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveTypes &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveTypesExtension on ApiOkLeaveTypes {
  ApiOkLeaveTypes copyWith({
    bool? ok,
    LeaveTypesResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveTypes(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveTypes copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveTypesResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveTypes(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveSummaryRequest {
  const LeaveSummaryRequest({this.employeeId});

  factory LeaveSummaryRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveSummaryRequestFromJson(json);

  static const toJsonFactory = _$LeaveSummaryRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveSummaryRequestToJson(this);

  @JsonKey(name: 'employee_id')
  final int? employeeId;
  static const fromJsonFactory = _$LeaveSummaryRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveSummaryRequest &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^ runtimeType.hashCode;
}

extension $LeaveSummaryRequestExtension on LeaveSummaryRequest {
  LeaveSummaryRequest copyWith({int? employeeId}) {
    return LeaveSummaryRequest(employeeId: employeeId ?? this.employeeId);
  }

  LeaveSummaryRequest copyWithWrapped({Wrapped<int?>? employeeId}) {
    return LeaveSummaryRequest(
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveSummaryResponseData {
  const LeaveSummaryResponseData({
    this.employeeId,
    this.remainingDays,
    this.hourlyBalance,
    this.flexMinutes,
  });

  factory LeaveSummaryResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveSummaryResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveSummaryResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveSummaryResponseDataToJson(this);

  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'remaining_days')
  final double? remainingDays;
  @JsonKey(name: 'hourly_balance')
  final double? hourlyBalance;
  @JsonKey(name: 'flex_minutes')
  final int? flexMinutes;
  static const fromJsonFactory = _$LeaveSummaryResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveSummaryResponseData &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.remainingDays, remainingDays) ||
                const DeepCollectionEquality().equals(
                  other.remainingDays,
                  remainingDays,
                )) &&
            (identical(other.hourlyBalance, hourlyBalance) ||
                const DeepCollectionEquality().equals(
                  other.hourlyBalance,
                  hourlyBalance,
                )) &&
            (identical(other.flexMinutes, flexMinutes) ||
                const DeepCollectionEquality().equals(
                  other.flexMinutes,
                  flexMinutes,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(remainingDays) ^
      const DeepCollectionEquality().hash(hourlyBalance) ^
      const DeepCollectionEquality().hash(flexMinutes) ^
      runtimeType.hashCode;
}

extension $LeaveSummaryResponseDataExtension on LeaveSummaryResponseData {
  LeaveSummaryResponseData copyWith({
    int? employeeId,
    double? remainingDays,
    double? hourlyBalance,
    int? flexMinutes,
  }) {
    return LeaveSummaryResponseData(
      employeeId: employeeId ?? this.employeeId,
      remainingDays: remainingDays ?? this.remainingDays,
      hourlyBalance: hourlyBalance ?? this.hourlyBalance,
      flexMinutes: flexMinutes ?? this.flexMinutes,
    );
  }

  LeaveSummaryResponseData copyWithWrapped({
    Wrapped<int?>? employeeId,
    Wrapped<double?>? remainingDays,
    Wrapped<double?>? hourlyBalance,
    Wrapped<int?>? flexMinutes,
  }) {
    return LeaveSummaryResponseData(
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      remainingDays: (remainingDays != null
          ? remainingDays.value
          : this.remainingDays),
      hourlyBalance: (hourlyBalance != null
          ? hourlyBalance.value
          : this.hourlyBalance),
      flexMinutes: (flexMinutes != null ? flexMinutes.value : this.flexMinutes),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveSummary {
  const ApiOkLeaveSummary({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveSummary.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveSummaryFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveSummaryToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveSummaryToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveSummaryResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveSummaryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveSummary &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveSummaryExtension on ApiOkLeaveSummary {
  ApiOkLeaveSummary copyWith({
    bool? ok,
    LeaveSummaryResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveSummary(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveSummary copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveSummaryResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveSummary(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveListRequest {
  const LeaveListRequest({
    this.employeeId,
    this.states,
    this.dateFrom,
    this.dateTo,
    this.latest,
    this.includePending,
  });

  factory LeaveListRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveListRequestFromJson(json);

  static const toJsonFactory = _$LeaveListRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveListRequestToJson(this);

  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'states', defaultValue: <String>[])
  final List<String>? states;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'latest')
  final int? latest;
  @JsonKey(name: 'include_pending')
  final bool? includePending;
  static const fromJsonFactory = _$LeaveListRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveListRequest &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.latest, latest) ||
                const DeepCollectionEquality().equals(other.latest, latest)) &&
            (identical(other.includePending, includePending) ||
                const DeepCollectionEquality().equals(
                  other.includePending,
                  includePending,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(latest) ^
      const DeepCollectionEquality().hash(includePending) ^
      runtimeType.hashCode;
}

extension $LeaveListRequestExtension on LeaveListRequest {
  LeaveListRequest copyWith({
    int? employeeId,
    List<String>? states,
    String? dateFrom,
    String? dateTo,
    int? latest,
    bool? includePending,
  }) {
    return LeaveListRequest(
      employeeId: employeeId ?? this.employeeId,
      states: states ?? this.states,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      latest: latest ?? this.latest,
      includePending: includePending ?? this.includePending,
    );
  }

  LeaveListRequest copyWithWrapped({
    Wrapped<int?>? employeeId,
    Wrapped<List<String>?>? states,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<int?>? latest,
    Wrapped<bool?>? includePending,
  }) {
    return LeaveListRequest(
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      states: (states != null ? states.value : this.states),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      latest: (latest != null ? latest.value : this.latest),
      includePending: (includePending != null
          ? includePending.value
          : this.includePending),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveListItem {
  const LeaveListItem({
    this.id,
    this.name,
    this.state,
    this.leaveTypeId,
    this.leaveTypeName,
    this.dateFrom,
    this.dateTo,
    this.numberOfDays,
    this.canApprove,
    this.approvalRoute,
  });

  factory LeaveListItem.fromJson(Map<String, dynamic> json) =>
      _$LeaveListItemFromJson(json);

  static const toJsonFactory = _$LeaveListItemToJson;
  Map<String, dynamic> toJson() => _$LeaveListItemToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'leave_type_id')
  final int? leaveTypeId;
  @JsonKey(name: 'leave_type_name')
  final String? leaveTypeName;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'number_of_days')
  final double? numberOfDays;
  @JsonKey(name: 'can_approve')
  final bool? canApprove;
  @JsonKey(name: 'approval_route')
  final List<LeaveListItem$ApprovalRoute$Item>? approvalRoute;
  static const fromJsonFactory = _$LeaveListItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveListItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.leaveTypeId, leaveTypeId) ||
                const DeepCollectionEquality().equals(
                  other.leaveTypeId,
                  leaveTypeId,
                )) &&
            (identical(other.leaveTypeName, leaveTypeName) ||
                const DeepCollectionEquality().equals(
                  other.leaveTypeName,
                  leaveTypeName,
                )) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.numberOfDays, numberOfDays) ||
                const DeepCollectionEquality().equals(
                  other.numberOfDays,
                  numberOfDays,
                )) &&
            (identical(other.canApprove, canApprove) ||
                const DeepCollectionEquality().equals(
                  other.canApprove,
                  canApprove,
                )) &&
            (identical(other.approvalRoute, approvalRoute) ||
                const DeepCollectionEquality().equals(
                  other.approvalRoute,
                  approvalRoute,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(leaveTypeId) ^
      const DeepCollectionEquality().hash(leaveTypeName) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(numberOfDays) ^
      const DeepCollectionEquality().hash(canApprove) ^
      const DeepCollectionEquality().hash(approvalRoute) ^
      runtimeType.hashCode;
}

extension $LeaveListItemExtension on LeaveListItem {
  LeaveListItem copyWith({
    int? id,
    String? name,
    String? state,
    int? leaveTypeId,
    String? leaveTypeName,
    String? dateFrom,
    String? dateTo,
    double? numberOfDays,
    bool? canApprove,
    List<LeaveListItem$ApprovalRoute$Item>? approvalRoute,
  }) {
    return LeaveListItem(
      id: id ?? this.id,
      name: name ?? this.name,
      state: state ?? this.state,
      leaveTypeId: leaveTypeId ?? this.leaveTypeId,
      leaveTypeName: leaveTypeName ?? this.leaveTypeName,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      numberOfDays: numberOfDays ?? this.numberOfDays,
      canApprove: canApprove ?? this.canApprove,
      approvalRoute: approvalRoute ?? this.approvalRoute,
    );
  }

  LeaveListItem copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? state,
    Wrapped<int?>? leaveTypeId,
    Wrapped<String?>? leaveTypeName,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<double?>? numberOfDays,
    Wrapped<bool?>? canApprove,
    Wrapped<List<LeaveListItem$ApprovalRoute$Item>?>? approvalRoute,
  }) {
    return LeaveListItem(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      state: (state != null ? state.value : this.state),
      leaveTypeId: (leaveTypeId != null ? leaveTypeId.value : this.leaveTypeId),
      leaveTypeName: (leaveTypeName != null
          ? leaveTypeName.value
          : this.leaveTypeName),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      numberOfDays: (numberOfDays != null
          ? numberOfDays.value
          : this.numberOfDays),
      canApprove: (canApprove != null ? canApprove.value : this.canApprove),
      approvalRoute: (approvalRoute != null
          ? approvalRoute.value
          : this.approvalRoute),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveListResponseData {
  const LeaveListResponseData({required this.count, required this.items});

  factory LeaveListResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveListResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveListResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveListResponseDataToJson(this);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <LeaveListItem>[])
  final List<LeaveListItem> items;
  static const fromJsonFactory = _$LeaveListResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveListResponseData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LeaveListResponseDataExtension on LeaveListResponseData {
  LeaveListResponseData copyWith({int? count, List<LeaveListItem>? items}) {
    return LeaveListResponseData(
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  LeaveListResponseData copyWithWrapped({
    Wrapped<int>? count,
    Wrapped<List<LeaveListItem>>? items,
  }) {
    return LeaveListResponseData(
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveList {
  const ApiOkLeaveList({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveList.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveListFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveListToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveListToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveListResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveList &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveListExtension on ApiOkLeaveList {
  ApiOkLeaveList copyWith({
    bool? ok,
    LeaveListResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveList(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveList copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveListResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveList(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveDetailRequest {
  const LeaveDetailRequest({required this.leaveId});

  factory LeaveDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailRequestFromJson(json);

  static const toJsonFactory = _$LeaveDetailRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveDetailRequestToJson(this);

  @JsonKey(name: 'leave_id')
  final int leaveId;
  static const fromJsonFactory = _$LeaveDetailRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveDetailRequest &&
            (identical(other.leaveId, leaveId) ||
                const DeepCollectionEquality().equals(other.leaveId, leaveId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(leaveId) ^ runtimeType.hashCode;
}

extension $LeaveDetailRequestExtension on LeaveDetailRequest {
  LeaveDetailRequest copyWith({int? leaveId}) {
    return LeaveDetailRequest(leaveId: leaveId ?? this.leaveId);
  }

  LeaveDetailRequest copyWithWrapped({Wrapped<int>? leaveId}) {
    return LeaveDetailRequest(
      leaveId: (leaveId != null ? leaveId.value : this.leaveId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveDetailResponseData {
  const LeaveDetailResponseData({
    this.id,
    this.name,
    this.state,
    this.leaveType,
    this.dateFrom,
    this.dateTo,
    this.numberOfDays,
    this.description,
    this.employee,
    this.approvers,
  });

  factory LeaveDetailResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveDetailResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveDetailResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveDetailResponseDataToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'leave_type')
  final IdName? leaveType;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'number_of_days')
  final double? numberOfDays;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'employee')
  final IdName? employee;
  @JsonKey(name: 'approvers', defaultValue: <IdName>[])
  final List<IdName>? approvers;
  static const fromJsonFactory = _$LeaveDetailResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveDetailResponseData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.leaveType, leaveType) ||
                const DeepCollectionEquality().equals(
                  other.leaveType,
                  leaveType,
                )) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.numberOfDays, numberOfDays) ||
                const DeepCollectionEquality().equals(
                  other.numberOfDays,
                  numberOfDays,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality().equals(
                  other.employee,
                  employee,
                )) &&
            (identical(other.approvers, approvers) ||
                const DeepCollectionEquality().equals(
                  other.approvers,
                  approvers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(leaveType) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(numberOfDays) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(approvers) ^
      runtimeType.hashCode;
}

extension $LeaveDetailResponseDataExtension on LeaveDetailResponseData {
  LeaveDetailResponseData copyWith({
    int? id,
    String? name,
    String? state,
    IdName? leaveType,
    String? dateFrom,
    String? dateTo,
    double? numberOfDays,
    String? description,
    IdName? employee,
    List<IdName>? approvers,
  }) {
    return LeaveDetailResponseData(
      id: id ?? this.id,
      name: name ?? this.name,
      state: state ?? this.state,
      leaveType: leaveType ?? this.leaveType,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      numberOfDays: numberOfDays ?? this.numberOfDays,
      description: description ?? this.description,
      employee: employee ?? this.employee,
      approvers: approvers ?? this.approvers,
    );
  }

  LeaveDetailResponseData copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? state,
    Wrapped<IdName?>? leaveType,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<double?>? numberOfDays,
    Wrapped<String?>? description,
    Wrapped<IdName?>? employee,
    Wrapped<List<IdName>?>? approvers,
  }) {
    return LeaveDetailResponseData(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      state: (state != null ? state.value : this.state),
      leaveType: (leaveType != null ? leaveType.value : this.leaveType),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      numberOfDays: (numberOfDays != null
          ? numberOfDays.value
          : this.numberOfDays),
      description: (description != null ? description.value : this.description),
      employee: (employee != null ? employee.value : this.employee),
      approvers: (approvers != null ? approvers.value : this.approvers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveDetail {
  const ApiOkLeaveDetail({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveDetail.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveDetailFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveDetailToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveDetailToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveDetailResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveDetailFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveDetail &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveDetailExtension on ApiOkLeaveDetail {
  ApiOkLeaveDetail copyWith({
    bool? ok,
    LeaveDetailResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveDetail(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveDetail copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveDetailResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveDetail(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveHistoryRequest {
  const LeaveHistoryRequest({this.employeeId, this.latest});

  factory LeaveHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveHistoryRequestFromJson(json);

  static const toJsonFactory = _$LeaveHistoryRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveHistoryRequestToJson(this);

  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'latest')
  final int? latest;
  static const fromJsonFactory = _$LeaveHistoryRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveHistoryRequest &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.latest, latest) ||
                const DeepCollectionEquality().equals(other.latest, latest)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(latest) ^
      runtimeType.hashCode;
}

extension $LeaveHistoryRequestExtension on LeaveHistoryRequest {
  LeaveHistoryRequest copyWith({int? employeeId, int? latest}) {
    return LeaveHistoryRequest(
      employeeId: employeeId ?? this.employeeId,
      latest: latest ?? this.latest,
    );
  }

  LeaveHistoryRequest copyWithWrapped({
    Wrapped<int?>? employeeId,
    Wrapped<int?>? latest,
  }) {
    return LeaveHistoryRequest(
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      latest: (latest != null ? latest.value : this.latest),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveHistoryResponseData {
  const LeaveHistoryResponseData({required this.count, required this.items});

  factory LeaveHistoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveHistoryResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveHistoryResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveHistoryResponseDataToJson(this);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <LeaveListItem>[])
  final List<LeaveListItem> items;
  static const fromJsonFactory = _$LeaveHistoryResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveHistoryResponseData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LeaveHistoryResponseDataExtension on LeaveHistoryResponseData {
  LeaveHistoryResponseData copyWith({int? count, List<LeaveListItem>? items}) {
    return LeaveHistoryResponseData(
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  LeaveHistoryResponseData copyWithWrapped({
    Wrapped<int>? count,
    Wrapped<List<LeaveListItem>>? items,
  }) {
    return LeaveHistoryResponseData(
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveHistory {
  const ApiOkLeaveHistory({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveHistory.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveHistoryFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveHistoryToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveHistoryToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveHistoryResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveHistoryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveHistory &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveHistoryExtension on ApiOkLeaveHistory {
  ApiOkLeaveHistory copyWith({
    bool? ok,
    LeaveHistoryResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveHistory(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveHistory copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveHistoryResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveHistory(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveCreateRequest {
  const LeaveCreateRequest({
    required this.leaveTypeId,
    this.employeeId,
    required this.dateFrom,
    required this.dateTo,
    this.description,
    this.autoSubmit,
    this.requestHourFrom,
    this.requestHourTo,
  });

  factory LeaveCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveCreateRequestFromJson(json);

  static const toJsonFactory = _$LeaveCreateRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveCreateRequestToJson(this);

  @JsonKey(name: 'leave_type_id')
  final int leaveTypeId;
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'date_from')
  final String dateFrom;
  @JsonKey(name: 'date_to')
  final String dateTo;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'auto_submit')
  final bool? autoSubmit;
  @JsonKey(name: 'request_hour_from')
  final double? requestHourFrom;
  @JsonKey(name: 'request_hour_to')
  final double? requestHourTo;
  static const fromJsonFactory = _$LeaveCreateRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveCreateRequest &&
            (identical(other.leaveTypeId, leaveTypeId) ||
                const DeepCollectionEquality().equals(
                  other.leaveTypeId,
                  leaveTypeId,
                )) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.autoSubmit, autoSubmit) ||
                const DeepCollectionEquality().equals(
                  other.autoSubmit,
                  autoSubmit,
                )) &&
            (identical(other.requestHourFrom, requestHourFrom) ||
                const DeepCollectionEquality().equals(
                  other.requestHourFrom,
                  requestHourFrom,
                )) &&
            (identical(other.requestHourTo, requestHourTo) ||
                const DeepCollectionEquality().equals(
                  other.requestHourTo,
                  requestHourTo,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(leaveTypeId) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(autoSubmit) ^
      const DeepCollectionEquality().hash(requestHourFrom) ^
      const DeepCollectionEquality().hash(requestHourTo) ^
      runtimeType.hashCode;
}

extension $LeaveCreateRequestExtension on LeaveCreateRequest {
  LeaveCreateRequest copyWith({
    int? leaveTypeId,
    int? employeeId,
    String? dateFrom,
    String? dateTo,
    String? description,
    bool? autoSubmit,
    double? requestHourFrom,
    double? requestHourTo,
  }) {
    return LeaveCreateRequest(
      leaveTypeId: leaveTypeId ?? this.leaveTypeId,
      employeeId: employeeId ?? this.employeeId,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      description: description ?? this.description,
      autoSubmit: autoSubmit ?? this.autoSubmit,
      requestHourFrom: requestHourFrom ?? this.requestHourFrom,
      requestHourTo: requestHourTo ?? this.requestHourTo,
    );
  }

  LeaveCreateRequest copyWithWrapped({
    Wrapped<int>? leaveTypeId,
    Wrapped<int?>? employeeId,
    Wrapped<String>? dateFrom,
    Wrapped<String>? dateTo,
    Wrapped<String?>? description,
    Wrapped<bool?>? autoSubmit,
    Wrapped<double?>? requestHourFrom,
    Wrapped<double?>? requestHourTo,
  }) {
    return LeaveCreateRequest(
      leaveTypeId: (leaveTypeId != null ? leaveTypeId.value : this.leaveTypeId),
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      description: (description != null ? description.value : this.description),
      autoSubmit: (autoSubmit != null ? autoSubmit.value : this.autoSubmit),
      requestHourFrom: (requestHourFrom != null
          ? requestHourFrom.value
          : this.requestHourFrom),
      requestHourTo: (requestHourTo != null
          ? requestHourTo.value
          : this.requestHourTo),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveCreateResponseData {
  const LeaveCreateResponseData({required this.id, required this.state});

  factory LeaveCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveCreateResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveCreateResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveCreateResponseDataToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'state')
  final String state;
  static const fromJsonFactory = _$LeaveCreateResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveCreateResponseData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $LeaveCreateResponseDataExtension on LeaveCreateResponseData {
  LeaveCreateResponseData copyWith({int? id, String? state}) {
    return LeaveCreateResponseData(
      id: id ?? this.id,
      state: state ?? this.state,
    );
  }

  LeaveCreateResponseData copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? state,
  }) {
    return LeaveCreateResponseData(
      id: (id != null ? id.value : this.id),
      state: (state != null ? state.value : this.state),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveCreate {
  const ApiOkLeaveCreate({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveCreate.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveCreateFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveCreateToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveCreateToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveCreateResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveCreateFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveCreate &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveCreateExtension on ApiOkLeaveCreate {
  ApiOkLeaveCreate copyWith({
    bool? ok,
    LeaveCreateResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveCreate(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveCreate copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveCreateResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveCreate(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApprovalsEmployeesResponseData {
  const ApprovalsEmployeesResponseData({this.managed, this.waitingForMe});

  factory ApprovalsEmployeesResponseData.fromJson(Map<String, dynamic> json) =>
      _$ApprovalsEmployeesResponseDataFromJson(json);

  static const toJsonFactory = _$ApprovalsEmployeesResponseDataToJson;
  Map<String, dynamic> toJson() => _$ApprovalsEmployeesResponseDataToJson(this);

  @JsonKey(name: 'managed', defaultValue: <IdName>[])
  final List<IdName>? managed;
  @JsonKey(name: 'waiting_for_me', defaultValue: <IdName>[])
  final List<IdName>? waitingForMe;
  static const fromJsonFactory = _$ApprovalsEmployeesResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApprovalsEmployeesResponseData &&
            (identical(other.managed, managed) ||
                const DeepCollectionEquality().equals(
                  other.managed,
                  managed,
                )) &&
            (identical(other.waitingForMe, waitingForMe) ||
                const DeepCollectionEquality().equals(
                  other.waitingForMe,
                  waitingForMe,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(managed) ^
      const DeepCollectionEquality().hash(waitingForMe) ^
      runtimeType.hashCode;
}

extension $ApprovalsEmployeesResponseDataExtension
    on ApprovalsEmployeesResponseData {
  ApprovalsEmployeesResponseData copyWith({
    List<IdName>? managed,
    List<IdName>? waitingForMe,
  }) {
    return ApprovalsEmployeesResponseData(
      managed: managed ?? this.managed,
      waitingForMe: waitingForMe ?? this.waitingForMe,
    );
  }

  ApprovalsEmployeesResponseData copyWithWrapped({
    Wrapped<List<IdName>?>? managed,
    Wrapped<List<IdName>?>? waitingForMe,
  }) {
    return ApprovalsEmployeesResponseData(
      managed: (managed != null ? managed.value : this.managed),
      waitingForMe: (waitingForMe != null
          ? waitingForMe.value
          : this.waitingForMe),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkApprovalsEmployees {
  const ApiOkApprovalsEmployees({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkApprovalsEmployees.fromJson(Map<String, dynamic> json) =>
      _$ApiOkApprovalsEmployeesFromJson(json);

  static const toJsonFactory = _$ApiOkApprovalsEmployeesToJson;
  Map<String, dynamic> toJson() => _$ApiOkApprovalsEmployeesToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final ApprovalsEmployeesResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkApprovalsEmployeesFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkApprovalsEmployees &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkApprovalsEmployeesExtension on ApiOkApprovalsEmployees {
  ApiOkApprovalsEmployees copyWith({
    bool? ok,
    ApprovalsEmployeesResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkApprovalsEmployees(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkApprovalsEmployees copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<ApprovalsEmployeesResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkApprovalsEmployees(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApprovalsListRequest {
  const ApprovalsListRequest({
    this.scope,
    this.employeeId,
    this.states,
    this.dateFrom,
    this.dateTo,
    this.latest,
  });

  factory ApprovalsListRequest.fromJson(Map<String, dynamic> json) =>
      _$ApprovalsListRequestFromJson(json);

  static const toJsonFactory = _$ApprovalsListRequestToJson;
  Map<String, dynamic> toJson() => _$ApprovalsListRequestToJson(this);

  @JsonKey(name: 'scope')
  final String? scope;
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @JsonKey(name: 'states', defaultValue: <String>[])
  final List<String>? states;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'latest')
  final int? latest;
  static const fromJsonFactory = _$ApprovalsListRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApprovalsListRequest &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.employeeId, employeeId) ||
                const DeepCollectionEquality().equals(
                  other.employeeId,
                  employeeId,
                )) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.latest, latest) ||
                const DeepCollectionEquality().equals(other.latest, latest)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(employeeId) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(latest) ^
      runtimeType.hashCode;
}

extension $ApprovalsListRequestExtension on ApprovalsListRequest {
  ApprovalsListRequest copyWith({
    String? scope,
    int? employeeId,
    List<String>? states,
    String? dateFrom,
    String? dateTo,
    int? latest,
  }) {
    return ApprovalsListRequest(
      scope: scope ?? this.scope,
      employeeId: employeeId ?? this.employeeId,
      states: states ?? this.states,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      latest: latest ?? this.latest,
    );
  }

  ApprovalsListRequest copyWithWrapped({
    Wrapped<String?>? scope,
    Wrapped<int?>? employeeId,
    Wrapped<List<String>?>? states,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<int?>? latest,
  }) {
    return ApprovalsListRequest(
      scope: (scope != null ? scope.value : this.scope),
      employeeId: (employeeId != null ? employeeId.value : this.employeeId),
      states: (states != null ? states.value : this.states),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      latest: (latest != null ? latest.value : this.latest),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApprovalsListResponseData {
  const ApprovalsListResponseData({required this.count, required this.items});

  factory ApprovalsListResponseData.fromJson(Map<String, dynamic> json) =>
      _$ApprovalsListResponseDataFromJson(json);

  static const toJsonFactory = _$ApprovalsListResponseDataToJson;
  Map<String, dynamic> toJson() => _$ApprovalsListResponseDataToJson(this);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <LeaveListItem>[])
  final List<LeaveListItem> items;
  static const fromJsonFactory = _$ApprovalsListResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApprovalsListResponseData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ApprovalsListResponseDataExtension on ApprovalsListResponseData {
  ApprovalsListResponseData copyWith({int? count, List<LeaveListItem>? items}) {
    return ApprovalsListResponseData(
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  ApprovalsListResponseData copyWithWrapped({
    Wrapped<int>? count,
    Wrapped<List<LeaveListItem>>? items,
  }) {
    return ApprovalsListResponseData(
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkApprovalsList {
  const ApiOkApprovalsList({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkApprovalsList.fromJson(Map<String, dynamic> json) =>
      _$ApiOkApprovalsListFromJson(json);

  static const toJsonFactory = _$ApiOkApprovalsListToJson;
  Map<String, dynamic> toJson() => _$ApiOkApprovalsListToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final ApprovalsListResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkApprovalsListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkApprovalsList &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkApprovalsListExtension on ApiOkApprovalsList {
  ApiOkApprovalsList copyWith({
    bool? ok,
    ApprovalsListResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkApprovalsList(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkApprovalsList copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<ApprovalsListResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkApprovalsList(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveApproveRequest {
  const LeaveApproveRequest({required this.leaveId});

  factory LeaveApproveRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveApproveRequestFromJson(json);

  static const toJsonFactory = _$LeaveApproveRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveApproveRequestToJson(this);

  @JsonKey(name: 'leave_id')
  final int leaveId;
  static const fromJsonFactory = _$LeaveApproveRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveApproveRequest &&
            (identical(other.leaveId, leaveId) ||
                const DeepCollectionEquality().equals(other.leaveId, leaveId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(leaveId) ^ runtimeType.hashCode;
}

extension $LeaveApproveRequestExtension on LeaveApproveRequest {
  LeaveApproveRequest copyWith({int? leaveId}) {
    return LeaveApproveRequest(leaveId: leaveId ?? this.leaveId);
  }

  LeaveApproveRequest copyWithWrapped({Wrapped<int>? leaveId}) {
    return LeaveApproveRequest(
      leaveId: (leaveId != null ? leaveId.value : this.leaveId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveApproveResponseData {
  const LeaveApproveResponseData({this.id, this.state});

  factory LeaveApproveResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveApproveResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveApproveResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveApproveResponseDataToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'state')
  final String? state;
  static const fromJsonFactory = _$LeaveApproveResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveApproveResponseData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $LeaveApproveResponseDataExtension on LeaveApproveResponseData {
  LeaveApproveResponseData copyWith({int? id, String? state}) {
    return LeaveApproveResponseData(
      id: id ?? this.id,
      state: state ?? this.state,
    );
  }

  LeaveApproveResponseData copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? state,
  }) {
    return LeaveApproveResponseData(
      id: (id != null ? id.value : this.id),
      state: (state != null ? state.value : this.state),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveApprove {
  const ApiOkLeaveApprove({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveApprove.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveApproveFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveApproveToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveApproveToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveApproveResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveApproveFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveApprove &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveApproveExtension on ApiOkLeaveApprove {
  ApiOkLeaveApprove copyWith({
    bool? ok,
    LeaveApproveResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveApprove(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveApprove copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveApproveResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveApprove(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveRefuseRequest {
  const LeaveRefuseRequest({required this.leaveId, this.reason});

  factory LeaveRefuseRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveRefuseRequestFromJson(json);

  static const toJsonFactory = _$LeaveRefuseRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveRefuseRequestToJson(this);

  @JsonKey(name: 'leave_id')
  final int leaveId;
  @JsonKey(name: 'reason')
  final String? reason;
  static const fromJsonFactory = _$LeaveRefuseRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveRefuseRequest &&
            (identical(other.leaveId, leaveId) ||
                const DeepCollectionEquality().equals(
                  other.leaveId,
                  leaveId,
                )) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(leaveId) ^
      const DeepCollectionEquality().hash(reason) ^
      runtimeType.hashCode;
}

extension $LeaveRefuseRequestExtension on LeaveRefuseRequest {
  LeaveRefuseRequest copyWith({int? leaveId, String? reason}) {
    return LeaveRefuseRequest(
      leaveId: leaveId ?? this.leaveId,
      reason: reason ?? this.reason,
    );
  }

  LeaveRefuseRequest copyWithWrapped({
    Wrapped<int>? leaveId,
    Wrapped<String?>? reason,
  }) {
    return LeaveRefuseRequest(
      leaveId: (leaveId != null ? leaveId.value : this.leaveId),
      reason: (reason != null ? reason.value : this.reason),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveRefuseResponseData {
  const LeaveRefuseResponseData({this.id, this.state});

  factory LeaveRefuseResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveRefuseResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveRefuseResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveRefuseResponseDataToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'state')
  final String? state;
  static const fromJsonFactory = _$LeaveRefuseResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveRefuseResponseData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $LeaveRefuseResponseDataExtension on LeaveRefuseResponseData {
  LeaveRefuseResponseData copyWith({int? id, String? state}) {
    return LeaveRefuseResponseData(
      id: id ?? this.id,
      state: state ?? this.state,
    );
  }

  LeaveRefuseResponseData copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? state,
  }) {
    return LeaveRefuseResponseData(
      id: (id != null ? id.value : this.id),
      state: (state != null ? state.value : this.state),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveRefuse {
  const ApiOkLeaveRefuse({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveRefuse.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveRefuseFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveRefuseToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveRefuseToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveRefuseResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveRefuseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveRefuse &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveRefuseExtension on ApiOkLeaveRefuse {
  ApiOkLeaveRefuse copyWith({
    bool? ok,
    LeaveRefuseResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveRefuse(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveRefuse copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveRefuseResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveRefuse(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveHRListRequest {
  const LeaveHRListRequest({
    this.onlyPending,
    this.states,
    this.dateFrom,
    this.dateTo,
    this.latest,
  });

  factory LeaveHRListRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveHRListRequestFromJson(json);

  static const toJsonFactory = _$LeaveHRListRequestToJson;
  Map<String, dynamic> toJson() => _$LeaveHRListRequestToJson(this);

  @JsonKey(name: 'only_pending')
  final bool? onlyPending;
  @JsonKey(name: 'states', defaultValue: <String>[])
  final List<String>? states;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'latest')
  final int? latest;
  static const fromJsonFactory = _$LeaveHRListRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveHRListRequest &&
            (identical(other.onlyPending, onlyPending) ||
                const DeepCollectionEquality().equals(
                  other.onlyPending,
                  onlyPending,
                )) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.latest, latest) ||
                const DeepCollectionEquality().equals(other.latest, latest)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(onlyPending) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(latest) ^
      runtimeType.hashCode;
}

extension $LeaveHRListRequestExtension on LeaveHRListRequest {
  LeaveHRListRequest copyWith({
    bool? onlyPending,
    List<String>? states,
    String? dateFrom,
    String? dateTo,
    int? latest,
  }) {
    return LeaveHRListRequest(
      onlyPending: onlyPending ?? this.onlyPending,
      states: states ?? this.states,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      latest: latest ?? this.latest,
    );
  }

  LeaveHRListRequest copyWithWrapped({
    Wrapped<bool?>? onlyPending,
    Wrapped<List<String>?>? states,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<int?>? latest,
  }) {
    return LeaveHRListRequest(
      onlyPending: (onlyPending != null ? onlyPending.value : this.onlyPending),
      states: (states != null ? states.value : this.states),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      latest: (latest != null ? latest.value : this.latest),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveHRListResponseData {
  const LeaveHRListResponseData({required this.count, required this.items});

  factory LeaveHRListResponseData.fromJson(Map<String, dynamic> json) =>
      _$LeaveHRListResponseDataFromJson(json);

  static const toJsonFactory = _$LeaveHRListResponseDataToJson;
  Map<String, dynamic> toJson() => _$LeaveHRListResponseDataToJson(this);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <LeaveListItem>[])
  final List<LeaveListItem> items;
  static const fromJsonFactory = _$LeaveHRListResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveHRListResponseData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $LeaveHRListResponseDataExtension on LeaveHRListResponseData {
  LeaveHRListResponseData copyWith({int? count, List<LeaveListItem>? items}) {
    return LeaveHRListResponseData(
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  LeaveHRListResponseData copyWithWrapped({
    Wrapped<int>? count,
    Wrapped<List<LeaveListItem>>? items,
  }) {
    return LeaveHRListResponseData(
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkLeaveHRList {
  const ApiOkLeaveHRList({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkLeaveHRList.fromJson(Map<String, dynamic> json) =>
      _$ApiOkLeaveHRListFromJson(json);

  static const toJsonFactory = _$ApiOkLeaveHRListToJson;
  Map<String, dynamic> toJson() => _$ApiOkLeaveHRListToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final LeaveHRListResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkLeaveHRListFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkLeaveHRList &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkLeaveHRListExtension on ApiOkLeaveHRList {
  ApiOkLeaveHRList copyWith({
    bool? ok,
    LeaveHRListResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkLeaveHRList(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkLeaveHRList copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<LeaveHRListResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkLeaveHRList(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CelebrationsRequest {
  const CelebrationsRequest({this.$true});

  factory CelebrationsRequest.fromJson(Map<String, dynamic> json) =>
      _$CelebrationsRequestFromJson(json);

  static const toJsonFactory = _$CelebrationsRequestToJson;
  Map<String, dynamic> toJson() => _$CelebrationsRequestToJson(this);

  @JsonKey(name: 'true')
  final String? $true;
  static const fromJsonFactory = _$CelebrationsRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CelebrationsRequest &&
            (identical(other.$true, $true) ||
                const DeepCollectionEquality().equals(other.$true, $true)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash($true) ^ runtimeType.hashCode;
}

extension $CelebrationsRequestExtension on CelebrationsRequest {
  CelebrationsRequest copyWith({String? $true}) {
    return CelebrationsRequest($true: $true ?? this.$true);
  }

  CelebrationsRequest copyWithWrapped({Wrapped<String?>? $true}) {
    return CelebrationsRequest(
      $true: ($true != null ? $true.value : this.$true),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CelebrationItem {
  const CelebrationItem({this.employee, this.type, this.date, this.years});

  factory CelebrationItem.fromJson(Map<String, dynamic> json) =>
      _$CelebrationItemFromJson(json);

  static const toJsonFactory = _$CelebrationItemToJson;
  Map<String, dynamic> toJson() => _$CelebrationItemToJson(this);

  @JsonKey(name: 'employee')
  final IdName? employee;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'years')
  final int? years;
  static const fromJsonFactory = _$CelebrationItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CelebrationItem &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality().equals(
                  other.employee,
                  employee,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.years, years) ||
                const DeepCollectionEquality().equals(other.years, years)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(years) ^
      runtimeType.hashCode;
}

extension $CelebrationItemExtension on CelebrationItem {
  CelebrationItem copyWith({
    IdName? employee,
    String? type,
    String? date,
    int? years,
  }) {
    return CelebrationItem(
      employee: employee ?? this.employee,
      type: type ?? this.type,
      date: date ?? this.date,
      years: years ?? this.years,
    );
  }

  CelebrationItem copyWithWrapped({
    Wrapped<IdName?>? employee,
    Wrapped<String?>? type,
    Wrapped<String?>? date,
    Wrapped<int?>? years,
  }) {
    return CelebrationItem(
      employee: (employee != null ? employee.value : this.employee),
      type: (type != null ? type.value : this.type),
      date: (date != null ? date.value : this.date),
      years: (years != null ? years.value : this.years),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CelebrationsResponseData {
  const CelebrationsResponseData({required this.count, required this.items});

  factory CelebrationsResponseData.fromJson(Map<String, dynamic> json) =>
      _$CelebrationsResponseDataFromJson(json);

  static const toJsonFactory = _$CelebrationsResponseDataToJson;
  Map<String, dynamic> toJson() => _$CelebrationsResponseDataToJson(this);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <CelebrationItem>[])
  final List<CelebrationItem> items;
  static const fromJsonFactory = _$CelebrationsResponseDataFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CelebrationsResponseData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CelebrationsResponseDataExtension on CelebrationsResponseData {
  CelebrationsResponseData copyWith({
    int? count,
    List<CelebrationItem>? items,
  }) {
    return CelebrationsResponseData(
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  CelebrationsResponseData copyWithWrapped({
    Wrapped<int>? count,
    Wrapped<List<CelebrationItem>>? items,
  }) {
    return CelebrationsResponseData(
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiOkCelebrations {
  const ApiOkCelebrations({
    required this.ok,
    required this.data,
    required this.meta,
  });

  factory ApiOkCelebrations.fromJson(Map<String, dynamic> json) =>
      _$ApiOkCelebrationsFromJson(json);

  static const toJsonFactory = _$ApiOkCelebrationsToJson;
  Map<String, dynamic> toJson() => _$ApiOkCelebrationsToJson(this);

  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'data')
  final CelebrationsResponseData data;
  @JsonKey(name: 'meta')
  final ApiMeta meta;
  static const fromJsonFactory = _$ApiOkCelebrationsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiOkCelebrations &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta) ^
      runtimeType.hashCode;
}

extension $ApiOkCelebrationsExtension on ApiOkCelebrations {
  ApiOkCelebrations copyWith({
    bool? ok,
    CelebrationsResponseData? data,
    ApiMeta? meta,
  }) {
    return ApiOkCelebrations(
      ok: ok ?? this.ok,
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  ApiOkCelebrations copyWithWrapped({
    Wrapped<bool>? ok,
    Wrapped<CelebrationsResponseData>? data,
    Wrapped<ApiMeta>? meta,
  }) {
    return ApiOkCelebrations(
      ok: (ok != null ? ok.value : this.ok),
      data: (data != null ? data.value : this.data),
      meta: (meta != null ? meta.value : this.meta),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiError$Error {
  const ApiError$Error({required this.code, required this.message});

  factory ApiError$Error.fromJson(Map<String, dynamic> json) =>
      _$ApiError$ErrorFromJson(json);

  static const toJsonFactory = _$ApiError$ErrorToJson;
  Map<String, dynamic> toJson() => _$ApiError$ErrorToJson(this);

  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'message')
  final String message;
  static const fromJsonFactory = _$ApiError$ErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiError$Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiError$ErrorExtension on ApiError$Error {
  ApiError$Error copyWith({String? code, String? message}) {
    return ApiError$Error(
      code: code ?? this.code,
      message: message ?? this.message,
    );
  }

  ApiError$Error copyWithWrapped({
    Wrapped<String>? code,
    Wrapped<String>? message,
  }) {
    return ApiError$Error(
      code: (code != null ? code.value : this.code),
      message: (message != null ? message.value : this.message),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LoginResponseData$User {
  const LoginResponseData$User({
    required this.id,
    required this.name,
    required this.login,
  });

  factory LoginResponseData$User.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseData$UserFromJson(json);

  static const toJsonFactory = _$LoginResponseData$UserToJson;
  Map<String, dynamic> toJson() => _$LoginResponseData$UserToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'login')
  final String login;
  static const fromJsonFactory = _$LoginResponseData$UserFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LoginResponseData$User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(login) ^
      runtimeType.hashCode;
}

extension $LoginResponseData$UserExtension on LoginResponseData$User {
  LoginResponseData$User copyWith({int? id, String? name, String? login}) {
    return LoginResponseData$User(
      id: id ?? this.id,
      name: name ?? this.name,
      login: login ?? this.login,
    );
  }

  LoginResponseData$User copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? name,
    Wrapped<String>? login,
  }) {
    return LoginResponseData$User(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      login: (login != null ? login.value : this.login),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MeResponseData$Partner {
  const MeResponseData$Partner({
    required this.id,
    required this.name,
    this.email,
    this.mobile,
    this.phone,
  });

  factory MeResponseData$Partner.fromJson(Map<String, dynamic> json) =>
      _$MeResponseData$PartnerFromJson(json);

  static const toJsonFactory = _$MeResponseData$PartnerToJson;
  Map<String, dynamic> toJson() => _$MeResponseData$PartnerToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'mobile')
  final String? mobile;
  @JsonKey(name: 'phone')
  final String? phone;
  static const fromJsonFactory = _$MeResponseData$PartnerFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MeResponseData$Partner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(phone) ^
      runtimeType.hashCode;
}

extension $MeResponseData$PartnerExtension on MeResponseData$Partner {
  MeResponseData$Partner copyWith({
    int? id,
    String? name,
    String? email,
    String? mobile,
    String? phone,
  }) {
    return MeResponseData$Partner(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      phone: phone ?? this.phone,
    );
  }

  MeResponseData$Partner copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? name,
    Wrapped<String?>? email,
    Wrapped<String?>? mobile,
    Wrapped<String?>? phone,
  }) {
    return MeResponseData$Partner(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      email: (email != null ? email.value : this.email),
      mobile: (mobile != null ? mobile.value : this.mobile),
      phone: (phone != null ? phone.value : this.phone),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MeResponseData$Employee {
  const MeResponseData$Employee({
    required this.id,
    required this.name,
    this.barcode,
    this.mobilePhone,
    this.workPhone,
    this.workEmail,
    this.departmentId,
    this.jobId,
    this.parentId,
    this.addressId,
    this.resourceCalendarId,
    this.department,
    this.jobTitle,
  });

  factory MeResponseData$Employee.fromJson(Map<String, dynamic> json) =>
      _$MeResponseData$EmployeeFromJson(json);

  static const toJsonFactory = _$MeResponseData$EmployeeToJson;
  Map<String, dynamic> toJson() => _$MeResponseData$EmployeeToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'barcode')
  final String? barcode;
  @JsonKey(name: 'mobile_phone')
  final String? mobilePhone;
  @JsonKey(name: 'work_phone')
  final String? workPhone;
  @JsonKey(name: 'work_email')
  final String? workEmail;
  @JsonKey(name: 'department_id')
  final FalseOrIdName? departmentId;
  @JsonKey(name: 'job_id')
  final FalseOrIdName? jobId;
  @JsonKey(name: 'parent_id')
  final FalseOrIdName? parentId;
  @JsonKey(name: 'address_id')
  final FalseOrIdName? addressId;
  @JsonKey(name: 'resource_calendar_id')
  final FalseOrIdName? resourceCalendarId;
  @JsonKey(name: 'department')
  final String? department;
  @JsonKey(name: 'job_title')
  final String? jobTitle;
  static const fromJsonFactory = _$MeResponseData$EmployeeFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MeResponseData$Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality().equals(
                  other.barcode,
                  barcode,
                )) &&
            (identical(other.mobilePhone, mobilePhone) ||
                const DeepCollectionEquality().equals(
                  other.mobilePhone,
                  mobilePhone,
                )) &&
            (identical(other.workPhone, workPhone) ||
                const DeepCollectionEquality().equals(
                  other.workPhone,
                  workPhone,
                )) &&
            (identical(other.workEmail, workEmail) ||
                const DeepCollectionEquality().equals(
                  other.workEmail,
                  workEmail,
                )) &&
            (identical(other.departmentId, departmentId) ||
                const DeepCollectionEquality().equals(
                  other.departmentId,
                  departmentId,
                )) &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality().equals(
                  other.parentId,
                  parentId,
                )) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality().equals(
                  other.addressId,
                  addressId,
                )) &&
            (identical(other.resourceCalendarId, resourceCalendarId) ||
                const DeepCollectionEquality().equals(
                  other.resourceCalendarId,
                  resourceCalendarId,
                )) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality().equals(
                  other.department,
                  department,
                )) &&
            (identical(other.jobTitle, jobTitle) ||
                const DeepCollectionEquality().equals(
                  other.jobTitle,
                  jobTitle,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(mobilePhone) ^
      const DeepCollectionEquality().hash(workPhone) ^
      const DeepCollectionEquality().hash(workEmail) ^
      const DeepCollectionEquality().hash(departmentId) ^
      const DeepCollectionEquality().hash(jobId) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(resourceCalendarId) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(jobTitle) ^
      runtimeType.hashCode;
}

extension $MeResponseData$EmployeeExtension on MeResponseData$Employee {
  MeResponseData$Employee copyWith({
    int? id,
    String? name,
    String? barcode,
    String? mobilePhone,
    String? workPhone,
    String? workEmail,
    FalseOrIdName? departmentId,
    FalseOrIdName? jobId,
    FalseOrIdName? parentId,
    FalseOrIdName? addressId,
    FalseOrIdName? resourceCalendarId,
    String? department,
    String? jobTitle,
  }) {
    return MeResponseData$Employee(
      id: id ?? this.id,
      name: name ?? this.name,
      barcode: barcode ?? this.barcode,
      mobilePhone: mobilePhone ?? this.mobilePhone,
      workPhone: workPhone ?? this.workPhone,
      workEmail: workEmail ?? this.workEmail,
      departmentId: departmentId ?? this.departmentId,
      jobId: jobId ?? this.jobId,
      parentId: parentId ?? this.parentId,
      addressId: addressId ?? this.addressId,
      resourceCalendarId: resourceCalendarId ?? this.resourceCalendarId,
      department: department ?? this.department,
      jobTitle: jobTitle ?? this.jobTitle,
    );
  }

  MeResponseData$Employee copyWithWrapped({
    Wrapped<int>? id,
    Wrapped<String>? name,
    Wrapped<String?>? barcode,
    Wrapped<String?>? mobilePhone,
    Wrapped<String?>? workPhone,
    Wrapped<String?>? workEmail,
    Wrapped<FalseOrIdName?>? departmentId,
    Wrapped<FalseOrIdName?>? jobId,
    Wrapped<FalseOrIdName?>? parentId,
    Wrapped<FalseOrIdName?>? addressId,
    Wrapped<FalseOrIdName?>? resourceCalendarId,
    Wrapped<String?>? department,
    Wrapped<String?>? jobTitle,
  }) {
    return MeResponseData$Employee(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      barcode: (barcode != null ? barcode.value : this.barcode),
      mobilePhone: (mobilePhone != null ? mobilePhone.value : this.mobilePhone),
      workPhone: (workPhone != null ? workPhone.value : this.workPhone),
      workEmail: (workEmail != null ? workEmail.value : this.workEmail),
      departmentId: (departmentId != null
          ? departmentId.value
          : this.departmentId),
      jobId: (jobId != null ? jobId.value : this.jobId),
      parentId: (parentId != null ? parentId.value : this.parentId),
      addressId: (addressId != null ? addressId.value : this.addressId),
      resourceCalendarId: (resourceCalendarId != null
          ? resourceCalendarId.value
          : this.resourceCalendarId),
      department: (department != null ? department.value : this.department),
      jobTitle: (jobTitle != null ? jobTitle.value : this.jobTitle),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MeResponseData$Roles {
  const MeResponseData$Roles({
    this.isHrManager,
    this.isLineManager,
    this.isDeptManager,
    this.isLeaveTypeResponsible,
    this.subordinateCount,
    this.isManagerOrApprover,
  });

  factory MeResponseData$Roles.fromJson(Map<String, dynamic> json) =>
      _$MeResponseData$RolesFromJson(json);

  static const toJsonFactory = _$MeResponseData$RolesToJson;
  Map<String, dynamic> toJson() => _$MeResponseData$RolesToJson(this);

  @JsonKey(name: 'is_hr_manager')
  final bool? isHrManager;
  @JsonKey(name: 'is_line_manager')
  final bool? isLineManager;
  @JsonKey(name: 'is_dept_manager')
  final bool? isDeptManager;
  @JsonKey(name: 'is_leave_type_responsible')
  final bool? isLeaveTypeResponsible;
  @JsonKey(name: 'subordinate_count')
  final int? subordinateCount;
  @JsonKey(name: 'is_manager_or_approver')
  final bool? isManagerOrApprover;
  static const fromJsonFactory = _$MeResponseData$RolesFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MeResponseData$Roles &&
            (identical(other.isHrManager, isHrManager) ||
                const DeepCollectionEquality().equals(
                  other.isHrManager,
                  isHrManager,
                )) &&
            (identical(other.isLineManager, isLineManager) ||
                const DeepCollectionEquality().equals(
                  other.isLineManager,
                  isLineManager,
                )) &&
            (identical(other.isDeptManager, isDeptManager) ||
                const DeepCollectionEquality().equals(
                  other.isDeptManager,
                  isDeptManager,
                )) &&
            (identical(other.isLeaveTypeResponsible, isLeaveTypeResponsible) ||
                const DeepCollectionEquality().equals(
                  other.isLeaveTypeResponsible,
                  isLeaveTypeResponsible,
                )) &&
            (identical(other.subordinateCount, subordinateCount) ||
                const DeepCollectionEquality().equals(
                  other.subordinateCount,
                  subordinateCount,
                )) &&
            (identical(other.isManagerOrApprover, isManagerOrApprover) ||
                const DeepCollectionEquality().equals(
                  other.isManagerOrApprover,
                  isManagerOrApprover,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isHrManager) ^
      const DeepCollectionEquality().hash(isLineManager) ^
      const DeepCollectionEquality().hash(isDeptManager) ^
      const DeepCollectionEquality().hash(isLeaveTypeResponsible) ^
      const DeepCollectionEquality().hash(subordinateCount) ^
      const DeepCollectionEquality().hash(isManagerOrApprover) ^
      runtimeType.hashCode;
}

extension $MeResponseData$RolesExtension on MeResponseData$Roles {
  MeResponseData$Roles copyWith({
    bool? isHrManager,
    bool? isLineManager,
    bool? isDeptManager,
    bool? isLeaveTypeResponsible,
    int? subordinateCount,
    bool? isManagerOrApprover,
  }) {
    return MeResponseData$Roles(
      isHrManager: isHrManager ?? this.isHrManager,
      isLineManager: isLineManager ?? this.isLineManager,
      isDeptManager: isDeptManager ?? this.isDeptManager,
      isLeaveTypeResponsible:
          isLeaveTypeResponsible ?? this.isLeaveTypeResponsible,
      subordinateCount: subordinateCount ?? this.subordinateCount,
      isManagerOrApprover: isManagerOrApprover ?? this.isManagerOrApprover,
    );
  }

  MeResponseData$Roles copyWithWrapped({
    Wrapped<bool?>? isHrManager,
    Wrapped<bool?>? isLineManager,
    Wrapped<bool?>? isDeptManager,
    Wrapped<bool?>? isLeaveTypeResponsible,
    Wrapped<int?>? subordinateCount,
    Wrapped<bool?>? isManagerOrApprover,
  }) {
    return MeResponseData$Roles(
      isHrManager: (isHrManager != null ? isHrManager.value : this.isHrManager),
      isLineManager: (isLineManager != null
          ? isLineManager.value
          : this.isLineManager),
      isDeptManager: (isDeptManager != null
          ? isDeptManager.value
          : this.isDeptManager),
      isLeaveTypeResponsible: (isLeaveTypeResponsible != null
          ? isLeaveTypeResponsible.value
          : this.isLeaveTypeResponsible),
      subordinateCount: (subordinateCount != null
          ? subordinateCount.value
          : this.subordinateCount),
      isManagerOrApprover: (isManagerOrApprover != null
          ? isManagerOrApprover.value
          : this.isManagerOrApprover),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PayslipDetailResponseData$Slip {
  const PayslipDetailResponseData$Slip({
    this.id,
    this.name,
    this.dateFrom,
    this.dateTo,
    this.state,
  });

  factory PayslipDetailResponseData$Slip.fromJson(Map<String, dynamic> json) =>
      _$PayslipDetailResponseData$SlipFromJson(json);

  static const toJsonFactory = _$PayslipDetailResponseData$SlipToJson;
  Map<String, dynamic> toJson() => _$PayslipDetailResponseData$SlipToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @JsonKey(name: 'state')
  final String? state;
  static const fromJsonFactory = _$PayslipDetailResponseData$SlipFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PayslipDetailResponseData$Slip &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dateFrom, dateFrom) ||
                const DeepCollectionEquality().equals(
                  other.dateFrom,
                  dateFrom,
                )) &&
            (identical(other.dateTo, dateTo) ||
                const DeepCollectionEquality().equals(other.dateTo, dateTo)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dateFrom) ^
      const DeepCollectionEquality().hash(dateTo) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $PayslipDetailResponseData$SlipExtension
    on PayslipDetailResponseData$Slip {
  PayslipDetailResponseData$Slip copyWith({
    int? id,
    String? name,
    String? dateFrom,
    String? dateTo,
    String? state,
  }) {
    return PayslipDetailResponseData$Slip(
      id: id ?? this.id,
      name: name ?? this.name,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      state: state ?? this.state,
    );
  }

  PayslipDetailResponseData$Slip copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? dateFrom,
    Wrapped<String?>? dateTo,
    Wrapped<String?>? state,
  }) {
    return PayslipDetailResponseData$Slip(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      dateFrom: (dateFrom != null ? dateFrom.value : this.dateFrom),
      dateTo: (dateTo != null ? dateTo.value : this.dateTo),
      state: (state != null ? state.value : this.state),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveTypesResponseData$Items$Item {
  const LeaveTypesResponseData$Items$Item({
    this.id,
    this.name,
    this.balanceDays,
    this.canRequest,
    this.requestUnit,
    this.requiresAllocation,
  });

  factory LeaveTypesResponseData$Items$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$LeaveTypesResponseData$Items$ItemFromJson(json);

  static const toJsonFactory = _$LeaveTypesResponseData$Items$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$LeaveTypesResponseData$Items$ItemToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'balance_days')
  final double? balanceDays;
  @JsonKey(name: 'can_request')
  final bool? canRequest;
  @JsonKey(name: 'request_unit')
  final String? requestUnit;
  @JsonKey(name: 'requires_allocation')
  final bool? requiresAllocation;
  static const fromJsonFactory = _$LeaveTypesResponseData$Items$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveTypesResponseData$Items$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.balanceDays, balanceDays) ||
                const DeepCollectionEquality().equals(
                  other.balanceDays,
                  balanceDays,
                )) &&
            (identical(other.canRequest, canRequest) ||
                const DeepCollectionEquality().equals(
                  other.canRequest,
                  canRequest,
                )) &&
            (identical(other.requestUnit, requestUnit) ||
                const DeepCollectionEquality().equals(
                  other.requestUnit,
                  requestUnit,
                )) &&
            (identical(other.requiresAllocation, requiresAllocation) ||
                const DeepCollectionEquality().equals(
                  other.requiresAllocation,
                  requiresAllocation,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(balanceDays) ^
      const DeepCollectionEquality().hash(canRequest) ^
      const DeepCollectionEquality().hash(requestUnit) ^
      const DeepCollectionEquality().hash(requiresAllocation) ^
      runtimeType.hashCode;
}

extension $LeaveTypesResponseData$Items$ItemExtension
    on LeaveTypesResponseData$Items$Item {
  LeaveTypesResponseData$Items$Item copyWith({
    int? id,
    String? name,
    double? balanceDays,
    bool? canRequest,
    String? requestUnit,
    bool? requiresAllocation,
  }) {
    return LeaveTypesResponseData$Items$Item(
      id: id ?? this.id,
      name: name ?? this.name,
      balanceDays: balanceDays ?? this.balanceDays,
      canRequest: canRequest ?? this.canRequest,
      requestUnit: requestUnit ?? this.requestUnit,
      requiresAllocation: requiresAllocation ?? this.requiresAllocation,
    );
  }

  LeaveTypesResponseData$Items$Item copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<double?>? balanceDays,
    Wrapped<bool?>? canRequest,
    Wrapped<String?>? requestUnit,
    Wrapped<bool?>? requiresAllocation,
  }) {
    return LeaveTypesResponseData$Items$Item(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      balanceDays: (balanceDays != null ? balanceDays.value : this.balanceDays),
      canRequest: (canRequest != null ? canRequest.value : this.canRequest),
      requestUnit: (requestUnit != null ? requestUnit.value : this.requestUnit),
      requiresAllocation: (requiresAllocation != null
          ? requiresAllocation.value
          : this.requiresAllocation),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class LeaveListItem$ApprovalRoute$Item {
  const LeaveListItem$ApprovalRoute$Item({this.id, this.name, this.state});

  factory LeaveListItem$ApprovalRoute$Item.fromJson(
    Map<String, dynamic> json,
  ) => _$LeaveListItem$ApprovalRoute$ItemFromJson(json);

  static const toJsonFactory = _$LeaveListItem$ApprovalRoute$ItemToJson;
  Map<String, dynamic> toJson() =>
      _$LeaveListItem$ApprovalRoute$ItemToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'state')
  final String? state;
  static const fromJsonFactory = _$LeaveListItem$ApprovalRoute$ItemFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is LeaveListItem$ApprovalRoute$Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $LeaveListItem$ApprovalRoute$ItemExtension
    on LeaveListItem$ApprovalRoute$Item {
  LeaveListItem$ApprovalRoute$Item copyWith({
    int? id,
    String? name,
    String? state,
  }) {
    return LeaveListItem$ApprovalRoute$Item(
      id: id ?? this.id,
      name: name ?? this.name,
      state: state ?? this.state,
    );
  }

  LeaveListItem$ApprovalRoute$Item copyWithWrapped({
    Wrapped<int?>? id,
    Wrapped<String?>? name,
    Wrapped<String?>? state,
  }) {
    return LeaveListItem$ApprovalRoute$Item(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      state: (state != null ? state.value : this.state),
    );
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
