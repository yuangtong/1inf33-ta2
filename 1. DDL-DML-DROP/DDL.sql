-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-12-04 19:47:45 PET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE area_especializacion (
    id_area_esp        NUMBER(10) NOT NULL,
    nombre             VARCHAR2(60 BYTE) NOT NULL,
    describcion        VARCHAR2(200) NOT NULL,
    nivel_esp          VARCHAR2(50) NOT NULL,
    institucion        VARCHAR2(60 BYTE) NOT NULL,
    fecha_otorgada     DATE NOT NULL,
    reconocimientos    VARCHAR2(200) NOT NULL,
    docente_id_docente NUMBER NOT NULL
);

ALTER TABLE area_especializacion ADD CONSTRAINT area_especializacion_pk PRIMARY KEY ( id_area_esp );

CREATE TABLE asistente_administrativo (
    id_asistente_admin NUMBER NOT NULL,
    id_persona         NUMBER NOT NULL
);

ALTER TABLE asistente_administrativo ADD CONSTRAINT asistente_administrativo_pk PRIMARY KEY ( id_asistente_admin );

CREATE TABLE certificado (
    id_certificado               NUMBER NOT NULL,
    nombre                       VARCHAR2(60 BYTE) NOT NULL,
    codigo_qr                    BLOB NOT NULL,
    fecha_emision                DATE NOT NULL,
    descripcion                  VARCHAR2(300 BYTE) NOT NULL,
    participante_id_participante NUMBER NOT NULL,
    participante_curso_id_curso  NUMBER NOT NULL,
    gerente_id_gerente           NUMBER NOT NULL
);

CREATE UNIQUE INDEX certificado__idx ON
    certificado (
        participante_id_participante
    ASC,
        participante_curso_id_curso
    ASC );

ALTER TABLE certificado ADD CONSTRAINT certificado_pk PRIMARY KEY ( id_certificado );

CREATE TABLE certificado_profesional (
    id_cert_prof           NUMBER(10) NOT NULL,
    nombre                 VARCHAR2(60 BYTE) NOT NULL,
    especializacion        VARCHAR2(200) NOT NULL,
    curriculum_vitae_id_cv NUMBER NOT NULL
);

ALTER TABLE certificado_profesional ADD CONSTRAINT certificado_profesional_pk PRIMARY KEY ( id_cert_prof );

CREATE TABLE coordinador_academico (
    id_coord_acad NUMBER NOT NULL,
    id_persona    NUMBER NOT NULL
);

ALTER TABLE coordinador_academico ADD CONSTRAINT coordinador_academico_pk PRIMARY KEY ( id_coord_acad );

CREATE TABLE curriculum_vitae (
    id_cv                                       NUMBER NOT NULL,
    fecha_creacion                              DATE NOT NULL,
    cantidad_certificaciones                    NUMBER(3) NOT NULL,
    colegiatura                                 VARCHAR2(150) NOT NULL,
    area_especializacion                        VARCHAR2(200 BYTE) NOT NULL,
    docente_id_docente                          NUMBER NOT NULL, 
    asist_admin_id_asist_admin                  NUMBER NOT NULL
);

CREATE UNIQUE INDEX curriculum_vitae__idxv1 ON
    curriculum_vitae (
        id_cv
    ASC );
    
CREATE UNIQUE INDEX curriculum_vitae__idxv1_2 ON
    curriculum_vitae (
        docente_id_docente
    ASC );

ALTER TABLE curriculum_vitae ADD CONSTRAINT curriculum_vitae_pk PRIMARY KEY ( id_cv );

CREATE TABLE curso (
    id_curso                                    NUMBER NOT NULL,
    nombre                                      VARCHAR2(60 BYTE) NOT NULL,
    modalidad                                   CHAR(1 BYTE) NOT NULL,
    propuesta_id_propuesta                      NUMBER NOT NULL, 
    coord_acad_id_coord_acad                    NUMBER NOT NULL,
    asist_admin_id_asist_admin                  NUMBER NOT NULL,
    nro_horas                                   NUMBER NOT NULL,
    contenido                                   VARCHAR2(200) NOT NULL,
    estado                                      VARCHAR2(10 BYTE) NOT NULL -- Nuevo atributo para marcar si el curso est� activo o inactivo
);

