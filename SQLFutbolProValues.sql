INSERT INTO torneo (nombre_torneo, fecha_inicio, fecha_final, categoria)
VALUES 
    ('Torneo 1', '2016-01-01', '2016-03-31', 5),
    ('Torneo 2', '2016-04-01', '2016-06-30', 5),
    ('Torneo 3', '2016-07-01', '2016-09-30', 5),
    ('Torneo 4', '2016-10-01', '2016-12-31', 5),
    ('Torneo 5', '2017-01-01', '2017-03-31', 7),
    ('Torneo 6', '2017-02-01', '2017-04-30', 7),
    ('Torneo 7', '2017-03-01', '2017-05-31', 7), 
    ('Torneo 8', '2017-04-01', '2017-06-30', 11),
    ('Torneo 9', '2018-01-01', '2018-03-31', 11),
    ('Torneo 10', '2018-02-01', '2018-04-30', 11);
    
/*	('Torneo 11', '2018-03-01', '2018-05-31', 7), 
    ('Torneo 12', '2018-04-01', '2018-06-30', 11),
    ('Torneo 13', '2019-01-01', '2019-03-31', 5),
    ('Torneo 14', '2019-02-01', '2019-04-30', 7), 
    ('Torneo 15', '2019-03-01', '2019-05-31', 11),
    ('Torneo 16', '2019-10-01', '2019-12-31', 5),
    ('Torneo 17', '2020-01-01', '2020-03-31', 7),
    ('Torneo 18', '2020-02-01', '2020-04-30', 11),
    ('Torneo 19', '2020-03-01', '2020-05-31', 5), 
    ('Torneo 20', '2020-10-01', '2020-11-30', 7); */
	

delete from torneo;
DBCC CHECKIDENT(torneo, RESEED, 0);
delete from equipo;
DBCC CHECKIDENT(equipo, RESEED, 0);




