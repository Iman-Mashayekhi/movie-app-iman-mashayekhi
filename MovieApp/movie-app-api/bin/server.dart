import 'package:shelf_router/shelf_router.dart';
import 'package:mysql1/mysql1.dart';
import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as shelf_io;

Future<void> main() async {
  final router = Router();

  final conn = await MySqlConnection.connect(ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'Iman',
    db: 'movieapp',
    password: '1',
  ));

  router.get('/', (Request request) {
    return Response.ok("server is running");
  });

  router.get('/movies', (Request request) async {
    var results = await conn.query('SELECT * FROM movies');
    List<Map<String, dynamic>> movies = [];
    for (var row in results) {
      movies.add({
        'Id': row[0],
        'Name': row[1],
        'Description': row[2],
        'Genre': row[3],
        'Imdb': row[4],
        'Director': row[5],
        'Picture': row[6],
        'watchTime': row[7],
        'CreatedAt' : row[8]
      });
    }
    return Response.ok(jsonEncode(movies),
        headers: {'Content-Type': 'application/json'});
  });

  router.get('/movies/<id>', (Request request, String id) async {
    var results = await conn.query('SELECT * FROM movies WHERE id = ?', [id]);
    List<Map<String, dynamic>> movies = [];
    for (var row in results) {
      movies.add({
        'Id': row[0],
        'Name': row[1],
        'Description': row[2],
        'Genre': row[3],
        'Imdb': row[4],
        'Director': row[5],
        'Picture': row[6],
        'watchTime': row[7],
        'CreatedAt' : row[8]
      });
    }
    return Response.ok(jsonEncode(movies),
        headers: {'Content-Type': 'application/json'});
  });

  router.post('/insert', (Request request) async {
    final payload = await request.readAsString();
    final data = jsonDecode(payload);

    var result = await conn.query(
        "INSERT INTO movies (`name`, `description`,`genre`, `imdb`, `director`, `picture`, `watchTime` , `CreatedAt`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
        [
          data['Name'],
          data['Description'],
          data['Genre'],
          data['Imdb'],
          data['Director'],
          data['Picture'],
          data['watchTime'],
          data['CreatedAt']
        ]);

    print(data);

    return Response.ok(
        'Movie has been uploaded to db with id ${result.insertId}');
  });

  router.put('/update/<id>', (Request request, String id) async {
    final payload = await request.readAsString();
    final data = jsonDecode(payload);

    var result = await conn.query(
        "UPDATE movies SET name = ?, description = ?, genre = ?, imdb = ?, director = ?, picture = ?, watchTime = ? WHERE id = ?",
        [
          data['Name'],
          data['Description'],
          data['Genre'],
          data['Imdb'],
          data['Director'],
          data['Picture'],
          data['watchTime'],
          id
        ]);
    if (result.affectedRows == 0) {
      return Response.notFound("The Movie with id ${id} did not found!");
    }

    return Response.ok('The Movie with id ${id} has been updated');
  });

  router.delete('/delete/<id>', (Request request, String id) async {
    var result = await conn.query('DELETE FROM movies WHERE id = ?', [id]);
    if (result.affectedRows == 0) {
      return Response.notFound("The Movie with id ${id} did not found!");
    }
    return Response.ok('Movie with id $id has been deleted');
  });

  final handler =
      const shelf.Pipeline().addMiddleware(logRequests()).addHandler(router);

  final server = await shelf_io.serve(handler, 'localhost', 8080);
  print('Serving at http://${server.address.host}:${server.port}');
}
