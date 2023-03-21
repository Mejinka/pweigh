import 'package:dart_mssql/dart_mssql.dart';

Future<SqlConnection> getConnection() async {
  final conn = SqlConnection(
    host: 'hostname',
    user: 'username',
    password: 'password',
    db: 'databasename',
  );

  await conn.execute;
  return conn;
}
