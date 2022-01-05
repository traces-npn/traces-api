select * from runners;
select * from controls;
select * from runners_controls order by device_id, control_id;
delete from runners_controls;
delete from runners_controls where device_id=659;

-- inserts control Puigmal Control 1
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (657, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T09:59:32.000","device_id":657,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (656, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T09:56:24.000","device_id":656,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (658, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:03:24.000","device_id":658,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (659, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:06:55.000","device_id":659,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (646, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:56:34.000","device_id":646,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (647, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:55:19.000","device_id":647,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (637, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:57:25.000","device_id":637,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (636, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:56:53.000","device_id":636,"batteryLevel":100}
}');

INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (690, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:58:45.000","device_id":690,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (692, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T10:58:39.000","device_id":692,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (683, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:25:17.000","device_id":683,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (681, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:21:27.000","device_id":681,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (729, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:01:48.000","device_id":729,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (652, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:08:30.000","device_id":652,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (668, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:06:33.000","device_id":668,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (667, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:07:14.000","device_id":667,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (616, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:13:14.000","device_id":616,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (615, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:05:21.000","device_id":615,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (634, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:13:48.000","device_id":634,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (635, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:13:42.000","device_id":635,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (716, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:09:49.000","device_id":716,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (725, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:09:46.000","device_id":725,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (660, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:15:49.000","device_id":660,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (661, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:16:26.000","device_id":661,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (724, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:04:34.000","device_id":724,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (644, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:30:28.000","device_id":644,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (618, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:26:44.000","device_id":618,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (619, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:26:51.000","device_id":619,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (730, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:30:09.000","device_id":730,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (643, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:30:17.000","device_id":643,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (700, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:35:56.000","device_id":700,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (727, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:37:36.000","device_id":727,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (665, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:46:25.000","device_id":665,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (666, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:46:10.000","device_id":666,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (693, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:36:32.000","device_id":693,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (691, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:42:44.000","device_id":691,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (628, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:53:07.000","device_id":628,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (629, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:52:54.000","device_id":629,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (648, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:48:12.000","device_id":648,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (649, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:49:31.000","device_id":649,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (731, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:53:29.000","device_id":731,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (640, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:53:13.000","device_id":640,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (662, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:48:54.000","device_id":662,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (664, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:48:51.000","device_id":664,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (654, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:58:31.000","device_id":654,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (655, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:58:40.000","device_id":655,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (670, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:48:35.000","device_id":670,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (669, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:48:22.000","device_id":669,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (627, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:40:37.000","device_id":627,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (626, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:40:45.000","device_id":626,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (633, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:25:39.000","device_id":633,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (631, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:44:40.000","device_id":631,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (687, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:42:16.000","device_id":687,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (684, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:42:10.000","device_id":684,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (698, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:54:43.000","device_id":698,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (699, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:55:03.000","device_id":699,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (674, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:45:40.000","device_id":674,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (673, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:45:48.000","device_id":673,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (696, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:58:49.000","device_id":696,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (695, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T11:58:55.000","device_id":695,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (671, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:25:00.000","device_id":671,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (672, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:25:00.000","device_id":672,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (678, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:14:55.000","device_id":678,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (677, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:15:20.000","device_id":677,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (650, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:05:30.000","device_id":650,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (651, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:05:19.000","device_id":651,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (688, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:35:00.000","device_id":688,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (689, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:35:00.000","device_id":689,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (728, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:16:04.000","device_id":728,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (639, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:16:17.000","device_id":639,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (622, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:35:00.000","device_id":622,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (621, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:35:00.000","device_id":621,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (623, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:56:00.000","device_id":623,"batteryLevel":100}
}');
INSERT INTO runners_controls (device_id, control_id, geodata) VALUES (624, 1,
'{"type":"Feature","geometry":{"type":"Point","coordinates":[2.116666,42.383333,2900]
},"properties":{"alt":2900,"time":"2021-12-30T12:56:00.000","device_id":624,"batteryLevel":100}
}');