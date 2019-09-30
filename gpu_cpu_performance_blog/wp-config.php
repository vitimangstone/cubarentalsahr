<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'performace_blogbd' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'aSg{4T6OP(4b{)Vq8gC/@Cmw6Rca6=;JgD,1G$OF5ZG|OLO,=F}v`=_sev(lz5Em' );
define( 'SECURE_AUTH_KEY',  'IXPVI(ba!&-rB#oo{ZKoMcY34S<Hgla:_gs.,cu}*=t(C8VUYT?(&@vOB%NAix4y' );
define( 'LOGGED_IN_KEY',    'S/t9cJa-gX/rkHM@oN}RkO*9&>R-*5{J<)rMhUGd 62tB;~hz)b7}fo,qKzXN}{h' );
define( 'NONCE_KEY',        'Fb2HpsA482UW$nVZ{qcv-(Se](f.iLJw>_Q8D{0&loL s5>}r@GZTZ0G8~@TF8I{' );
define( 'AUTH_SALT',        'T*c+kq)ii|)[,2yRdAo[a{4>[v^O!I,h&HM-Q;@~lt$6myNa9[ztnj6>~XX<<f;9' );
define( 'SECURE_AUTH_SALT', 'O@6(oT;`}fOk= yl{SIr4D@BWzhi%;$D6k.t:-JC$2B[X{XX,eANO~Id|</LI;ZL' );
define( 'LOGGED_IN_SALT',   '%c<j@_i_*0hdr]uC 4XyGiMfkriAi1P)?-1g6d2cyCm+RB1/R7L~|Fc}^R3:x9w+' );
define( 'NONCE_SALT',       'R@&~ o9lx[vL/|/-[8=;qG?1}#T-Qb61<2S*P5$0BY*[2C$+q~Jz7?x#g}dW]m8B' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
