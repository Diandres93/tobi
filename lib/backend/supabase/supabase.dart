import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://vpyhggczbiigzmetlgor.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZweWhnZ2N6YmlpZ3ptZXRsZ29yIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE3MTE4NDYsImV4cCI6MjAwNzI4Nzg0Nn0.Jilx7XaGqIu8FoUGL_nM9ISGZ86KE4ttD44rp4JkWEY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
