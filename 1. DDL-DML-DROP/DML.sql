
-- LICENCIA

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento) 
VALUES (1, 'Licencia de Software XYZ', 'Licencia para el uso del software XYZ en entornos corporativos.',
    'Empresa ABC', 12, TO_DATE('2025-12-31', 'YYYY-MM-DD'));

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento) 
VALUES (2, 'Licencia de Desarrollo ABC', 'Licencia para el desarrollo de aplicaciones utilizando la plataforma ABC.', 
    'Desarrolladora DEF', 24, TO_DATE('2026-06-30', 'YYYY-MM-DD'));

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento)
VALUES (3, 'Licencia de Capacitaci�n LMN', 'Licencia para acceder a los m�dulos de capacitaci�n en l�nea de la empresa LMN.',
    'Instituci�n GHI', 6, TO_DATE('2025-05-15', 'YYYY-MM-DD'));

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento)
VALUES (4, 'Licencia Comercial RTP', 'Licencia para Software o hardware licenciado exclusivamente para integrarse en productos terminados.',
    'Empresa OFC', 12, TO_DATE('2025-11-07', 'YYYY-MM-DD'));
    
INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento)
VALUES (5, 'Licencia de Contenidos Educativos', 'Licencias abiertas que permiten el acceso libre a investigaciones y art�culos cient�ficos.',
    'Instituci�n GFDL', 24, TO_DATE('2026-06-08', 'YYYY-MM-DD'));
    
-- MONEDA

INSERT INTO moneda (id_moneda, nombre) VALUES (1,'Soles');
INSERT INTO moneda (id_moneda, nombre) VALUES (2,'Dolares');
INSERT INTO moneda (id_moneda, nombre) VALUES (3,'Euros');
INSERT INTO moneda (id_moneda, nombre) VALUES (4,'Libras');
INSERT INTO moneda (id_moneda, nombre) VALUES (5,'Pesos');

-- TIPO

INSERT INTO tipo (id_tipo, nombre) VALUES (1, 'Organizaci�n No Gubernamental');
INSERT INTO tipo (id_tipo, nombre) VALUES (2, 'Empresa Estatal');
INSERT INTO tipo (id_tipo, nombre) VALUES (3, 'Microempresa');
INSERT INTO tipo (id_tipo, nombre) VALUES (4, 'Sociedad An�nima');
INSERT INTO tipo (id_tipo, nombre) VALUES (5, 'Empresa Privada');

-- TIPO_DOCUMENTO

INSERT INTO tipo_documento (id_tipo_documento, nombre) VALUES (1,'DNI');
INSERT INTO tipo_documento (id_tipo_documento, nombre) VALUES (2,'CARNET_EXTRANJERIA');
INSERT INTO tipo_documento (id_tipo_documento, nombre) VALUES (3,'PASAPORTE');

-- SECTOR

