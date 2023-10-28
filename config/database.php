<?php

use Illuminate\Support\Str;

return [

    /*
    |--------------------------------------------------------------------------
    | Default Database Connection Name
    |--------------------------------------------------------------------------
    |
    | Here you may specify which of the database connections below you wish
    | to use as your default connection for all database work. Of course
    | you may use many connections at once using the Database library.
    |
    */

    'default' => env('DB_CONNECTION', 'mysql'),

    /*
    |--------------------------------------------------------------------------
    | Database Connections
    |--------------------------------------------------------------------------
    |
    | Here are each of the database connections setup for your application.
    | Of course, examples of configuring each database platform that is
    | supported by Laravel is shown below to make development simple.
    |
    |
    | All database work in Laravel is done through the PHP PDO facilities
    | so make sure you have the driver for your particular database of
    | choice installed on your machine before you begin development.
    |
    */

    'connections' => [

        'sqlite' => [
            'driver' => 'sqlite',
            'url' => env('DATABASE_URL'),
            'database' => env('DB_DATABASE', database_path('database.sqlite')),
            'prefix' => '',
            'foreign_key_constraints' => env('DB_FOREIGN_KEYS', true),
        ],

        'mysql' => [
            'driver' => 'mysql',
            'url' => env('DATABASE_URL'),
            'host' => env('DB_HOST', '127.0.0.1'),
            'port' => env('DB_PORT', '3306'),
            'database' => env('DB_DATABASE', 'forge'),
            'username' => env('DB_USERNAME', 'forge'),
            'password' => env('DB_PASSWORD', ''),
            'unix_socket' => env('DB_SOCKET', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix' => '',
            'prefix_indexes' => true,
            'strict' => true,
            'engine' => null,
            'options' => extension_loaded('pdo_mysql') ? array_filter([
                PDO::MYSQL_ATTR_SSL_CA => env('MYSQL_ATTR_SSL_CA'),
            ]) : [],
        ],
        'mysql_general' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_GENERAL', 'forge'),
            'username' => env('DB_USERNAME_GENERAL', 'forge'),
            'password' => env('DB_PASSWORD_GENERAL', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_globalvisacorp_com' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_GLOBALVISACORP_COM', 'forge'),
            'username' => env('DB_USERNAME_GLOBALVISACORP_COM', 'forge'),
            'password' => env('DB_PASSWORD_GLOBALVISACORP_COM', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],

        'mysql_azerbaijanimmigration_com' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_AZERBAIJANIMMIGRATION_COM', 'forge'),
            'username' => env('DB_USERNAME_AZERBAIJANIMMIGRATION_COM', 'forge'),
            'password' => env('DB_PASSWORD_AZERBAIJANIMMIGRATION_COM', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_cambodiaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_CAMBODIAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_CAMBODIAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_CAMBODIAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_ethiopiaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_ETHIOPIAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_ETHIOPIAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_ETHIOPIAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_myanmarimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_MYANMARIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_MYANMARIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_MYANMARIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_qatarimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_QATARIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_QATARIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_QATARIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_rwandaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_RWANDAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_RWANDAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_RWANDAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_tanzaniaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_TANZANIAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_TANZANIAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_TANZANIAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_thecanadianimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_THECANADIANIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_THECANADIANIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_THECANADIANIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_uaeimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_UAEIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_UAEIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_UAEIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_ugandaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_UGANDAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_UGANDAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_UGANDAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_indianimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_INDIANIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_INDIANIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_INDIANIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_egyptimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_EGYPTIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_EGYPTIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_EGYPTIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_auimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_AUIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_AUIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_AUIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_kenyaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_KENYAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_KENYAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_KENYAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_srilankaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_SRILANKAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_SRILANKAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_SRILANKAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_srilankavisa_lk' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_SRILANKAVISA_LK', 'forge'),
            'username' => env('DB_USERNAME_SRILANKAVISA_LK', 'forge'),
            'password' => env('DB_PASSWORD_SRILANKAVISA_LK', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_thevietnamimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_THEVIETNAMIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_THEVIETNAMIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_THEVIETNAMIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_uaevisa_ae' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_UAEVISA_AE', 'forge'),
            'username' => env('DB_USERNAME_UAEVISA_AE', 'forge'),
            'password' => env('DB_PASSWORD_UAEVISA_AE', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_vietnamimmigration_com_au' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_VIETNAMIMMIGRATION_COM_AU', 'forge'),
            'username' => env('DB_USERNAME_VIETNAMIMMIGRATION_COM_AU', 'forge'),
            'password' => env('DB_PASSWORD_VIETNAMIMMIGRATION_COM_AU', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_ivorycoastimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_IVORYCOASTIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_IVORYCOASTIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_IVORYCOASTIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_kuwaitimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_KUWAITIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_KUWAITIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_KUWAITIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_laoevisa_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_LAOEVISA_ORG', 'forge'),
            'username' => env('DB_USERNAME_LAOEVISA_ORG', 'forge'),
            'password' => env('DB_PASSWORD_LAOEVISA_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_newzealandvisaonline_com' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_NEWZEALANDVISAONLINE_COM', 'forge'),
            'username' => env('DB_USERNAME_NEWZEALANDVISAONLINE_COM', 'forge'),
            'password' => env('DB_PASSWORD_NEWZEALANDVISAONLINE_COM', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_saudiarabiaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_SAUDIARABIAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_SAUDIARABIAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_SAUDIARABIAIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_taiwanimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_TAIWANIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_TAIWANIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_TAIWANIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_taiwanimmigration_com_tw' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_TAIWANIMMIGRATION_COM_TW', 'forge'),
            'username' => env('DB_USERNAME_TAIWANIMMIGRATION_COM_TW', 'forge'),
            'password' => env('DB_PASSWORD_TAIWANIMMIGRATION_COM_TW', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        'mysql_zambianimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_ZAMBIANIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_ZAMBIANIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_ZAMBIANIMMIGRATION_ORG', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        //Turkey
        'mysql_turkeyimmigration_org' => [
            'driver' => env('DB_CONNECTION', 'mysql'),
            'host' => env('DB_HOST_TURKEY', '127.0.0.1'),
            'port' => env('DB_PORT_TURKEY', '3306'),
            'database' => env('DB_DATABASE_TURKEYIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_TURKEYIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_TURKEYIMMIGRATION_ORG', ''),
        ],

        'mysql_malaysiaimmigration_org' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database' => env('DB_DATABASE_MALAYSIAIMMIGRATION_ORG', 'forge'),
            'username' => env('DB_USERNAME_MALAYSIAIMMIGRATION_ORG', 'forge'),
            'password' => env('DB_PASSWORD_MALAYSIAIMMIGRATION_ORG', ''),
        ],

        //
        //Use other DB User
        'mysql_vietnamvisacorp_com' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_VIETNAMVISACORP_COM', 'forge'),
            'username' => env('DB_USERNAME_VIETNAMVISACORP_COM', 'forge'),
            'password' => env('DB_PASSWORD_VIETNAMVISACORP_COM', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        //user
        'mysql_globalvisacorp_com_idcorp' => [
            'driver'    => 'mysql',
            'host'      => env('DB_HOST', '127.0.0.1'),
            'database'  => env('DB_DATABASE_USER_VIETNAMVISACORP', 'forge'),
            'username' => env('DB_USERNAME_USER_VIETNAMVISACORP', 'forge'),
            'password' => env('DB_PASSWORD_USER_VIETNAMVISACORP', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix'    => ''
        ],
        //

        'pgsql' => [
            'driver' => 'pgsql',
            'url' => env('DATABASE_URL'),
            'host' => env('DB_HOST', '127.0.0.1'),
            'port' => env('DB_PORT', '5432'),
            'database' => env('DB_DATABASE', 'forge'),
            'username' => env('DB_USERNAME', 'forge'),
            'password' => env('DB_PASSWORD', ''),
            'charset' => 'utf8',
            'prefix' => '',
            'prefix_indexes' => true,
            'search_path' => 'public',
            'sslmode' => 'prefer',
        ],

        'sqlsrv' => [
            'driver' => 'sqlsrv',
            'url' => env('DATABASE_URL'),
            'host' => env('DB_HOST', 'localhost'),
            'port' => env('DB_PORT', '1433'),
            'database' => env('DB_DATABASE', 'forge'),
            'username' => env('DB_USERNAME', 'forge'),
            'password' => env('DB_PASSWORD', ''),
            'charset' => 'utf8',
            'prefix' => '',
            'prefix_indexes' => true,
            // 'encrypt' => env('DB_ENCRYPT', 'yes'),
            // 'trust_server_certificate' => env('DB_TRUST_SERVER_CERTIFICATE', 'false'),
        ],

    ],

    /*
    |--------------------------------------------------------------------------
    | Migration Repository Table
    |--------------------------------------------------------------------------
    |
    | This table keeps track of all the migrations that have already run for
    | your application. Using this information, we can determine which of
    | the migrations on disk haven't actually been run in the database.
    |
    */

    'migrations' => 'migrations',

    /*
    |--------------------------------------------------------------------------
    | Redis Databases
    |--------------------------------------------------------------------------
    |
    | Redis is an open source, fast, and advanced key-value store that also
    | provides a richer body of commands than a typical key-value system
    | such as APC or Memcached. Laravel makes it easy to dig right in.
    |
    */

    'redis' => [

        'client' => env('REDIS_CLIENT', 'phpredis'),

        'options' => [
            'cluster' => env('REDIS_CLUSTER', 'redis'),
            'prefix' => env('REDIS_PREFIX', Str::slug(env('APP_NAME', 'laravel'), '_').'_database_'),
        ],

        'default' => [
            'url' => env('REDIS_URL'),
            'host' => env('REDIS_HOST', '127.0.0.1'),
            'username' => env('REDIS_USERNAME'),
            'password' => env('REDIS_PASSWORD'),
            'port' => env('REDIS_PORT', '6379'),
            'database' => env('REDIS_DB', '0'),
        ],

        'cache' => [
            'url' => env('REDIS_URL'),
            'host' => env('REDIS_HOST', '127.0.0.1'),
            'username' => env('REDIS_USERNAME'),
            'password' => env('REDIS_PASSWORD'),
            'port' => env('REDIS_PORT', '6379'),
            'database' => env('REDIS_CACHE_DB', '1'),
        ],

    ],

];
