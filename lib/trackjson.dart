import 'Trackscreen.dart';

/// message : {"header":{"status_code":404,"execute_time":0.0088391304016113},"body":[]}

class Trackjson {
  Message? _message;

  Message? get message => _message;

  Trackjson({
      Message? message}){
    _message = message;
}

  Trackjson.fromJson(dynamic json) {
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    return map;
  }

}

/// header : {"status_code":404,"execute_time":0.0088391304016113}
/// body : []

class Message {
  Header? _header;
  List<dynamic>? _body;

  Header? get header => _header;
  List<dynamic>? get body => _body;

  Message({
      Header? header, 
      List<dynamic>? body}){
    _header = header;
    _body = body;
}

  Message.fromJson(dynamic json) {
    _header = json['header'] != null ? Header.fromJson(json['header']) : null;
    if (json['body'] != null) {
      _body = [];
      json['body'].forEach((v) {
        _body?.add(Message?.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_header != null) {
      map['header'] = _header?.toJson();
    }
    if (_body != null) {
      map['body'] = _body?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// status_code : 404
/// execute_time : 0.0088391304016113

class Header {
  int? _statusCode;
  double? _executeTime;

  int? get statusCode => _statusCode;
  double? get executeTime => _executeTime;

  Header({
      int? statusCode, 
      double? executeTime}){
    _statusCode = statusCode;
    _executeTime = executeTime;
}

  Header.fromJson(dynamic json) {
    _statusCode = json['status_code'];
    _executeTime = json['execute_time'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status_code'] = _statusCode;
    map['execute_time'] = _executeTime;
    return map;
  }

}