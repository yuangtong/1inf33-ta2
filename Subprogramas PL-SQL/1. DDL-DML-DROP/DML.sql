
-- LICENCIA

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento) 
VALUES (1, 'Licencia de Software XYZ', 'Licencia para el uso del software XYZ en entornos corporativos.',
    'Empresa ABC', 12, TO_DATE('2025-12-31', 'YYYY-MM-DD'));

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento) 
VALUES (2, 'Licencia de Desarrollo ABC', 'Licencia para el desarrollo de aplicaciones utilizando la plataforma ABC.', 
    'Desarrolladora DEF', 24, TO_DATE('2026-06-30', 'YYYY-MM-DD'));

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento)
VALUES (3, 'Licencia de Capacitación LMN', 'Licencia para acceder a los módulos de capacitación en línea de la empresa LMN.',
    'Institución GHI', 6, TO_DATE('2025-05-15', 'YYYY-MM-DD'));

INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento)
VALUES (4, 'Licencia Comercial RTP', 'Licencia para Software o hardware licenciado exclusivamente para integrarse en productos terminados.',
    'Empresa OFC', 12, TO_DATE('2025-11-07', 'YYYY-MM-DD'));
    
INSERT INTO licencia (id_licencia, nombre, describcion, titular, duracion, fecha_vencimiento)
VALUES (5, 'Licencia de Contenidos Educativos', 'Licencias abiertas que permiten el acceso libre a investigaciones y artículos científicos.',
    'Institución GFDL', 24, TO_DATE('2026-06-08', 'YYYY-MM-DD'));
    
-- MONEDA

INSERT INTO moneda (id_moneda, nombre) VALUES (1,'Soles');
INSERT INTO moneda (id_moneda, nombre) VALUES (2,'Dolares');
INSERT INTO moneda (id_moneda, nombre) VALUES (3,'Euros');
INSERT INTO moneda (id_moneda, nombre) VALUES (4,'Libras');
INSERT INTO moneda (id_moneda, nombre) VALUES (5,'Pesos');

-- TIPO

INSERT INTO tipo (id_tipo, nombre) VALUES (1, 'Organización No Gubernamental');
INSERT INTO tipo (id_tipo, nombre) VALUES (2, 'Empresa Estatal');
INSERT INTO tipo (id_tipo, nombre) VALUES (3, 'Microempresa');
INSERT INTO tipo (id_tipo, nombre) VALUES (4, 'Sociedad Anónima');
INSERT INTO tipo (id_tipo, nombre) VALUES (5, 'Empresa Privada');

-- TIPO_DOCUMENTO

INSERT INTO tipo_documento (id_tipo_documento, nombre) VALUES (1,'DNI');
INSERT INTO tipo_documento (id_tipo_documento, nombre) VALUES (2,'CARNET_EXTRANJERIA');
INSERT INTO tipo_documento (id_tipo_documento, nombre) VALUES (3,'PASAPORTE');

-- SECTOR

