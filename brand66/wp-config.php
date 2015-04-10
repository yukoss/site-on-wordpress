<?php
/**
 * Основные параметры WordPress.
 *
 * Этот файл содержит следующие параметры: настройки MySQL, префикс таблиц,
 * секретные ключи и ABSPATH. Дополнительную информацию можно найти на странице
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Кодекса. Настройки MySQL можно узнать у хостинг-провайдера.
 *
 * Этот файл используется скриптом для создания wp-config.php в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать этот файл
 * с именем "wp-config.php" и заполнить значения вручную.
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'brand66');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '2pY,g/Ot9&`i/=7pZx9PLIB7nRHuALdhPS6V#kS&qwmpJ]9WKo+fli(|BE%cwa;P');
define('SECURE_AUTH_KEY',  '(9uwHqtM3dK~1EjlYD@U`IQ.fAls4AW~`W#K0A0$1@]RN/S?yr<{.3Dj@X>[AG|c');
define('LOGGED_IN_KEY',    '0|<Lq7+/=7tiLdiW|UU4|]<Pt~KpfLoh8_qGvY0<ukMA6+;K`ODFVsgXMD{jhhDy');
define('NONCE_KEY',        '[i`z*WWovXvJa-@>dU;;0?ar7r}gZ`ZvtpnOzh|/S^BHXazp0xt6vc&mI!VAJ$nx');
define('AUTH_SALT',        'mZ:^{E8p^WfC3unhKOIXuw=Pd?`D$8xtj4LqY{18$6dTSX!{0rfRrI#~!3yj)@|n');
define('SECURE_AUTH_SALT', '{+E4(K>G3@,~Q8APmXx~4j1X@7sMUbQ^313aW<HY8b7 8(s&|dN*ooENvUE6e923');
define('LOGGED_IN_SALT',   '0foO=mvKK-Z9>(fRThoZ~&6IC}@E+~hMZgtwsM,pmYHMD.[F>O4rcrOG@9?Q*H@Q');
define('NONCE_SALT',       'w4_*$a5y4>qbN#ZGUp{@zBbrWKZs;iMNR#7tW|/2FF0Q$=Q&,fYD!.EGa~u!:Jhw');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'br_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
