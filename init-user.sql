USE husd_beta;
INSERT IGNORE INTO husd_01_usuarios (usuario_login, usuario_pwd, usuario_nom, usuario_llin, usuario_revisado, usuario_lastlogin)
VALUES ('s999999', MD5('1234'), 'Usuario', 'Prueba', 1, NOW());