INSERT INTO sector (id_sector, nombre, descripcion) VALUES (101, 'Tecnología', 'Empresas que desarrollan software, hardware y servicios tecnológicos.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (102, 'Construcción', 'Organizaciones dedicadas a la edificación de infraestructura y obras civiles.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (103, 'Finanzas', 'Instituciones que ofrecen servicios bancarios, seguros y gestión de inversiones.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (104, 'Salud', 'Entidades que proveen servicios médicos, hospitalarios y productos farmacéuticos.');
INSERT INTO sector (id_sector, nombre, descripcion) VALUES (105, 'Educación', 'Instituciones que imparten formación académica y profesional.');


-- PERSONA

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (1, 'Juan', 'Pérez', 'juan.perez@example.com', 'D', 1, '1234567890', '555-1234');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (2, 'María', 'Gómez', 'maria.gomez@example.com', 'D', 2, '9876543210', '555-5678');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (3, 'Carlos', 'López', 'carlos.lopez@example.com', 'D', 1, '1122334455', '555-8765');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (4, 'Ana', 'Martínez', 'ana.martinez@example.com', 'D', 2, '6677889900', '555-1122');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (5, 'Lucía', 'Fernández', 'lucia.fernandez@example.com', 'D', 1, '9988776655', '555-3344');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (6, 'Pedro', 'Ramírez', 'pedro.ramirez@example.com', 'A', 3, '7766554433', '555-7788');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (7, 'Sofía', 'Hernández', 'sofia.hernandez@example.com', 'A', 1, '2233445566', '555-9911');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (8, 'Diego', 'García', 'diego.garcia@example.com', 'A', 2, '3344556677', '555-2233');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (9, 'Hugo', 'Reyes', 'hugo.reyes@example.com', 'A', 2, '1238456677', '555-3243');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (10, 'Guadalupe', 'Torres', 'guadalupe.torres@example.com', 'A', 2, '3283946677', '555-8763');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (11, 'Jorge', 'Mendoza', 'jorge.mendoza@example.com', 'C', 2, '3344529348', '555-2134');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (12, 'Joaquin', 'Estrada', 'joaquin.estrada@example.com', 'C', 2, '3244345557', '555-4132');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (13, 'Mariana', 'López', 'mariana.lopez@example.com', 'C', 1, '1029384756', '555-8921');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (14, 'Carlos', 'Mendoza', 'carlos.mendoza@example.com', 'C', 2, '2039485768', '555-6723');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (15, 'Lucía', 'Ramírez', 'lucia.ramirez@example.com', 'C', 3, '4213857890', '555-3948');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (16, 'Andrés', 'García', 'andres.garcia@example.com', 'P', 1, '8765432109', '555-2671');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (17, 'Sofía', 'Castro', 'sofia.castro@example.com', 'P', 2, '7584936201', '555-3417');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (18, 'Ricardo', 'Pérez', 'ricardo.perez@example.com', 'P', 3, '6543219870', '555-7824');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (19, 'Ana', 'Hernández', 'ana.hernandez@example.com', 'P', 1, '3948571026', '555-5193');

INSERT INTO persona (id_persona, nombre, apellidos, correo_electronico, ocupacion, tipo_doc_id_tipo_doc, numero_documento, telefono_contacto)
VALUES (20, 'Javier', 'Ortiz', 'javier.ortiz@example.com', 'P', 2, '9485761032', '555-1234');

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
VALUES (1, 'Inteligencia Artificial', 'Estudio avanzado de algoritmos de aprendizaje automático y procesamiento de lenguaje natural.',
    'Máster', 'Universidad Nacional', TO_DATE('2020-06-15', 'YYYY-MM-DD'), 'Certificado por publicaciones en conferencias internacionales.',1);

INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (2, 'Ciencia de Datos', 'Análisis y visualización de datos en grandes volúmenes utilizando herramientas modernas.','Diplomado', 'Instituto Tecnológico',
    TO_DATE('2021-11-20', 'YYYY-MM-DD'), 'Reconocido por proyectos destacados en la industria.',2);
    
INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (3, 'Ciberseguridad', 'Implementación de sistemas de seguridad para proteger redes e información.', 'Diplomado', 'Centro de Estudios Avanzados', 
    TO_DATE('2020-09-10', 'YYYY-MM-DD'), 'Reconocimiento por contribuciones a protocolos seguros.', 3);
    
INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (4, 'Big Data', 'Gestión de datos a gran escala utilizando tecnologías avanzadas.', 'Maestría', 'Instituto de Tecnología Digital', 
    TO_DATE('2022-02-14', 'YYYY-MM-DD'), 'Reconocimiento por proyectos de alto impacto en la industria.', 4);
    
INSERT INTO area_especializacion (id_area_esp, nombre, describcion, nivel_esp, institucion, fecha_otorgada, reconocimientos, docente_id_docente)
VALUES (5, 'Desarrollo Web', 'Creación de aplicaciones web modernas y funcionales.', 'Diplomado', 'Academia de Desarrollo Avanzado', 
    TO_DATE('2020-12-05', 'YYYY-MM-DD'), 'Mención honorífica por aplicaciones innovadoras.', 5);

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
VALUES (1, 'Carlos', 'Pérez', '12345678', 'Gerente General', 'c.perez@empresa.com', 1);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (2, 'Ana', 'Martínez', '23456789', 'Gerente de Finanzas', 'a.martinez@empresa.com', 2);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (3, 'Luis', 'González', '34567890', 'Gerente de Marketing', 'l.gonzalez@empresa.com', 3);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (4, 'Jose', 'Ramírez', '56789012', 'Gerente de Operaciones', 'c.ramirez@empresa.com', 4);

INSERT INTO gerente (id_gerente, nombres, apellidos, dni, cargo, correo_electronico, entidad_id_entidad)
VALUES (5, 'Lucía', 'Torres', '89012345', 'Gerente de Proyectos', 'l.torres@empresa.com', 5);


-- CURRICULUM_VITAE

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (1, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 5, 'Colegio de Ingenieros de Software', 'Inteligencia Artificial', 1, 1);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (2, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 3, 'Colegio de Analistas de Datos', 'Ciencia de Datos', 2, 2);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (3, TO_DATE('2023-11-15', 'YYYY-MM-DD'), 5, 'Colegio de Gestores de Proyectos', 'Ingeniería de Software', 3, 3);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (4, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 2, 'Asociación de Ciberseguridad Global', 'Ciberseguridad', 4, 4);

INSERT INTO curriculum_vitae (id_cv, fecha_creacion, cantidad_certificaciones, colegiatura, area_especializacion, docente_id_docente, asist_admin_id_asist_admin)
VALUES (5, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 4, 'Asociación de Big Data e Innovación', 'Big Data', 5, 5);

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
VALUES (1, 'Certificación en Machine Learning', 'Uso de algoritmos avanzados para el aprendizaje automático en grandes conjuntos de datos.', 1);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (2, 'Certificación en Big Data', 'Análisis y gestión de grandes volúmenes de datos utilizando herramientas como Hadoop y Spark.',2);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (3, 'Certificación en Visualización de Datos', 'Creación de dashboards interactivos y análisis visual con Power BI y Tableau.',3);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (4, 'Certificación en Estadística Avanzada', 'Métodos avanzados de inferencia estadística y modelado predictivo.',4);

INSERT INTO certificado_profesional (id_cert_prof, nombre, especializacion, curriculum_vitae_id_cv)
VALUES (5, 'Certificación en Inteligencia Artificial', 'Redes neuronales, aprendizaje supervisado y no supervisado.', 5);


-- PROPUESTA

INSERT INTO PROPUESTA (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (1, 'Propuesta para curso de desarrollo web para empleados', 'Manual de Desarrollo Web, Licencia de Software', 1, 15000.00, DATE '2024-10-10', 'Programación Web', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (2, 'Propuesta para taller de ciberseguridad empresarial', 'Guía de Seguridad en Redes, Acceso a Laboratorio Virtual', 2, 18000.00, DATE '2024-11-05', 'Ciberseguridad', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (3, 'Propuesta para capacitación en análisis de datos avanzados', 'Conjunto de Datos de Práctica, Licencia de Software', 1, 20000.00, DATE '2024-09-20', 'Análisis de Datos', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (4, 'Propuesta para curso de inteligencia artificial aplicada', 'Licencia de Herramientas de IA, Material Didáctico', 3, 25000.00, DATE '2024-08-15', 'Inteligencia Artificial', 1);

INSERT INTO propuesta (id_propuesta, descripcion, material_complementario, moneda_id_moneda, precio, fecha_envio, area_esp_docente, estado)
VALUES (5, 'Propuesta para proyecto de desarrollo de aplicaciones móviles', 'Documentación Técnica, Acceso a Recursos Online', 2, 30000.00, DATE '2024-07-30', 'Desarrollo Móvil', 1);

-- LICITACIONES

INSERT INTO LICITACION (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc,
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) VALUES
(1,'Licitacion 1',DATE '2024-10-14',DATE '2024-11-14','Desarrollo web',24,15,26712,'Programación Frontend y Backend','V',4,1,1);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (2, 'Licitacion 2', DATE '2024-09-10', DATE '2024-10-10', 'Ciberseguridad', 30, 20, 32000, 'Seguridad de Redes', 'P', 5, 2, 2);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (3, 'Licitacion 3', DATE '2024-08-01', DATE '2024-09-01', 'Big Data', 40, 25, 45000, 'Análisis de Datos Masivos', 'V', 3, 3, 1);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (4, 'Licitacion 4', DATE '2024-07-15', DATE '2024-08-15', 'Inteligencia Artificial', 35, 18, 38000, 'Aprendizaje Automático', 'P', 2, 4, 3);

INSERT INTO licitacion (id_licitacion, nombre, fecha_publicacion, fecha_limite, tematica_cursos, cantidad_horas, cantidad_participantes, monto_base, area_esp_doc, 
modalidad_curso, entidad_id_entidad, propuesta_id_propuesta, moneda_id_moneda) 
VALUES (5, 'Licitacion 5', DATE '2024-06-20', DATE '2024-07-20', 'Desarrollo de Aplicaciones Móviles', 28, 22, 30000, 'Programación en iOS y Android', 'V', 2, 5, 1);

-- CURSO
INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (1, 'Introducción a la Programación Web', 'P', 1, 1, 1, 40, 'Fundamentos de programación web.', 'ACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (2, 'Ciberseguridad Básica', 'V', 2, 2, 2, 30, 'Conceptos clave de seguridad informática y redes.', 'ACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (3, 'Análisis de Datos Avanzado', 'H', 3, 3, 3, 45, 'Técnicas de análisis predictivo y manejo de grandes volúmenes de datos.', 'ACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (4, 'Desarrollo de Aplicaciones Móviles', 'P', 4, 4, 4, 50, 'Creación de aplicaciones móviles con Android e iOS.', 'ACTIVO');

INSERT INTO curso (id_curso, nombre, modalidad, propuesta_id_propuesta, coord_acad_id_coord_acad, asist_admin_id_asist_admin, nro_horas, contenido, estado)
VALUES (5, 'Inteligencia Artificial Aplicada', 'V', 5, 5, 5, 35, 'Introducción a aprendizaje supervisado y redes neuronales.', 'INACTIVO');

-- PARTICIPANTE

INSERT INTO participante (id_participante, curso_id_curso, id_persona) VALUES (1, 1, 16);
INSERT INTO participante (id_participante, curso_id_curso, id_persona) VALUES (2, 2, 17);
INSERT INTO participante (id_participante, curso_id_curso, id_persona) VALUES (3, 3, 18);
INSERT INTO participante (id_participante, curso_id_curso, id_persona) VALUES (4, 4, 19);
INSERT INTO participante (id_participante, curso_id_curso, id_persona) VALUES (5, 5, 20);

-- CURSO_DOCENTE

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (1, 1, TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-02-15', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (1, 2, TO_DATE('2024-02-16', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (2, 2, TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-04-05', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (3, 1, TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-04-05', 'YYYY-MM-DD'));

INSERT INTO curso_docente (curso_id_curso, docente_id_docente, fecha_inicio, fecha_fin)
VALUES (3, 3, TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-03-20', 'YYYY-MM-DD'));

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
VALUES (1, 'Inglés', 'B2', 'Certificado por la Universidad de Cambridge', 1, 1);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (2, 'Francés', 'C1', 'Certificado DELF C1', 2, 2);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (3, 'Alemán', 'B1', 'Goethe-Zertifikat B1', 3, 3);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (4, 'Italiano', 'A2', 'Certificado PLIDA A2', 4, 4);

INSERT INTO idioma (id_idioma, nombre, grado, certificado, curso_id_curso, curriculum_vitae_id_cv)
VALUES (5, 'Portugués', 'B2', 'Certificado CELPE-Bras', 5, 5);

-- INFORME_FINAL

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (1, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'Introducción a la programación, estructuras de datos', 'Clases teóricas y ejercicios prácticos', 
    'Los estudiantes dominaron los conceptos básicos de programación.', 'Se recomienda más tiempo de práctica en programación.', 40, 25, 5, 2, 25, 1, 1, 1);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (2, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 'Bases de datos, SQL avanzado', 'Clases magistrales, laboratorio de consultas', 
    'Los participantes adquirieron habilidades en manejo avanzado de bases de datos.', 'Se sugiere incluir más ejercicios prácticos con SQL.', 35, 20, 3, 1, 15, 2, 2, 2);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (3, TO_DATE('2024-10-20', 'YYYY-MM-DD'), 'Ciberseguridad, redes de protección', 'Simulaciones en laboratorio y estudios de casos', 
    'Los estudiantes comprendieron los fundamentos de la ciberseguridad y su aplicación práctica.', 'Recomendaríamos más prácticas en ambientes controlados de redes.', 45, 22, 4, 3, 18, 3, 3, 3);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (4, TO_DATE('2024-09-25', 'YYYY-MM-DD'), 'Programación en Python, análisis de datos', 'Clases prácticas y estudios de proyectos', 
    'Los alumnos adquirieron competencia en análisis de datos con Python.', 'Aumentar las horas dedicadas al análisis de datos real.', 40, 28, 2, 1, 20, 4, 4, 4);

INSERT INTO informe_final (id_informe_final, fecha_creacion, temas_trabajados, metodologia_utilizada, conclusiones, sugerencias, horas_dictadas,
    numero_aprobados, numero_desaprobados, numero_retirados, numero_cert_emit, coord_acad_id_coord_acad, curso_id_curso, gerente_id_gerente)
VALUES (5, TO_DATE('2024-08-10', 'YYYY-MM-DD'), 'Desarrollo de aplicaciones móviles', 'Clases teóricas y prácticas de programación', 
    'Los estudiantes crearon aplicaciones móviles funcionales.', 'Se recomienda proporcionar más recursos para el desarrollo de aplicaciones reales.', 50, 30, 4, 2, 25, 5, 5, 5);
    

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
VALUES (1, 'Certificado de Programación en Python', utl_raw.cast_to_raw('QR_CODE_DATA_1'), TO_DATE('2024-11-20', 'YYYY-MM-DD'), 
    'Certificación en el curso de Programación en Python, aprobado con un puntaje del 85%.', 1, 1, 1);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (2, 'Certificado en Desarrollo Web', utl_raw.cast_to_raw('QR_CODE_DATA_2'), TO_DATE('2024-11-25', 'YYYY-MM-DD'), 
    'Certificación en el curso de Desarrollo Web, aprobado con un puntaje del 90%.', 2, 2, 2);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (3, 'Certificado en Análisis de Datos', utl_raw.cast_to_raw('QR_CODE_DATA_3'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), 
    'Certificación en el curso de Análisis de Datos, aprobado con un puntaje del 88%.', 3, 3, 3);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (4, 'Certificado en Marketing Digital', utl_raw.cast_to_raw('QR_CODE_DATA_4'), TO_DATE('2024-09-30', 'YYYY-MM-DD'), 
    'Certificación en el curso de Marketing Digital, aprobado con un puntaje del 92%.', 4, 4, 4);

INSERT INTO certificado (id_certificado, nombre, codigo_qr, fecha_emision, descripcion, 
    participante_id_participante, participante_curso_id_curso, gerente_id_gerente) 
VALUES (5, 'Certificado en Ciberseguridad', utl_raw.cast_to_raw('QR_CODE_DATA_5'), TO_DATE('2024-08-25', 'YYYY-MM-DD'), 
    'Certificación en el curso de Ciberseguridad, aprobado con un puntaje del 85%.', 5, 5, 5);
-- SEDE_LICENCIA

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (1, 1);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (2, 2);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (3, 3);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (4, 4);

INSERT INTO sede_licencia (sede_id_sede, licencia_id_licencia) VALUES (5, 5);

-- SESION

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (1, 1, TO_DATE('2024-11-15', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (2, 2, TO_DATE('2024-11-22', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (3, 3, TO_DATE('2024-11-18', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (4, 4, TO_DATE('2024-11-25', 'YYYY-MM-DD'));

INSERT INTO sesion (id_sesion, curso_id_curso, fecha_sesion) VALUES (5, 5, TO_DATE('2024-12-01', 'YYYY-MM-DD'));

-- SESION_PARTICIPANTE

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (1, 1, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (2, 1, 'N');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (3, 2, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (4, 3, 'S');

INSERT INTO sesion_participante (sesion_id_sesion, participante_id_participante, asistencia) VALUES (5, 4, 'N');