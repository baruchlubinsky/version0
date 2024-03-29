# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongo}
  s.version = "1.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Menard", "Mike Dirolf", "Kyle Banker", "Tyler Brock"]
  s.date = %q{2012-03-07}
  s.default_executable = %q{mongo_console}
  s.description = %q{A Ruby driver for MongoDB. For more information about Mongo, see http://www.mongodb.org.}
  s.email = %q{mongodb-dev@googlegroups.com}
  s.executables = ["mongo_console"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "Rakefile", "mongo.gemspec", "LICENSE.txt", "lib/mongo.rb", "lib/mongo/collection.rb", "lib/mongo/connection.rb", "lib/mongo/cursor.rb", "lib/mongo/db.rb", "lib/mongo/exceptions.rb", "lib/mongo/gridfs/grid.rb", "lib/mongo/gridfs/grid_ext.rb", "lib/mongo/gridfs/grid_file_system.rb", "lib/mongo/gridfs/grid_io.rb", "lib/mongo/gridfs/grid_io_fix.rb", "lib/mongo/networking.rb", "lib/mongo/repl_set_connection.rb", "lib/mongo/util/conversions.rb", "lib/mongo/util/core_ext.rb", "lib/mongo/util/logging.rb", "lib/mongo/util/node.rb", "lib/mongo/util/pool.rb", "lib/mongo/util/pool_manager.rb", "lib/mongo/util/server_version.rb", "lib/mongo/util/ssl_socket.rb", "lib/mongo/util/support.rb", "lib/mongo/util/tcp_socket.rb", "lib/mongo/util/uri_parser.rb", "lib/mongo/version.rb", "docs/CREDITS.md", "docs/FAQ.md", "docs/GridFS.md", "docs/HISTORY.md", "docs/READ_PREFERENCE.md", "docs/RELEASES.md", "docs/REPLICA_SETS.md", "docs/TAILABLE_CURSORS.md", "docs/TUTORIAL.md", "docs/WRITE_CONCERN.md", "bin/mongo_console", "test/auxillary/1.4_features.rb", "test/auxillary/authentication_test.rb", "test/auxillary/autoreconnect_test.rb", "test/auxillary/fork_test.rb", "test/auxillary/repl_set_auth_test.rb", "test/auxillary/slave_connection_test.rb", "test/auxillary/threaded_authentication_test.rb", "test/bson/binary_test.rb", "test/bson/bson_test.rb", "test/bson/byte_buffer_test.rb", "test/bson/hash_with_indifferent_access_test.rb", "test/bson/json_test.rb", "test/bson/object_id_test.rb", "test/bson/ordered_hash_test.rb", "test/bson/test_helper.rb", "test/bson/timestamp_test.rb", "test/collection_test.rb", "test/connection_test.rb", "test/conversions_test.rb", "test/cursor_fail_test.rb", "test/cursor_message_test.rb", "test/cursor_test.rb", "test/db_api_test.rb", "test/db_connection_test.rb", "test/db_test.rb", "test/grid_file_system_test.rb", "test/grid_io_test.rb", "test/grid_test.rb", "test/load/thin/load.rb", "test/load/unicorn/load.rb", "test/pool_test.rb", "test/replica_sets/basic_test.rb", "test/replica_sets/complex_connect_test.rb", "test/replica_sets/connect_test.rb", "test/replica_sets/count_test.rb", "test/replica_sets/insert_test.rb", "test/replica_sets/pooled_insert_test.rb", "test/replica_sets/query_test.rb", "test/replica_sets/read_preference_test.rb", "test/replica_sets/refresh_test.rb", "test/replica_sets/refresh_with_threads_test.rb", "test/replica_sets/replication_ack_test.rb", "test/replica_sets/rs_test_helper.rb", "test/safe_test.rb", "test/support/hash_with_indifferent_access.rb", "test/support/keys.rb", "test/support_test.rb", "test/test_helper.rb", "test/threading/threading_with_large_pool_test.rb", "test/threading_test.rb", "test/tools/auth_repl_set_manager.rb", "test/tools/repl_set_manager.rb", "test/unit/collection_test.rb", "test/unit/connection_test.rb", "test/unit/cursor_test.rb", "test/unit/db_test.rb", "test/unit/grid_test.rb", "test/unit/node_test.rb", "test/unit/pool_manager_test.rb", "test/unit/pool_test.rb", "test/unit/read_test.rb", "test/unit/safe_test.rb", "test/uri_test.rb"]
  s.homepage = %q{http://www.mongodb.org}
  s.rdoc_options = ["--main", "README.md", "--inline-source"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby driver for MongoDB}
  s.test_files = ["test/auxillary/1.4_features.rb", "test/auxillary/authentication_test.rb", "test/auxillary/autoreconnect_test.rb", "test/auxillary/fork_test.rb", "test/auxillary/repl_set_auth_test.rb", "test/auxillary/slave_connection_test.rb", "test/auxillary/threaded_authentication_test.rb", "test/bson/binary_test.rb", "test/bson/bson_test.rb", "test/bson/byte_buffer_test.rb", "test/bson/hash_with_indifferent_access_test.rb", "test/bson/json_test.rb", "test/bson/object_id_test.rb", "test/bson/ordered_hash_test.rb", "test/bson/test_helper.rb", "test/bson/timestamp_test.rb", "test/collection_test.rb", "test/connection_test.rb", "test/conversions_test.rb", "test/cursor_fail_test.rb", "test/cursor_message_test.rb", "test/cursor_test.rb", "test/db_api_test.rb", "test/db_connection_test.rb", "test/db_test.rb", "test/grid_file_system_test.rb", "test/grid_io_test.rb", "test/grid_test.rb", "test/load/thin/load.rb", "test/load/unicorn/load.rb", "test/pool_test.rb", "test/replica_sets/basic_test.rb", "test/replica_sets/complex_connect_test.rb", "test/replica_sets/connect_test.rb", "test/replica_sets/count_test.rb", "test/replica_sets/insert_test.rb", "test/replica_sets/pooled_insert_test.rb", "test/replica_sets/query_test.rb", "test/replica_sets/read_preference_test.rb", "test/replica_sets/refresh_test.rb", "test/replica_sets/refresh_with_threads_test.rb", "test/replica_sets/replication_ack_test.rb", "test/replica_sets/rs_test_helper.rb", "test/safe_test.rb", "test/support/hash_with_indifferent_access.rb", "test/support/keys.rb", "test/support_test.rb", "test/test_helper.rb", "test/threading/threading_with_large_pool_test.rb", "test/threading_test.rb", "test/tools/auth_repl_set_manager.rb", "test/tools/repl_set_manager.rb", "test/unit/collection_test.rb", "test/unit/connection_test.rb", "test/unit/cursor_test.rb", "test/unit/db_test.rb", "test/unit/grid_test.rb", "test/unit/node_test.rb", "test/unit/pool_manager_test.rb", "test/unit/pool_test.rb", "test/unit/read_test.rb", "test/unit/safe_test.rb", "test/uri_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bson>, ["~> 1.6.1"])
    else
      s.add_dependency(%q<bson>, ["~> 1.6.1"])
    end
  else
    s.add_dependency(%q<bson>, ["~> 1.6.1"])
  end
end
