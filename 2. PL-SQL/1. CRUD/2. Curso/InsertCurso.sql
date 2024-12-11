
SET SERVEROUTPUT ON;
/
--SUBPROGRAMA DE INSERTAR CURSO
CREATE OR REPLACE PROCEDURE cc_registrar_curso(CURSO_ID NUMBER,CURSO_NOMBRE VARCHAR2, CURSO_MODALIDAD CHAR,
    PROPUESTA_ID NUMBER, COORD_ACAD_ID NUMBER, ASIST_ADMIN_ID NUMBER, CURSO_NRO_HORAS NUMBER, CURSO_CONTENIDO VARCHAR2)
IS
    EXISTE_CURS NUMBER;
    ERROR EXCEPTION;
BEGIN
    SAVEPOINT INICIO;
    IF(CURSO_ID IS NULL)THEN
        DBMS_OUTPUT.PUT_LINE('Error: El ID del curso es obligatorio. Por favor ingrese un nuevo ID.');
    ELSE
        IF(CURSO_NOMBRE IS NULL OR LENGTH(CURSO_NOMBRE)<1 OR LENGTH(CURSO_NOMBRE)>60 OR CURSO_NOMBRE LIKE ' %')THEN
            DBMS_OUTPUT.PUT_LINE('Error: El nombre del curso es obligatorio. Por favor, ingrese el nombre '||
            'nuevamente.');
        END IF;
        IF(CURSO_MODALIDAD IS NULL OR LENGTH(CURSO_MODALIDAD)!=1 OR CURSO_MODALIDAD LIKE ' %' OR CURSO_MODALIDAD NOT IN('P','V'))THEN
            DBMS_OUTPUT.PUT_LINE('Error: La modalidad del curso es obligatoria. Por favor, ingrese '||
            'nuevamente una de las siguientes modalidades: Virtual (V), Presencial (P).');
        END IF;
        IF(PROPUESTA_ID IS NULL OR PROPUESTA_ID<=0)THEN
            DBMS_OUTPUT.PUT_LINE('Error: La propuesta del curso es obligatoria. Por favor, ingrese la'|| 
            'propuesta nuevamente.');
        END IF;
        IF(COORD_ACAD_ID IS NULL OR COORD_ACAD_ID<=0)THEN
            DBMS_OUTPUT.PUT_LINE('Error: El coordinador academico del curso es obligatorio. Por favor, ingrese el'|| 
            'coordinador academico nuevamente.');
        END IF;
        IF(ASIST_ADMIN_ID IS NULL OR ASIST_ADMIN_ID<=0)THEN
            DBMS_OUTPUT.PUT_LINE('Error: El asistente administrativo del curso es obligatorio. Por favor, ingrese el'|| 
            'asistente administrativo nuevamente.');
        END IF;
        IF(CURSO_NRO_HORAS IS NULL OR CURSO_NRO_HORAS<=0)THEN
            DBMS_OUTPUT.PUT_LINE('Error: El numero de horas del curso es obligatorio. Por favor, ingrese el'|| 
            'numero de horas nuevamente.');
        END IF;
        IF(CURSO_CONTENIDO IS NULL OR LENGTH(CURSO_CONTENIDO)<1 OR LENGTH(CURSO_CONTENIDO)>200 OR CURSO_CONTENIDO LIKE ' %')THEN
            DBMS_OUTPUT.PUT_LINE('Error: El contenido del curso es obligatorio. Por favor, ingrese el contenido '||
            'nuevamente.');
        END IF;
        IF(CURSO_NOMBRE IS NOT NULL AND CURSO_MODALIDAD IS NOT NULL AND PROPUESTA_ID IS NOT NULL AND 
           COORD_ACAD_ID IS NOT NULL AND ASIST_ADMIN_ID IS NOT NULL AND CURSO_NRO_HORAS IS NOT NULL AND CURSO_CONTENIDO IS NOT NULL)THEN
           --Verificamos si ya existe el ID
           BEGIN
                SELECT id_curso INTO EXISTE_CURS FROM CURSO WHERE id_curso =CURSO_ID;
                IF(SQL%FOUND)THEN
                    DBMS_OUTPUT.PUT_LINE('Error: El ID del curso '||CURSO_ID||' ya existe. Por favor, ingrese un '||
                    'nuevo ID curso.');
                END IF;
           EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    --Verificamos si hay coincidencia del curso para revisar si ya existe
                    BEGIN
                        SELECT id_curso INTO EXISTE_CURS FROM CURSO WHERE nombre=CURSO_NOMBRE AND 
                        modalidad=CURSO_MODALIDAD AND propuesta_id_propuesta=PROPUESTA_ID AND coord_acad_id_coord_acad=COORD_ACAD_ID AND
                        asist_admin_id_asist_admin=ASIST_ADMIN_ID AND nro_horas=CURSO_NRO_HORAS AND contenido=CURSO_CONTENIDO;
                        IF(SQL%FOUND)THEN
                            DBMS_OUTPUT.PUT_LINE('Error: Los atributos del curso ya están registradas con el ID '||
                            'curso '||EXISTE_CURS||'. Porfavor, ingrese atributos para un curso que no esté '||
                            'registrado.');
                        END IF;
                    EXCEPTION
                        WHEN NO_DATA_FOUND THEN
                            DBMS_OUTPUT.PUT_LINE('Se registró correctamente al curso con el ID curso '||CURSO_ID
                            ||'.');
                            INSERT INTO CURSO(id_curso,nombre,modalidad,propuesta_id_propuesta,coord_acad_id_coord_acad,
                            asist_admin_id_asist_admin,nro_horas, contenido)VALUES(CURSO_ID,CURSO_NOMBRE,
                            CURSO_MODALIDAD,PROPUESTA_ID,COORD_ACAD_ID,ASIST_ADMIN_ID,CURSO_NRO_HORAS,CURSO_CONTENIDO);
                            COMMIT;
                    END;
           END;
        END IF;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK TO INICIO;
        DBMS_OUTPUT.PUT_LINE('Error al ejecutarse el subprograma registrar_curso '|| SQLERRM);
END cc_registrar_curso;
/
--BLOQUE INSERT PERSONA
DECLARE
    EXISTE NUMBER;
BEGIN
    cc_registrar_curso(7, 'Arquitectura de software', 'P', 3, 3, 3, 38, 'Conceptos de la arquitectura de software');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el bloque principal.');
END;