INSERT INTO equipo (nombre_equipo, id_torneo)
VALUES 
    -- Torneo 1
    ('Equipo 1', 1), ('Equipo 2', 1), ('Equipo 3', 1),
    ('Equipo 4', 1), ('Equipo 5', 1), ('Equipo 6', 1),
    ('Equipo 7', 1), ('Equipo 8', 1), ('Equipo 9', 1),
    ('Equipo 10', 1), ('Equipo 11', 1), ('Equipo 12', 1),
    ('Equipo 13', 1), ('Equipo 14', 1),

    -- Torneo 2
    ('Equipo 15', 2), ('Equipo 16', 2), ('Equipo 17', 2),
    ('Equipo 18', 2), ('Equipo 19', 2), ('Equipo 20', 2),
    ('Equipo 21', 2), ('Equipo 22', 2), ('Equipo 23', 2),
    ('Equipo 24', 2), ('Equipo 25', 2), ('Equipo 26', 2),
    ('Equipo 27', 2), ('Equipo 28', 2),

    -- Torneo 3
    ('Equipo 29', 3), ('Equipo 30', 3), ('Equipo 31', 3),
    ('Equipo 32', 3), ('Equipo 33', 3), ('Equipo 34', 3),
    ('Equipo 35', 3), ('Equipo 36', 3), ('Equipo 37', 3),
    ('Equipo 38', 3), ('Equipo 39', 3), ('Equipo 40', 3),
    ('Equipo 41', 3), ('Equipo 42', 3),
    
    -- Torneo 4
    ('Equipo 43', 4), ('Equipo 44', 4), ('Equipo 45', 4),
    ('Equipo 46', 4), ('Equipo 47', 4), ('Equipo 48', 4),
    ('Equipo 49', 4), ('Equipo 50', 4), ('Equipo 51', 4),
    ('Equipo 52', 4), ('Equipo 53', 4), ('Equipo 54', 4),
    ('Equipo 55', 4), ('Equipo 56', 4),

    -- Torneo 5
    ('Equipo 57', 5), ('Equipo 58', 5), ('Equipo 59', 5),
    ('Equipo 60', 5), ('Equipo 61', 5), ('Equipo 62', 5),
    ('Equipo 63', 5), ('Equipo 64', 5), ('Equipo 65', 5),
    ('Equipo 66', 5), ('Equipo 67', 5), ('Equipo 68', 5),
    ('Equipo 69', 5), ('Equipo 70', 5),

	-- Torneo 6
    ('Equipo 71', 6), ('Equipo 72', 6), ('Equipo 73', 6),
    ('Equipo 74', 6), ('Equipo 75', 6), ('Equipo 76', 6),
    ('Equipo 77', 6), ('Equipo 78', 6), ('Equipo 79', 6),
    ('Equipo 80', 6), ('Equipo 81', 6), ('Equipo 82', 6),
    ('Equipo 83', 6), ('Equipo 84', 6),

    -- Torneo 7
    ('Equipo 85', 7), ('Equipo 86', 7), ('Equipo 87', 7),
    ('Equipo 88', 7), ('Equipo 89', 7), ('Equipo 90', 7),
    ('Equipo 91', 7), ('Equipo 92', 7), ('Equipo 93', 7),
    ('Equipo 94', 7), ('Equipo 95', 7), ('Equipo 96', 7),
    ('Equipo 97', 7), ('Equipo 98', 7),

    -- Torneo 8
    ('Equipo 99', 8), ('Equipo 100', 8), ('Equipo 101', 8),
    ('Equipo 102', 8), ('Equipo 103', 8), ('Equipo 104', 8),
    ('Equipo 105', 8), ('Equipo 106', 8), ('Equipo 107', 8),
    ('Equipo 108', 8), ('Equipo 109', 8), ('Equipo 110', 8),
    ('Equipo 111', 8), ('Equipo 112', 8),

    -- Torneo 9
    ('Equipo 113', 9), ('Equipo 114', 9), ('Equipo 115', 9),
    ('Equipo 116', 9), ('Equipo 117', 9), ('Equipo 118', 9),
    ('Equipo 119', 9), ('Equipo 120', 9), ('Equipo 121', 9),
    ('Equipo 122', 9), ('Equipo 123', 9), ('Equipo 124', 9),
    ('Equipo 125', 9), ('Equipo 126', 9),

    -- Torneo 10
    ('Equipo 127', 10), ('Equipo 128', 10), ('Equipo 129', 10),
    ('Equipo 130', 10), ('Equipo 131', 10), ('Equipo 132', 10),
    ('Equipo 133', 10), ('Equipo 134', 10), ('Equipo 135', 10),
    ('Equipo 136', 10), ('Equipo 137', 10), ('Equipo 138', 10),
    ('Equipo 139', 10), ('Equipo 140', 10);

	/* -- Torneo 11
    ('Equipo 141', 11), ('Equipo 142', 11), ('Equipo 143', 11),
    ('Equipo 144', 11), ('Equipo 145', 11), ('Equipo 146', 11),
    ('Equipo 147', 11), ('Equipo 148', 11), ('Equipo 149', 11),
    ('Equipo 150', 11), ('Equipo 151', 11), ('Equipo 152', 11),
    ('Equipo 153', 11), ('Equipo 154', 11),

    -- Torneo 12
    ('Equipo 155', 12), ('Equipo 156', 12), ('Equipo 157', 12),
    ('Equipo 158', 12), ('Equipo 159', 12), ('Equipo 160', 12),
    ('Equipo 161', 12), ('Equipo 162', 12), ('Equipo 163', 12),
    ('Equipo 164', 12), ('Equipo 165', 12), ('Equipo 166', 12),
    ('Equipo 167', 12), ('Equipo 168', 12),

    -- Torneo 13
    ('Equipo 169', 13), ('Equipo 170', 13), ('Equipo 171', 13),
    ('Equipo 172', 13), ('Equipo 173', 13), ('Equipo 174', 13),
    ('Equipo 175', 13), ('Equipo 176', 13), ('Equipo 177', 13),
    ('Equipo 178', 13), ('Equipo 179', 13), ('Equipo 180', 13),
    ('Equipo 181', 13), ('Equipo 182', 13),

    -- Torneo 14
    ('Equipo 183', 14), ('Equipo 184', 14), ('Equipo 185', 14),
    ('Equipo 186', 14), ('Equipo 187', 14), ('Equipo 188', 14),
    ('Equipo 189', 14), ('Equipo 190', 14), ('Equipo 191', 14),
    ('Equipo 192', 14), ('Equipo 193', 14), ('Equipo 194', 14),
    ('Equipo 195', 14), ('Equipo 196', 14),

    -- Torneo 15
    ('Equipo 197', 15), ('Equipo 198', 15), ('Equipo 199', 15),
    ('Equipo 200', 15), ('Equipo 201', 15), ('Equipo 202', 15),
    ('Equipo 203', 15), ('Equipo 204', 15), ('Equipo 205', 15),
    ('Equipo 206', 15), ('Equipo 207', 15), ('Equipo 208', 15),
    ('Equipo 209', 15), ('Equipo 210', 15),

	-- Torneo 16
    ('Equipo 211', 16), ('Equipo 212', 16), ('Equipo 213', 16),
    ('Equipo 214', 16), ('Equipo 215', 16), ('Equipo 216', 16),
    ('Equipo 217', 16), ('Equipo 218', 16), ('Equipo 219', 16),
    ('Equipo 220', 16), ('Equipo 221', 16), ('Equipo 222', 16),
    ('Equipo 223', 16), ('Equipo 224', 16),

    -- Torneo 17
    ('Equipo 225', 17), ('Equipo 226', 17), ('Equipo 227', 17),
    ('Equipo 228', 17), ('Equipo 229', 17), ('Equipo 230', 17),
    ('Equipo 231', 17), ('Equipo 232', 17), ('Equipo 233', 17),
    ('Equipo 234', 17), ('Equipo 235', 17), ('Equipo 236', 17),
    ('Equipo 237', 17), ('Equipo 238', 17),

    -- Torneo 18
    ('Equipo 239', 18), ('Equipo 240', 18), ('Equipo 241', 18),
    ('Equipo 242', 18), ('Equipo 243', 18), ('Equipo 244', 18),
    ('Equipo 245', 18), ('Equipo 246', 18), ('Equipo 247', 18),
    ('Equipo 248', 18), ('Equipo 249', 18), ('Equipo 250', 18),
    ('Equipo 251', 18), ('Equipo 252', 18),

    -- Torneo 19
    ('Equipo 253', 19), ('Equipo 254', 19), ('Equipo 255', 19),
    ('Equipo 256', 19), ('Equipo 257', 19), ('Equipo 258', 19),
    ('Equipo 259', 19), ('Equipo 260', 19), ('Equipo 261', 19),
    ('Equipo 262', 19), ('Equipo 263', 19), ('Equipo 264', 19),
    ('Equipo 265', 19), ('Equipo 266', 19),

    -- Torneo 20
    ('Equipo 267', 20), ('Equipo 268', 20), ('Equipo 269', 20),
    ('Equipo 270', 20), ('Equipo 271', 20), ('Equipo 272', 20),
    ('Equipo 273', 20), ('Equipo 274', 20), ('Equipo 275', 20),
    ('Equipo 276', 20), ('Equipo 277', 20), ('Equipo 278', 20),
    ('Equipo 279', 20), ('Equipo 280', 20); */



