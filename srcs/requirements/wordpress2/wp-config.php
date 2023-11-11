<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'inception' );

/** Database username */
define( 'DB_USER', 'inception_user' );

/** Database password */
define( 'DB_PASSWORD', 'inception_pass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '#}M$!W>!RfsL;<7)(hT>:|tr#r;]x3#les.y4O2(c@!8jbxh@ug9GTN{?Ut$K3=Y' );
define( 'SECURE_AUTH_KEY',   'o>*DKUyi3-8Qc7#j73=L6{oW?gFOq;_eI<m=B8;!Q{-GgA[3ovNK;l}Mym4zui0^' );
define( 'LOGGED_IN_KEY',     'W^/WbqB,)%0;Syc:k<o}xeMs[|-7Y}v/;`$^h!fOVxnx64eWC0Vh3wh@e:#XtM:e' );
define( 'NONCE_KEY',         '~@1YncOn77I%^ =HB=}$Db;T5HnAq)1!i[Zaw`(;-O9x=:Lg(;Da?oQZ!cz.21S;' );
define( 'AUTH_SALT',         'xTeYKDfr}TCyK+b}tt(ZtV]Xk!s4)hrba_N`:tqVeCV-N5bdb r6F 5p6C-Qivd6' );
define( 'SECURE_AUTH_SALT',  'c!`9FvLH_t* ex}N/g/Qm/2vlSD4$1<*4ODg8Q,JM^i^KAlX:F5)9,T53[*ks !D' );
define( 'LOGGED_IN_SALT',    'I*ZuUX~+Pk`uy[D]^n$EMz9qevFxrm3{v:hy*vTF#=@il.I02,#]}^u~FPb;;CrM' );
define( 'NONCE_SALT',        'X}V~<Id,eLVsjnC82i7$H7UJAlnF?jI^g{a0ZB}S7=C8)(h0K>8U(h9=&O5F_/_y' );
define( 'WP_CACHE_KEY_SALT', 'h|^rHPzxh3;]6(ycEAI.Y8WKZ?}dnjyN,3N$j@MsbF2KGU=O&WCz&cfo2FP)l1}c' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