CREATE UNIQUE INDEX curso__idxv1 ON
    curso (
        propuesta_id_propuesta
    ASC );

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE curso_docente (
    curso_id_curso     NUMBER NOT NULL,
    docente_id_docente NUMBER NOT NULL,
    fecha_inicio       DATE NOT NULL,
    fecha_fin          DATE NOT NULL
);

ALTER TABLE curso_docente ADD CONSTRAINT relation_35_pk PRIMARY KEY ( curso_id_curso,
                                                                      docente_id_docente );

CREATE TABLE docente (
    id_docente             NUMBER NOT NULL,
    link_linkedin          VARCHAR2(300 BYTE) NOT NULL,
    id_persona             NUMBER NOT NULL
);

ALTER TABLE docente ADD CONSTRAINT docente_pk PRIMARY KEY ( id_docente );

CREATE TABLE entidad (
    id_entidad         NUMBER NOT NULL,
    ruc                NUMBER(11) NOT NULL,
    nombre             VARCHAR2(100 BYTE) NOT NULL,
    correo_electronico VARCHAR2(60 BYTE) NOT NULL,
    direccion_empresa  VARCHAR2(150 BYTE) NOT NULL,
    numero_contacto    VARCHAR2(50 BYTE) NOT NULL,
    tipo_id_tipo       NUMBER(2) NOT NULL,
    sector_id_sector   NUMBER(4) NOT NULL
);

ALTER TABLE entidad ADD CONSTRAINT entidad_pk PRIMARY KEY ( id_entidad );

CREATE TABLE experiencia_laboral (
    id_exp_laboral          NUMBER NOT NULL,
    fecha_inicio            DATE NOT NULL,
    fecha_culmino           DATE NOT NULL,
    cargo                   VARCHAR2(30 BYTE) NOT NULL,
    correo_referencia       VARCHAR2(60 BYTE) NOT NULL,
    curriculum_vitae_id_cv1 NUMBER NOT NULL
);

CREATE UNIQUE INDEX experiencia_laboral__idx ON
    experiencia_laboral (
        id_exp_laboral
    ASC );

ALTER TABLE experiencia_laboral ADD CONSTRAINT experiencia_laboral_pk PRIMARY KEY ( id_exp_laboral );

CREATE TABLE gerente (
    id_gerente         NUMBER NOT NULL,
    nombres            VARCHAR2(60 BYTE) NOT NULL,
    apellidos          VARCHAR2(60 BYTE) NOT NULL,
    dni                VARCHAR2(8 BYTE) NOT NULL,
    cargo              VARCHAR2(60 BYTE) NOT NULL,
    correo_electronico VARCHAR2(30 BYTE) NOT NULL,
    entidad_id_entidad NUMBER NOT NULL
);

ALTER TABLE gerente ADD CONSTRAINT gerente_pk PRIMARY KEY ( id_gerente );

CREATE TABLE idioma (
    id_idioma              NUMBER NOT NULL,
    nombre                 VARCHAR2(60 BYTE) NOT NULL,
    grado                  VARCHAR2(3 BYTE) NOT NULL,
    certificado            VARCHAR2(200 BYTE) NOT NULL,
    curso_id_curso         NUMBER NOT NULL,
    curriculum_vitae_id_cv NUMBER NOT NULL
);

ALTER TABLE idioma ADD CONSTRAINT idioma_pk PRIMARY KEY ( id_idioma );

CREATE TABLE informe_final (
    id_informe_final                    NUMBER NOT NULL,
    fecha_creacion                      DATE NOT NULL,
    temas_trabajados                    VARCHAR2(200 BYTE) NOT NULL,
    metodologia_utilizada               VARCHAR2(200 BYTE) NOT NULL,
    conclusiones                        VARCHAR2(200 BYTE) NOT NULL,
    sugerencias                         VARCHAR2(300) NOT NULL,
    horas_dictadas                      NUMBER(3) NOT NULL,
    numero_aprobados                    NUMBER(5) NOT NULL,
    numero_desaprobados                 NUMBER(5) NOT NULL,
    numero_retirados                    NUMBER(5) NOT NULL,
    numero_cert_emit                    NUMBER(4) NOT NULL, 
    coord_acad_id_coord_acad            NUMBER NOT NULL,
    curso_id_curso                      NUMBER NOT NULL,
    gerente_id_gerente                  NUMBER NOT NULL
);

