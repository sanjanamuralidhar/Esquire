import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/ticket_history_dto.dart';
import 'package:openapi/model/ticket_dto.dart';
import 'package:openapi/model/service_ticket_aggregate.dart';

class AggregateCommandResourceApi {
    final Dio _dio;
    Serializers _serializers;

    AggregateCommandResourceApi(this._dio, this._serializers);

        /// CloseTicket
        ///
        /// 
        Future<Response<TicketHistoryDTO>>closeTicketUsingPUT(TicketDTO ticketDTO,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/closeTicket";

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
            method: 'put'.toUpperCase(),
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
        /// createServiceTicket
        ///
        /// 
        Future<Response<int>>createServiceTicketUsingPOST(ServiceTicketAggregate serviceTicketAggregate,{ int page,int size,List<String> sort,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/api/command/createServiceTicket";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'page'] = page;
                queryParams[r'size'] = size;
                queryParams[r'sort'] = sort;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(serviceTicketAggregate);
            var jsonserviceTicketAggregate = json.encode(serializedBody);
            bodyData = jsonserviceTicketAggregate;

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

        var serializer = _serializers.serializerForType(int);
        var data = _serializers.deserializeWith<int>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<int>(
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