INSERT INTO sector (id_sector, nombre, descripcion) VALUES (101, 'Tecnolog�a', 'Empresas que desarrollan software, hardware y servicios tecnol�gicos.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (102, 'Construcci�n', 'Organizaciones dedicadas a la edificaci�n de infraestructura y obras civiles.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (103, 'Finanzas', 'Instituciones que ofrecen servicios bancarios, seguros y gesti�n de inversiones.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (104, 'Salud', 'Entidades que proveen servicios m�dicos, hospitalarios y productos farmac�uticos.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (105, 'Educaci�n', 'Instituciones que imparten formaci�n acad�mica y profesional.');


-- PERSONA

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (1, 'Juan', 'P�rez', 'juan.perez@example.com', 'D', 1, '1234567890', '+34 612 345 678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (2, 'Mar�a', 'G�mez', 'maria.gomez@example.com', 'D', 2, '9876543210', '+1 416-555-0189','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (3, 'Carlos', 'L�pez', 'carlos.lopez@example.com', 'D', 1, '1122334455', '+44 20 7946 0958','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (4, 'Ana', 'Mart�nez', 'ana.martinez@example.com', 'D', 2, '6677889900', '+61 2 9876 5432','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (5, 'Luc�a', 'Fern�ndez', 'lucia.fernandez@example.com', 'D', 1, '9988776655', '+39 06 1234 5678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (6, 'Pedro', 'Ram�rez', 'pedro.ramirez@example.com', 'A', 3, '7766554433', '+52 55 1234 5678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (7, 'Sof�a', 'Hern�ndez', 'sofia.hernandez@example.com', 'A', 1, '2233445566', '+57 1 2345678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (8, 'Diego', 'Garc�a', 'diego.garcia@example.com', 'A', 2, '3344556677', '+1 202-555-0198','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (9, 'Hugo', 'Reyes', 'hugo.reyes@example.com', 'A', 2, '1238456677', '+61 3 6123 4567','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (10, 'Guadalupe', 'Torres', 'guadalupe.torres@example.com', 'A', 2, '3283946677', '+39 02 1234 5678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (11, 'Jorge', 'Mendoza', 'jorge.mendoza@example.com', 'C', 2, '3344529348', '+34 911 234 567','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (12, 'Joaquin', 'Estrada', 'joaquin.estrada@example.com', 'C', 2, '3244345557', '+55 11 91234-5678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (13, 'Mariana', 'L�pez', 'mariana.lopez@example.com', 'C', 1, '1029384756', '+86 138 1234 5678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (14, 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', 'C', 2, '2039485768', '+33 1 70 18 92 56','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (15, 'Luc�a', 'Ram�rez', 'lucia.ramirez@example.com', 'C', 3, '4213857890', '+81 90 1234 5678','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (16, 'Andr�s', 'Garc�a', 'andres.garcia@example.com', 'P', 1, '8765432109', '+7 495 123-45-67','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (17, 'Sof�a', 'Castro', 'sofia.castro@example.com', 'P', 2, '7584936201', '+27 21 123 4567','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (18, 'Ricardo', 'P�rez', 'ricardo.perez@example.com', 'P', 3, '6543219870', '+52 55 6789 1234','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (19, 'Ana', 'Hern�ndez', 'ana.hernandez@example.com', 'P', 1, '3948571026', '+34 623 456 789','INACTIVO');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto, estado)
VALUES (20, 'Javier', 'Ortiz', 'javier.ortiz@example.com', 'P', 2, '9485761032', '+39 06 8765 4321','INACTIVO');

-- DOCENTE

INSERT INTO docente (id_docente, link_linkedin, id_persona) VALUES (1, 'https://www.linkedin.com/in/juan-perez', 1);
INSERT INTO docente (id_docente, link_linkedin, id_persona) VALUES (2, 'https://www.linkedin.com/in/maria-gomez', 2);
INSERT INTO docente (id_docente, link_linkedin, id_persona) VALUES (3, 'https://www.linkedin.com/in/carlos-lopez', 3);
INSERT INTO docente (id_docente, link_linkedin, id_persona) VALUES (4, 'https://www.linkedin.com/in/ana-martinez', 4);
INSERT INTO docente (id_docente, link_linkedin, id_persona) VALUES (5, 'https://www.linkedin.com/in/lucia-fernandez', 5);

-- ASISTENTE_ADMINISTRATIVO

INSERT INTO asistente_administrativo (id_asistente_admin, id_persona) VALUES (1, 6);
INSERT INTO asistente_administrativo (id_asistente_admin, id_persona) VALUES (2, 7);
INSERT INTO asistente_administrativo (id_asistente_admin, id_persona) VALUES (3, 8);
INSERT INTO asistente_administrativo (id_asistente_admin, id_persona) VALUES (4, 9);
INSERT INTO asistente_administrativo (id_asistente_admin, id_persona) VALUES (5, 10);

-- COORDINADOR_ACADEMICO

INSERT INTO coordinador_academico (id_coord_acad, id_persona) VALUES (1, 11);
INSERT INTO coordinador_academico (id_coord_acad, id_persona) VALUES (2, 12);
INSERT INTO coordinador_academico (id_coord_acad, id_persona) VALUES (3, 13);
INSERT INTO coordinador_academico (id_coord_acad, id_persona) VALUES (4, 14);
INSERT INTO coordinador_academico (id_coord_acad, id_persona) VALUES (5, 15);


-- AREA_ESPECIALIZACION

INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (1, 'Inteligencia Artificial', 'Estudio avanzado de algoritmos de aprendizaje autom�tico y procesamiento de lenguaje natural.',
    'M�ster', 'Universidad Nacional', TO_DATE('2020-06-15', 'YYYY-MM-DD'), 'Certificado por publicaciones en conferencias internacionales.',1);

INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (2, 'Ciencia de Datos', 'An�lisis y visualizaci�n de datos en grandes vol�menes utilizando herramientas modernas.','Diplomado', 'Instituto Tecnol�gico',
    TO_DATE('2021-11-20', 'YYYY-MM-DD'), 'Reconocido por proyectos destacados en la industria.',2);
    
INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (3, 'Ciberseguridad', 'Implementaci�n de sistemas de seguridad para proteger redes e informaci�n.', 'Diplomado', 'Centro de Estudios Avanzados', 
    TO_DATE('2020-09-10', 'YYYY-MM-DD'), 'Reconocimiento por contribuciones a protocolos seguros.', 3);
    
INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (4, 'Big Data', 'Gesti�n de datos a gran escala utilizando tecnolog�as avanzadas.', 'Maestr�a', 'Instituto de Tecnolog�a Digital', 
    TO_DATE('2022-02-14', 'YYYY-MM-DD'), 'Reconocimiento por proyectos de alto impacto en la industria.', 4);
    
INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (5, 'Desarrollo Web', 'Creaci�n de aplicaciones web modernas y funcionales.', 'Diplomado', 'Academia de Desarrollo Avanzado', 
    TO_DATE('2020-12-05', 'YYYY-MM-DD'), 'Menci�n honor�fica por aplicaciones innovadoras.', 5);

-- ENTIDAD

INSERT INTO entidad (
    id_entidad, ruc, nombre, correo_electronico, direccion_empresa, numero_contacto, tipo_id_tipo, sector_id_sector) VALUES 
(1, 20123456789, 'Empresa Alfa', 'contacto@alfa.com', 'Av. Siempre Viva 123', 987654321, 1, 101);
INSERT INTO entidad (
    id_entidad, ruc, nombre, correo_electronico, direccion_empresa, numero_contacto, tipo_id_tipo, sector_id_sector) VALUES 
(2, 20234567890, 'Beta Corp', 'info@beta.com', 'Calle Principal 456', 912345678, 2, 102);
INSERT INTO entidad (
    id_entidad, ruc, nombre, correo_electronico, direccion_empresa, numero_contacto, tipo_id_tipo, sector_id_sector) VALUES
(3, 20345678901, 'Gama Ltda', 'gama@gama.com', 'Jr. Los Olivos 789', 965432187, 1, 103);
INSERT INTO entidad (
    id_entidad, ruc, nombre, correo_electronico, direccion_empresa, numero_contacto, tipo_id_tipo, sector_id_sector) VALUES
(4, 20456789012, 'Delta S.A.', 'delta@delta.com', 'Av. Bienestar 111', 998877665, 3, 104);
INSERT INTO entidad (
    id_entidad, ruc, nombre, correo_electronico, direccion_empresa, numero_contacto, tipo_id_tipo, sector_id_sector) VALUES
(5, 20567890123, 'Epsilon SAC', 'contacto@epsilon.com', 'Pasaje Conocimiento 222', 912345999, 2, 105);


-- GERENTE

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (1, 'Carlos', 'P�rez', '12345678', 'Gerente General', 'c.perez@empresa.com', 1);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (2, 'Ana', 'Mart�nez', '23456789', 'Gerente de Finanzas', 'a.martinez@empresa.com', 2);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (3, 'Luis', 'Gonz�lez', '34567890', 'Gerente de Marketing', 'l.gonzalez@empresa.com', 3);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (4, 'Jose', 'Ram�rez', '56789012', 'Gerente de Operaciones', 'c.ramirez@empresa.com', 4);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (5, 'Luc�a', 'Torres', '89012345', 'Gerente de Proyectos', 'l.torres@empresa.com', 5);


-- CURRICULUM_VITAE

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (1, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 5, 'Colegio de Ingenieros de Software', 'Inteligencia Artificial', 1, 1);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (2, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 3, 'Colegio de Analistas de Datos', 'Ciencia de Datos', 2, 2);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (3, TO_DATE('2023-11-15', 'YYYY-MM-DD'), 5, 'Colegio de Gestores de Proyectos', 'Ingenier�a de Software', 3, 3);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (4, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 2, 'Asociaci�n de Ciberseguridad Global', 'Ciberseguridad', 4, 4);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (5, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 4, 'Asociaci�n de Big Data e Innovaci�n', 'Big Data', 5, 5);

-- EXPERIENCIA_LABORAL

INSERT INTO experiencia_laboral (id_exp_laboral, fecha_inicio, fecha_culmino, cargo, correo_referencia, curriculum_vitae_id_cv1)
VALUES (1, TO_DATE('2018-06-01', 'YYYY-MM-DD'), TO_DATE('2020-08-31', 'YYYY-MM-DD'), 'Analista de Datos', 'referencia.datos@example.com', 2);

INSERT INTO experiencia_laboral (id_exp_laboral, fecha_inicio, fecha_culmino, cargo, correo_referencia, curriculum_vitae_id_cv1)
VALUES (2, TO_DATE('2021-01-15', 'YYYY-MM-DD'), TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'Ingeniero de Software', 'referencia.soft@example.com', 1);

INSERT INTO experiencia_laboral (id_exp_laboral, fecha_inicio, fecha_culmino, cargo, correo_referencia, curriculum_vitae_id_cv1)
VALUES (3, TO_DATE('2017-03-01', 'YYYY-MM-DD'), TO_DATE('2019-12-15', 'YYYY-MM-DD'), 'Administrador de Sistemas', 'referencia.admin@example.com', 3);

INSERT INTO experiencia_laboral (id_exp_laboral, fecha_inicio, fecha_culmino, cargo, correo_referencia, curriculum_vitae_id_cv1)
VALUES (4, TO_DATE('2019-02-25', 'YYYY-MM-DD'), TO_DATE('2022-06-15', 'YYYY-MM-DD'), 'Especialista en Ciberseguridad', 'referencia.ciber@example.com', 4);

INSERT INTO experiencia_laboral (id_exp_laboral, fecha_inicio, fecha_culmino, cargo, correo_referencia, curriculum_vitae_id_cv1)
VALUES (5, TO_DATE('2015-08-01', 'YYYY-MM-DD'), TO_DATE('2020-12-10', 'YYYY-MM-DD'), 'Gestor de Proyectos', 'referencia.proyectos@example.com', 5);

-- CERTIFICADO_PROFESIONAL

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (1, 'Certificaci�n en Machine Learning', 'Uso de algoritmos avanzados para el aprendizaje autom�tico en grandes conjuntos de datos.', 1);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (2, 'Certificaci�n en Big Data', 'An�lisis y gesti�n de grandes vol�menes de datos utilizando herramientas como Hadoop y Spark.',2);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (3, 'Certificaci�n en Visualizaci�n de Datos', 'Creaci�n de dashboards interINACTIVOs y an�lisis visual con Power BI y Tableau.',3);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (4, 'Certificaci�n en Estad�stica Avanzada', 'M�todos avanzados de inferencia estad�stica y modelado predictivo.',4);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (5, 'Certificaci�n en Inteligencia Artificial', 'Redes neuronales, aprendizaje supervisado y no supervisado.', 5);


-- PROPUESTA

INSERT INTO PROPUESTA (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (1, 'Propuesta para curso de desarrollo web para empleados', 'Manual de Desarrollo Web, Licencia de Software', 1, 15000.00, DATE '2024-10-10', 'Programaci�n Web', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (2, 'Propuesta para taller de ciberseguridad empresarial', 'Gu�a de Seguridad en Redes, Acceso a Laboratorio Virtual', 2, 18000.00, DATE '2024-11-05', 'Ciberseguridad', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (3, 'Propuesta para capacitaci�n en an�lisis de datos avanzados', 'Conjunto de Datos de Pr�ctica, Licencia de Software', 1, 20000.00, DATE '2024-09-20', 'An�lisis de Datos', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (4, 'Propuesta para curso de inteligencia artificial aplicada', 'Licencia de Herramientas de IA, Material Did�ctico', 3, 25000.00, DATE '2024-08-15', 'Inteligencia Artificial', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (5, 'Propuesta para proyecto de desarrollo de aplicaciones m�viles', 'Documentaci�n T�cnica, Acceso a Recursos Online', 2, 30000.00, DATE '2024-07-30', 'Desarrollo M�vil', 1);

-- LICITACIONES

INSERT INTO LICITACION (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc,
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) VALUES
(1,'Licitacion 1',DATE '2024-10-14',DATE '2024-11-14','Desarrollo web',24,15,26712,'Programaci�n Frontend y Backend','V',4,1,1);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (2, 'Licitacion 2', DATE '2024-09-10', DATE '2024-10-10', 'Ciberseguridad', 30, 20, 32000, 'Seguridad de Redes', 'P', 5, 2, 2);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (3, 'Licitacion 3', DATE '2024-08-01', DATE '2024-09-01', 'Big Data', 40, 25, 45000, 'An�lisis de Datos Masivos', 'V', 3, 3, 1);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (4, 'Licitacion 4', DATE '2024-07-15', DATE '2024-08-15', 'Inteligencia Artificial', 35, 18, 38000, 'Aprendizaje Autom�tico', 'P', 2, 4, 3);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (5, 'Licitacion 5', DATE '2024-06-20', DATE '2024-07-20', 'Desarrollo de Aplicaciones M�viles', 28, 22, 30000, 'Programaci�n en iOS y Android', 'V', 2, 5, 1);

-- CURSO
INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (1, 'Introducci�n a la Programaci�n Web', 'P', 1, 1, 1, 40, 'Fundamentos de programaci�n web.', 'INACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (2, 'Ciberseguridad B�sica', 'V', 2, 2, 2, 30, 'Conceptos clave de seguridad inform�tica y redes.', 'INACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (3, 'An�lisis de Datos Avanzado', 'H', 3, 3, 3, 45, 'T�cnicas de an�lisis predictivo y manejo de grandes vol�menes de datos.', 'INACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (4, 'Desarrollo de Aplicaciones M�viles', 'P', 4, 4, 4, 50, 'Creaci�n de aplicaciones m�viles con Android e iOS.', 'INACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (5, 'Inteligencia Artificial Aplicada', 'V', 5, 5, 5, 35, 'Introducci�n a aprendizaje supervisado y redes neuronales.', 'INACTIVO');

-- PARTICIPANTE

INSERT INTO participante (id_participante, curso_id_curso, id_persona, opinion) VALUES (1, 1, 16, NULL);
INSERT INTO participante (id_participante, curso_id_curso, id_persona, opinion) VALUES (2, 2, 17, NULL);
INSERT INTO participante (id_participante, curso_id_curso, id_persona, opinion) VALUES (3, 3, 18, NULL);
INSERT INTO participante (id_participante, curso_id_curso, id_persona, opinion) VALUES (4, 4, 19, NULL);
INSERT INTO participante (id_participante, curso_id_curso, id_persona, opinion) VALUES (5, 5, 20, NULL);


-- CURSO_DOCENTE

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (1, 1, TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-02-15', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (1, 2, TO_DATE('2024-02-16', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (2, 2, TO_DATE('2024-03-24', 'YYYY-MM-DD'), TO_DATE('2024-04-25', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (3, 1, TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-04-25', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (3, 3, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (4, 4, TO_DATE('2024-04-10', 'YYYY-MM-DD'), TO_DATE('2024-05-15', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (5, 5, TO_DATE('2024-05-01', 'YYYY-MM-DD'), TO_DATE('2024-06-10', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (4, 1, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (2, 3, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'));

-- IDIOMA

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (1, 'Ingl�s', 'B2', 'Certificado por la Universidad de Cambridge', 1, 1);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (2, 'Franc�s', 'C1', 'Certificado DELF C1', 2, 2);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (3, 'Alem�n', 'B1', 'Goethe-Zertifikat B1', 3, 3);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (4, 'Italiano', 'A2', 'Certificado PLIDA A2', 4, 4);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (5, 'Portugu�s', 'B2', 'Certificado CELPE-Bras', 5, 5);

-- INFORME_FINAL

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (1, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'Introducci�n a la programaci�n, estructuras de datos', 'Clases te�ricas y ejercicios pr�cticos', 
    'Los estudiantes dominaron los conceptos b�sicos de programaci�n.', 'Se recomienda m�s tiempo de pr�ctica en programaci�n.', 40, 25, 5, 2, 25, 1, 1, 1);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (2, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 'Bases de datos, SQL avanzado', 'Clases magistrales, laboratorio de consultas', 
    'Los participantes adquirieron habilidades en manejo avanzado de bases de datos.', 'Se sugiere incluir m�s ejercicios pr�cticos con SQL.', 35, 20, 3, 1, 15, 2, 2, 2);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (3, TO_DATE('2024-10-20', 'YYYY-MM-DD'), 'Ciberseguridad, redes de protecci�n', 'Simulaciones en laboratorio y estudios de casos', 
    'Los estudiantes comprendieron los fundamentos de la ciberseguridad y su aplicaci�n pr�ctica.', 'Recomendar�amos m�s pr�cticas en ambientes controlados de redes.', 45, 22, 4, 3, 18, 3, 3, 3);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (4, TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'Programaci�n en Python, an�lisis de datos', 'Clases pr�cticas y estudios de proyectos', 
    'Los alumnos adquirieron competencia en an�lisis de datos con Python.', 'Aumentar las horas dedicadas al an�lisis de datos real.', 40, 28, 2, 1, 20, 4, 4, 4);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (5, TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'Desarrollo de aplicaciones m�viles', 'Clases te�ricas y pr�cticas de programaci�n', 
    'Los estudiantes crearon aplicaciones m�viles funcionales.', 'Se recomienda proporcionar m�s recursos para el desarrollo de aplicaciones reales.', 50, 30, 4, 2, 25, 5, 5, 5);
    

-- SEDE

INSERT INTO sede (id_sede, nombre, ubicacion, capacidad, curso_id_curso, entidad_id_entidad) 
VALUES (1, 'Sede Centro', 'Av. Principal 123, Ciudad X', 50, 1, 1);

INSERT INTO sede (id_sede, nombre, ubicacion, capacidad, curso_id_curso, entidad_id_entidad)
VALUES (2, 'Sede Norte', 'Calle 45, Zona Norte', 30, 2, 1);

INSERT INTO sede (id_sede, nombre, ubicacion, capacidad, curso_id_curso, entidad_id_entidad)
VALUES (3, 'Sede Sur', 'Calle 78, Zona Sur', 40, 3, 2);

INSERT INTO sede (id_sede, nombre, ubicacion, capacidad, curso_id_curso, entidad_id_entidad)
VALUES (4, 'Sede Este', 'Av. Libertad 80, Zona Este', 60, 4, 3);

INSERT INTO sede (id_sede, nombre, ubicacion, capacidad, curso_id_curso, entidad_id_entidad)
VALUES (5, 'Sede Oeste', 'Calle 12, Zona Oeste', 35, 5, 4);

INSERT INTO sede (id_sede, nombre, ubicacion, capacidad, curso_id_curso, entidad_id_entidad)
VALUES (6, 'Sede Universidad', 'Calle Universitaria 10, Campus', 80, 2, 5);

-- CERTIFICADO

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (1, 'Certificado de Programaci�n en Python', utl_raw.cast_to_raw('QR_CODE_DATA_1'), TO_DATE('2024-11-20', 'YYYY-MM-DD'), 
    'Certificaci�n en el curso de Programaci�n en Python, aprobado con un puntaje del 85%.', 1, 1, 1);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (2, 'Certificado en Desarrollo Web', utl_raw.cast_to_raw('QR_CODE_DATA_2'), TO_DATE('2024-11-25', 'YYYY-MM-DD'), 
    'Certificaci�n en el curso de Desarrollo Web, aprobado con un puntaje del 90%.', 2, 2, 2);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (3, 'Certificado en An�lisis de Datos', utl_raw.cast_to_raw('QR_CODE_DATA_3'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), 
    'Certificaci�n en el curso de An�lisis de Datos, aprobado con un puntaje del 88%.', 3, 3, 3);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (4, 'Certificado en Marketing Digital', utl_raw.cast_to_raw('QR_CODE_DATA_4'), TO_DATE('2024-09-30', 'YYYY-MM-DD'), 
    'Certificaci�n en el curso de Marketing Digital, aprobado con un puntaje del 92%.', 4, 4, 4);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (5, 'Certificado en Ciberseguridad', utl_raw.cast_to_raw('QR_CODE_DATA_5'), TO_DATE('2024-08-25', 'YYYY-MM-DD'), 
    'Certificaci�n en el curso de Ciberseguridad, aprobado con un puntaje del 85%.', 5, 5, 5);
-- SEDE_LICENCIA

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (1, 1);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (2, 2);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (3, 3);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (4, 4);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (5, 5);

-- SESION
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (1, 1, TO_DATE('2024-01-10', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (2, 1, TO_DATE('2024-01-11', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (3, 1, TO_DATE('2024-01-12', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (4, 2, TO_DATE('2024-02-15', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (5, 2, TO_DATE('2024-02-16', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (6, 2, TO_DATE('2024-02-17', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (7, 3, TO_DATE('2024-02-01', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (8, 3, TO_DATE('2024-02-03', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (9, 3, TO_DATE('2024-02-06', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (10, 4, TO_DATE('2024-02-21', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (11, 4, TO_DATE('2024-02-24', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (12, 4, TO_DATE('2024-02-27', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (13, 5, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (14, 5, TO_DATE('2024-05-03', 'YYYY-MM-DD'));
INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (15, 5, TO_DATE('2024-05-05', 'YYYY-MM-DD'));

-- SESION_PARTICIPANTE

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (1, 1, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (2, 1, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (3, 1, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (1, 2, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (2, 2, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (3, 2, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (1, 3, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (2, 3, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (3, 3, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (1, 4, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (2, 4, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (3, 4, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (1, 5, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (2, 5, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (3, 5, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (4, 1, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (5, 1, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (6, 1, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (4, 2, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (5, 2, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (6, 2, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (4, 3, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (5, 3, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (6, 3, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (4, 4, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (5, 4, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (6, 4, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (4, 5, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (5, 5, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (6, 5, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (7, 1, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (8, 1, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (9, 1, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (7, 2, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (8, 2, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (9, 2, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (7, 3, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (8, 3, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (9, 3, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (7, 4, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (8, 4, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (9, 4, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (7, 5, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (8, 5, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (9, 5, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (10, 1, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (11, 1, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (12, 1, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (10, 2, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (11, 2, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (12, 2, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (10, 3, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (11, 3, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (12, 3, 'N');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (10, 4, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (11, 4, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (12, 4, 'N');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (10, 5, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (11, 5, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (12, 5, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (13, 1, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (14, 1, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (15, 1, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (13, 2, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (14, 2, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (15, 2, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (13, 3, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (14, 3, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (15, 3, 'N');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (13, 4, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (14, 4, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (15, 4, 'N');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (13, 5, 'N');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (14, 5, 'S');
INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (15, 5, 'N');