CREATE UNIQUE INDEX informe_final__idx ON
    informe_final (
        curso_id_curso
    ASC );

ALTER TABLE informe_final ADD CONSTRAINT informe_final_pk PRIMARY KEY ( id_informe_final );

CREATE TABLE licencia (
    id_licencia       NUMBER(10) NOT NULL,
    nombre            VARCHAR2(60 BYTE) NOT NULL,
    describcion       VARCHAR2(200 BYTE) NOT NULL,
    titular           VARCHAR2(60 BYTE) NOT NULL,
    duracion          NUMBER(5) NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

ALTER TABLE licencia ADD CONSTRAINT licencia_pk PRIMARY KEY ( id_licencia );

CREATE TABLE licitacion (
    id_licitacion          NUMBER NOT NULL,
    nombre                 VARCHAR2(60 BYTE) NOT NULL,
    fecha_publicacion      DATE NOT NULL,
    fecha_limite           DATE NOT NULL,
    tematica_cursos        VARCHAR2(60 BYTE) NOT NULL,
    cantidad_horas         NUMBER(4) NOT NULL,
    cantidad_participantes NUMBER(4) NOT NULL,
    monto_base             NUMBER(10, 2) NOT NULL,
    area_esp_doc           VARCHAR2(100 BYTE) NOT NULL,
    modalidad_curso        CHAR(1 BYTE) NOT NULL,
    entidad_id_entidad     NUMBER NOT NULL,
    propuesta_id_propuesta NUMBER NOT NULL,
    moneda_id_moneda       NUMBER NOT NULL
);

CREATE UNIQUE INDEX licitacion__idx ON
    licitacion (
        propuesta_id_propuesta
    ASC );

ALTER TABLE licitacion ADD CONSTRAINT licitacion_pk PRIMARY KEY ( id_licitacion );

CREATE TABLE moneda (
    id_moneda NUMBER NOT NULL,
    nombre    VARCHAR2(50 BYTE) NOT NULL
);

ALTER TABLE moneda ADD CONSTRAINT moneda_pk PRIMARY KEY ( id_moneda );

CREATE TABLE participante (
    id_participante NUMBER NOT NULL,
    curso_id_curso  NUMBER NOT NULL,
    id_persona      NUMBER NOT NULL
);

ALTER TABLE participante ADD CONSTRAINT participante_pk PRIMARY KEY ( id_participante );

ALTER TABLE participante ADD CONSTRAINT participante_pkv1 UNIQUE ( id_participante,
                                                                   curso_id_curso );

CREATE TABLE persona (
    id_persona         NUMBER NOT NULL,
    nombre             VARCHAR2(60 BYTE) NOT NULL,
    apellidos          VARCHAR2(60 BYTE) NOT NULL,
    correo_electronico VARCHAR2(60 BYTE) NOT NULL,
    ocupacion          CHAR(1 BYTE) NOT NULL,
    tipo_doc_id_tipo_doc NUMBER NOT NULL,
    numero_documento   VARCHAR2(20 BYTE) NOT NULL,
    telefono_contacto  VARCHAR2(50 BYTE) NOT NULL,
    estado             VARCHAR2(10 BYTE) NOT NULL
);

ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY ( id_persona );

CREATE TABLE propuesta (
    id_propuesta             NUMBER NOT NULL,
    descripcion              VARCHAR2(200 BYTE) NOT NULL,
    material_complementario  VARCHAR2(100 BYTE) NOT NULL,
    moneda_id_moneda         NUMBER NOT NULL,
    precio                   NUMBER(10, 2) NOT NULL,
    fecha_envio              DATE NOT NULL,
    area_esp_docente         VARCHAR2(60 BYTE) NOT NULL,
    estado                   SMALLINT NOT NULL
);

ALTER TABLE propuesta ADD CONSTRAINT propuesta_pk PRIMARY KEY ( id_propuesta );

CREATE TABLE sector (
    id_sector   NUMBER(4) NOT NULL,
    nombre      VARCHAR2(60 BYTE) NOT NULL,
    descripcion VARCHAR2(200 BYTE) NOT NULL
);

ALTER TABLE sector ADD CONSTRAINT sector_pk PRIMARY KEY ( id_sector );

CREATE TABLE sede (
    id_sede            NUMBER NOT NULL,
    nombre             VARCHAR2(60 BYTE) NOT NULL,
    ubicacion          VARCHAR2(100 BYTE) NOT NULL,
    capacidad          NUMBER NOT NULL,
    curso_id_curso     NUMBER NOT NULL,
    entidad_id_entidad NUMBER NOT NULL
);

ALTER TABLE sede ADD CONSTRAINT sede_pk_1 PRIMARY KEY ( id_sede );

CREATE TABLE sede_licencia (
    sede_id_sede         NUMBER NOT NULL,
    licencia_id_licencia NUMBER(10) NOT NULL
);

ALTER TABLE sede_licencia ADD CONSTRAINT sede_licencia_pk PRIMARY KEY ( sede_id_sede,
                                                                        licencia_id_licencia );

CREATE TABLE sesion (
    id_sesion      NUMBER NOT NULL,
    curso_id_curso NUMBER NOT NULL,
    fecha_sesion   DATE NOT NULL
);

ALTER TABLE sesion ADD CONSTRAINT sesion_pk PRIMARY KEY ( id_sesion );

CREATE TABLE sesion_participante (
    sesion_id_sesion             NUMBER NOT NULL,
    participante_id_participante NUMBER NOT NULL,
    asistencia                   CHAR(1) NOT NULL,
    opinion                      VARCHAR2(20 BYTE) -- Campo para registrar la opinión del participante sobre el curso
);


ALTER TABLE sesion_participante ADD CONSTRAINT sesion_participante_pk PRIMARY KEY ( sesion_id_sesion,
                                                                                    participante_id_participante );

CREATE TABLE tipo (
    id_tipo NUMBER(2) NOT NULL,
    nombre  VARCHAR2(50 BYTE) NOT NULL
);

ALTER TABLE tipo ADD CONSTRAINT tipo_pk PRIMARY KEY ( id_tipo );

CREATE TABLE tipo_documento (
    id_tipo_documento NUMBER NOT NULL,
    nombre            VARCHAR2(50 BYTE)
);

ALTER TABLE tipo_documento ADD CONSTRAINT tipo_documento_pk PRIMARY KEY ( id_tipo_documento );

ALTER TABLE area_especializacion
    ADD CONSTRAINT area_espec_docente_fk FOREIGN KEY ( docente_id_docente )
        REFERENCES docente ( id_docente );


ALTER TABLE asistente_administrativo
    ADD CONSTRAINT asist_admin_persona_fk FOREIGN KEY ( id_persona )
        REFERENCES persona ( id_persona );

ALTER TABLE certificado
    ADD CONSTRAINT certificado_gerente_fk FOREIGN KEY ( gerente_id_gerente )
        REFERENCES gerente ( id_gerente );

ALTER TABLE certificado
    ADD CONSTRAINT certificado_participante_fk FOREIGN KEY ( participante_id_participante,
                                                             participante_curso_id_curso )
        REFERENCES participante ( id_participante,
                                  curso_id_curso );
 
ALTER TABLE certificado_profesional
    ADD CONSTRAINT certif_prof_curric_vitae_fk FOREIGN KEY ( curriculum_vitae_id_cv )
        REFERENCES curriculum_vitae ( id_cv );

ALTER TABLE coordinador_academico
    ADD CONSTRAINT coord_acad_persona_fk FOREIGN KEY ( id_persona )
        REFERENCES persona ( id_persona );

ALTER TABLE curriculum_vitae
    ADD CONSTRAINT curric_vitae_asist_admin_fk FOREIGN KEY ( asist_admin_id_asist_admin )
        REFERENCES asistente_administrativo ( id_asistente_admin );

ALTER TABLE curriculum_vitae
    ADD CONSTRAINT curriculum_vitae_docente_fk FOREIGN KEY ( docente_id_docente )
        REFERENCES docente ( id_docente );

ALTER TABLE curso
    ADD CONSTRAINT curso_asist_admin_fk FOREIGN KEY ( asist_admin_id_asist_admin )
        REFERENCES asistente_administrativo ( id_asistente_admin );

ALTER TABLE curso
    ADD CONSTRAINT curso_coord_acad_fk FOREIGN KEY ( coord_acad_id_coord_acad )
        REFERENCES coordinador_academico ( id_coord_acad );

ALTER TABLE curso
    ADD CONSTRAINT curso_propuesta_fk FOREIGN KEY ( propuesta_id_propuesta )
        REFERENCES propuesta ( id_propuesta );

ALTER TABLE docente
    ADD CONSTRAINT docente_persona_fk FOREIGN KEY ( id_persona )
        REFERENCES persona ( id_persona );

ALTER TABLE entidad
    ADD CONSTRAINT entidad_sector_fk FOREIGN KEY ( sector_id_sector )
        REFERENCES sector ( id_sector );

ALTER TABLE entidad
    ADD CONSTRAINT entidad_tipo_fk FOREIGN KEY ( tipo_id_tipo )
        REFERENCES tipo ( id_tipo );

ALTER TABLE experiencia_laboral
    ADD CONSTRAINT exper_laboral_curric_vitae_fk FOREIGN KEY ( curriculum_vitae_id_cv1 )
        REFERENCES curriculum_vitae ( id_cv );

ALTER TABLE gerente
    ADD CONSTRAINT gerente_entidad_fk FOREIGN KEY ( entidad_id_entidad )
        REFERENCES entidad ( id_entidad );

ALTER TABLE idioma
    ADD CONSTRAINT idioma_curriculum_vitae_fk FOREIGN KEY ( curriculum_vitae_id_cv )
        REFERENCES curriculum_vitae ( id_cv );

ALTER TABLE idioma
    ADD CONSTRAINT idioma_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE informe_final
    ADD CONSTRAINT informe_final_coord_acad_fk FOREIGN KEY ( coord_acad_id_coord_acad )
        REFERENCES coordinador_academico ( id_coord_acad );

ALTER TABLE informe_final
    ADD CONSTRAINT informe_final_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE informe_final
    ADD CONSTRAINT informe_final_gerente_fk FOREIGN KEY ( gerente_id_gerente )
        REFERENCES gerente ( id_gerente );

ALTER TABLE licitacion
    ADD CONSTRAINT licitacion_entidad_fk FOREIGN KEY ( entidad_id_entidad )
        REFERENCES entidad ( id_entidad );

ALTER TABLE licitacion
    ADD CONSTRAINT licitacion_moneda_fk FOREIGN KEY ( moneda_id_moneda )
        REFERENCES moneda ( id_moneda );

ALTER TABLE licitacion
    ADD CONSTRAINT licitacion_propuesta_fk FOREIGN KEY ( propuesta_id_propuesta )
        REFERENCES propuesta ( id_propuesta );

ALTER TABLE propuesta
    ADD CONSTRAINT propuesta_moneda_fk FOREIGN KEY ( moneda_id_moneda )
        REFERENCES moneda ( id_moneda );
    
ALTER TABLE participante
    ADD CONSTRAINT participante_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );
        
