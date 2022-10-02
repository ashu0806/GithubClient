import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  late Database _database;
  Database get instance => _database;
  bool _isInitialized = false;
  Future<void> initialize() async {
    if (_isInitialized) return;
    _isInitialized = true;
    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(
      recursive: true,
    );
    final dbPath = join(dbDirectory.path, 'db.sembastData');
    _database = await databaseFactoryIo.openDatabase(dbPath);
  }
}
