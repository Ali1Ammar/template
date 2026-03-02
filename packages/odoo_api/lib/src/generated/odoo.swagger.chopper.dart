// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'odoo.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$Odoo extends Odoo {
  _$Odoo([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = Odoo;

  @override
  Future<Response<String>> _apiDocsOpenapiGet({
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
  }) {
    final Uri $url = Uri.parse('/api/docs/openapi');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ApiOkLogin>> _fkhrApiAuthLoginPost({
    required LoginRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLogin, ApiOkLogin>($request);
  }

  @override
  Future<Response<ApiOkLogout>> _fkhrApiAuthLogoutPost({
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/auth/logout');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLogout, ApiOkLogout>($request);
  }

  @override
  Future<Response<ApiOkMe>> _fkhrApiMePost({
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/me');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkMe, ApiOkMe>($request);
  }

  @override
  Future<Response<ApiOkAttendanceMark>> _fkhrApiAttendanceMarkPost({
    required AttendanceMarkRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/attendance/mark_');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkAttendanceMark, ApiOkAttendanceMark>($request);
  }

  @override
  Future<Response<ApiOkAttendanceList>> _fkhrApiAttendanceListPost({
    required AttendanceListRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/attendance/list');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkAttendanceList, ApiOkAttendanceList>($request);
  }

  @override
  Future<Response<ApiOkPayslipsList>> _fkhrApiPayslipsListPost({
    required PayslipsListRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/payslips/list');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkPayslipsList, ApiOkPayslipsList>($request);
  }

  @override
  Future<Response<ApiOkPayslipDetail>> _fkhrApiPayslipsDetailPost({
    required PayslipDetailRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/payslips/detail');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkPayslipDetail, ApiOkPayslipDetail>($request);
  }

  @override
  Future<Response<ApiOkLeaveTypes>> _fkhrApiLeaveTypesPost({
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/types');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveTypes, ApiOkLeaveTypes>($request);
  }

  @override
  Future<Response<ApiOkLeaveSummary>> _fkhrApiLeaveSummaryPost({
    required LeaveSummaryRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/summary');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveSummary, ApiOkLeaveSummary>($request);
  }

  @override
  Future<Response<ApiOkLeaveList>> _fkhrApiLeaveListPost({
    required LeaveListRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/list');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveList, ApiOkLeaveList>($request);
  }

  @override
  Future<Response<ApiOkLeaveDetail>> _fkhrApiLeaveDetailPost({
    required LeaveDetailRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/detail');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveDetail, ApiOkLeaveDetail>($request);
  }

  @override
  Future<Response<ApiOkLeaveHistory>> _fkhrApiLeaveHistoryPost({
    required LeaveHistoryRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/history');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveHistory, ApiOkLeaveHistory>($request);
  }

  @override
  Future<Response<ApiOkLeaveCreate>> _fkhrApiLeaveCreatePost({
    required LeaveCreateRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/create_');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveCreate, ApiOkLeaveCreate>($request);
  }

  @override
  Future<Response<ApiOkApprovalsEmployees>>
  _fkhrApiLeaveApprovalsEmployeesPost({
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/approvals/employees');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkApprovalsEmployees, ApiOkApprovalsEmployees>(
      $request,
    );
  }

  @override
  Future<Response<ApiOkApprovalsList>> _fkhrApiLeaveApprovalsListPost({
    required ApprovalsListRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/approvals/list');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkApprovalsList, ApiOkApprovalsList>($request);
  }

  @override
  Future<Response<ApiOkLeaveApprove>> _fkhrApiLeaveApprovePost({
    required LeaveApproveRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/approve');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveApprove, ApiOkLeaveApprove>($request);
  }

  @override
  Future<Response<ApiOkLeaveRefuse>> _fkhrApiLeaveRefusePost({
    required LeaveRefuseRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/refuse');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveRefuse, ApiOkLeaveRefuse>($request);
  }

  @override
  Future<Response<ApiOkLeaveHRList>> _fkhrApiLeaveHrListPost({
    required LeaveHRListRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/leave/hr/list');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkLeaveHRList, ApiOkLeaveHRList>($request);
  }

  @override
  Future<Response<ApiOkCelebrations>> _fkhrApiEmployeesCelebrationsPost({
    required CelebrationsRequest? body,
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
  }) {
    final Uri $url = Uri.parse('/fkhr/api/employees/celebrations');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<ApiOkCelebrations, ApiOkCelebrations>($request);
  }
}