ALTER TABLE persona
    ADD CONSTRAINT persona_tipo_documento_fk FOREIGN KEY ( tipo_doc_id_tipo_doc )
        REFERENCES tipo_documento ( id_tipo_documento );

ALTER TABLE participante
    ADD CONSTRAINT participante_persona_fk FOREIGN KEY ( id_persona )
        REFERENCES persona ( id_persona );

ALTER TABLE curso_docente
    ADD CONSTRAINT relation_35_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE curso_docente
    ADD CONSTRAINT relation_35_docente_fk FOREIGN KEY ( docente_id_docente )
        REFERENCES docente ( id_docente );

ALTER TABLE sede_licencia
    ADD CONSTRAINT sede_licencia_licencia_fk FOREIGN KEY ( licencia_id_licencia )
        REFERENCES licencia ( id_licencia );

ALTER TABLE sede_licencia
    ADD CONSTRAINT sede_licencia_sede_fk FOREIGN KEY ( sede_id_sede )
        REFERENCES sede ( id_sede );

ALTER TABLE sesion
    ADD CONSTRAINT sesion_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE sesion_participante
    ADD CONSTRAINT sesion_partic_partic_fk FOREIGN KEY ( participante_id_participante )
        REFERENCES participante ( id_participante );

ALTER TABLE sesion_participante
    ADD CONSTRAINT sesion_partic_sesion_fk FOREIGN KEY ( sesion_id_sesion )
        REFERENCES sesion ( id_sesion );

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            25
-- CREATE INDEX                             9
-- ALTER TABLE                             66
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0

-- ERRORS                                   0
-- WARNINGS                                 0
