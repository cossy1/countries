import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

export 'countries.req.gql.dart';
export 'countries.data.gql.dart';
export 'countries.var.gql.dart';

Client initClient(String url){
  HttpLink link = HttpLink(url);
  final client = Client(link: link);
  return client;
}