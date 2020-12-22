import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/ticket_history_dto.dart';
import 'package:openapi/model/process_instance_response.dart';
import 'package:openapi/model/ticket.dart';
import 'package:openapi/model/ticket_dto.dart';
import 'package:openapi/model/form_data_response.dart';

class CommandResourceApi {
    final Dio _dio;
    Serializers _serializers;

    CommandResourceApi(this._dio, this._serializers);

        /// completeTasks
        ///
        /// 
        Future<Response<ProcessInstanceResponse>>completeTasksUsingPOST(Object data,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/complete-tasks";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(data);
            var jsondata = json.encode(serializedBody);
            bodyData = jsondata;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ProcessInstanceResponse);
        var data = _serializers.deserializeWith<ProcessInstanceResponse>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ProcessInstanceResponse>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// completeTasksWithForm
        ///
        /// 
        Future<Response<ProcessInstanceResponse>>completeTasksWithFormUsingPOST(FormDataResponse formData,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/complete-tasks/form";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(formData);
            var jsonformData = json.encode(serializedBody);
            bodyData = jsonformData;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(ProcessInstanceResponse);
        var data = _serializers.deserializeWith<ProcessInstanceResponse>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<ProcessInstanceResponse>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createTicketHistory
        ///
        /// 
        Future<Response<TicketHistoryDTO>>createTicketHistoryUsingPOST(Map<String, String> map,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/tickets/update-history";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(map);
            var jsonmap = json.encode(serializedBody);
            bodyData = jsonmap;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(TicketHistoryDTO);
        var data = _serializers.deserializeWith<TicketHistoryDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<TicketHistoryDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createTicket
        ///
        /// 
        Future<Response<TicketDTO>>createTicketUsingPOST(TicketDTO ticketDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/tickets";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(ticketDTO);
            var jsonticketDTO = json.encode(serializedBody);
            bodyData = jsonticketDTO;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(TicketDTO);
        var data = _serializers.deserializeWith<TicketDTO>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<TicketDTO>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// createTicketWithNewServedProduct
        ///
        /// 
        Future<Response<Ticket>>createTicketWithNewServedProductUsingPOST(Ticket ticket,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/tickets-with-served-product";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(ticket);
            var jsonticket = json.encode(serializedBody);
            bodyData = jsonticket;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Ticket);
        var data = _serializers.deserializeWith<Ticket>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Ticket>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
