import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Reqres API Group Code

class ReqresAPIGroup {
  static String baseUrl = 'https://reqres.in/api';
  static Map<String, String> headers = {};
  static ListUsersCall listUsersCall = ListUsersCall();
}

class ListUsersCall {
  Future<ApiCallResponse> call({
    int? pageNo = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'listUsers',
      apiUrl: '${ReqresAPIGroup.baseUrl}/users/',
      callType: ApiCallType.GET,
      headers: {
        ...ReqresAPIGroup.headers,
      },
      params: {
        'page': pageNo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic firstNameList(dynamic response) => getJsonField(
        response,
        r'''$.data[:].first_name''',
        true,
      );
  dynamic lastNameList(dynamic response) => getJsonField(
        response,
        r'''$.data[:].last_name''',
        true,
      );
}

/// End Reqres API Group Code

/// Start Ecommerce API Group Code

class EcommerceAPIGroup {
  static String baseUrl = 'https://fakestoreapi.com';
  static Map<String, String> headers = {};
  static ListAllProductsCall listAllProductsCall = ListAllProductsCall();
  static GetProductCall getProductCall = GetProductCall();
  static GetCategoriesCall getCategoriesCall = GetCategoriesCall();
  static GetCategoryProductsCall getCategoryProductsCall =
      GetCategoryProductsCall();
}

class ListAllProductsCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? sort = 'asc',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'listAllProducts',
      apiUrl: '${EcommerceAPIGroup.baseUrl}/products',
      callType: ApiCallType.GET,
      headers: {
        ...EcommerceAPIGroup.headers,
      },
      params: {
        'limit': limit,
        'sort': sort,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  dynamic desc(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      );
  dynamic categoryName(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      );
  dynamic productImage(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
}

class GetProductCall {
  Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getProduct',
      apiUrl: '${EcommerceAPIGroup.baseUrl}/products/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...EcommerceAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.price''',
      );
  dynamic desc(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  dynamic categoryName(dynamic response) => getJsonField(
        response,
        r'''$.category''',
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.image''',
      );
}

class GetCategoriesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategories',
      apiUrl: '${EcommerceAPIGroup.baseUrl}/products/categories',
      callType: ApiCallType.GET,
      headers: {
        ...EcommerceAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCategoryProductsCall {
  Future<ApiCallResponse> call({
    String? categoryName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategoryProducts',
      apiUrl: '${EcommerceAPIGroup.baseUrl}/products/category/${categoryName}',
      callType: ApiCallType.GET,
      headers: {
        ...EcommerceAPIGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$[:].title''',
        true,
      );
  dynamic price(dynamic response) => getJsonField(
        response,
        r'''$[:].price''',
        true,
      );
  dynamic desc(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      );
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$[:].category''',
        true,
      );
  dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
        true,
      );
}

/// End Ecommerce API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
