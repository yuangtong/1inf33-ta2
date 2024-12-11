SET SERVEROUTPUT ON;
/
--SUBPROGRAMA INSERT PERSONA
CREATE OR REPLACE PROCEDURE cc_registrar_persona(
    PERS_ID NUMBER,
    PERS_NOMBRE VARCHAR2,
    PERS_APELLDOS VARCHAR2,
    PERS_CORREO VARCHAR2,
    PERS_OCUP CHAR,
    TIPO_DOC_ID NUMBER,
    PERS_NUM_DOC VARCHAR2,
    PERS_TELF VARCHAR2)
IS
    EXISTE_PERS NUMBER;
    ERROR EXCEPTION;
BEGIN
    SAVEPOINT INICIO;
    IF(PERS_ID IS NULL)THEN
        DBMS_OUTPUT.PUT_LINE('� Error: El ID de la persona es obligatoria. '||
                             'Por favor ingrese un nuevo ID.');
    ELSE
        IF(PERS_NOMBRE IS NULL OR LENGTH(PERS_NOMBRE)<1 OR
           LENGTH(PERS_NOMBRE)>60 OR PERS_NOMBRE LIKE ' %')THEN
              DBMS_OUTPUT.PUT_LINE('� Error: El nombre de la persona es '||
                                   'obligatorio. '||
                                   'Por favor, ingrese el nombre ');
              DBMS_OUTPUT.PUT_LINE('nuevamente.');
        END IF;
        IF(PERS_APELLDOS IS NULL OR LENGTH(PERS_APELLDOS)<1 OR
           LENGTH(PERS_APELLDOS)>60 OR PERS_APELLDOS LIKE ' %')THEN
              DBMS_OUTPUT.PUT_LINE('� Error: Los apellidos de la persona son '||
                                   'obligatorios.');
              DBMS_OUTPUT.PUT_LINE('Por favor ,ingrese los '||
                                   'apellidos nuevamente.');
        END IF;
        IF(PERS_CORREO IS NULL OR LENGTH(PERS_CORREO)<5 OR
           LENGTH(PERS_CORREO)>60 OR PERS_CORREO LIKE ' %')THEN
             DBMS_OUTPUT.PUT_LINE('� Error: El correo de la persona es '||
                                  'obligatorio.');
             DBMS_OUTPUT.PUT_LINE('Por favor, ingrese un correo'||
                                  ' electr�nico nuevamente con m�s de 5 '||
                                  'caracteres.');
        END IF;
        IF(PERS_OCUP IS NULL OR LENGTH(PERS_OCUP)!=1 OR PERS_OCUP LIKE ' %' OR
           PERS_OCUP NOT IN('A','D','P','C'))THEN
              DBMS_OUTPUT.PUT_LINE('� Error: La ocupaci�n o cargo de la persona'||
                                   ' es obligatoria.');
              DBMS_OUTPUT.PUT_LINE('Por favor, ingrese '||
                                   'nuevamente una de las siguientes '||
                                   'ocupaciones:');
              DBMS_OUTPUT.PUT_LINE('Docente(D), Participante(P), '||
                                   'Coordinador Acad�mico(C),'||
                                   ' Asistente Administrativo(A).');
        END IF;
        IF(TIPO_DOC_ID IS NULL OR TIPO_DOC_ID<=0)THEN
            DBMS_OUTPUT.PUT_LINE('� Error: El tipo de documento de la persona '||
                                 'es obligatorio.');
            DBMS_OUTPUT.PUT_LINE('Por favor, ingrese el '||
                                 'tipo de documento nuevamente.');
        END IF;
        IF(PERS_NUM_DOC IS NULL OR LENGTH(PERS_NUM_DOC)<5 OR
           LENGTH(PERS_NUM_DOC)>20 OR PERS_NUM_DOC LIKE ' %')THEN
              DBMS_OUTPUT.PUT_LINE('� Error: El n�mero de documento de la '||
                                   'persona es obligatorio.');
              DBMS_OUTPUT.PUT_LINE('Por favor, '||
                                   'ingrese el n�mero de documento '||
                                   'nuevamente.');
        END IF;
        IF(PERS_TELF IS NULL OR LENGTH(PERS_TELF)<3 OR LENGTH(PERS_TELF)>50 OR
           PERS_TELF LIKE ' %')THEN
              DBMS_OUTPUT.PUT_LINE('� Error: El tel�fono de la persona es '||
                                   'obligatorio.');
              DBMS_OUTPUT.PUT_LINE('Por favor, ingrese el '||
                                   'tel�fono nuevamente.');
        END IF;
        IF(PERS_NOMBRE IS NOT NULL AND PERS_APELLDOS IS NOT NULL AND
           PERS_CORREO IS NOT NULL AND PERS_OCUP IS NOT NULL AND
           TIPO_DOC_ID IS NOT NULL AND PERS_NUM_DOC IS NOT NULL AND
           PERS_TELF IS NOT NULL)THEN
           --Verificamos si ya existe el ID
           BEGIN
                SELECT id_persona INTO EXISTE_PERS FROM PERSONA
                WHERE id_persona=PERS_ID;
                IF(SQL%FOUND)THEN
                   DBMS_OUTPUT.PUT_LINE('� Error: El ID de la persona '||PERS_ID
                                        ||' ya existe. Por favor, ingrese un'||
                                        ' nuevo ID persona.');
                END IF;
           EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    --Verificamos si hay coincidencia con otra persona
                    BEGIN
                        SELECT id_persona INTO EXISTE_PERS FROM PERSONA
                        WHERE UPPER(nombre)=UPPER(PERS_NOMBRE) AND
                        UPPER(apellidos)=UPPER(PERS_APELLDOS) AND
                        UPPER(tipo_doc_id_tipo_doc)=UPPER(TIPO_DOC_ID)
                        AND UPPER(numero_documento)=UPPER(PERS_NUM_DOC);
                        IF(SQL%FOUND)THEN
                            DBMS_OUTPUT.PUT_LINE('� Error: La persona '||
                                                 UPPER(PERS_NOMBRE)||' '||
                                                 UPPER(PERS_APELLDOS)||' con '||
                                                 'el tipo y n�mero de '||
                                                 'documento ingresado');
                            DBMS_OUTPUT.PUT_LINE('ya est�'||
                                                 ' registrada con el ID '||
                                                 'persona '||EXISTE_PERS||'. ');
                            DBMS_OUTPUT.PUT_LINE('Porfavor, ingrese los '||
                                                 'datos para una persona que '||
                                                 'no est� registrada.');
                        END IF;
                    EXCEPTION
                        WHEN NO_DATA_FOUND THEN
                          DECLARE
                                EXISTE_CORREO NUMBER;
                                EXISTE_TELEFONO_CONTACTO NUMBER;
                          BEGIN
                            SELECT COUNT(*)INTO EXISTE_CORREO
                            FROM PERSONA
                            WHERE UPPER(correo_electronico)=UPPER(PERS_CORREO);
                            IF (EXISTE_CORREO=1) THEN
                                    DBMS_OUTPUT.PUT_LINE('� Error: El correo '||
                                                         PERS_CORREO||' ya '||
                                                         'est� en uso.');
                                    DBMS_OUTPUT.PUT_LINE('Por favor, ingrese '||
                                                         'un nuevo correo '||
                                                         'electr�nico.');
                            END IF;
                            SELECT COUNT(*)INTO EXISTE_TELEFONO_CONTACTO
                            FROM PERSONA
                            WHERE UPPER(telefono_contacto)=UPPER(PERS_TELF);
                            IF (EXISTE_TELEFONO_CONTACTO=1) THEN
                                   DBMS_OUTPUT.PUT_LINE('� Error: El tel�fono '||
                                                        PERS_TELF||' ya est�'||
                                                        ' en uso.');
                                   DBMS_OUTPUT.PUT_LINE('Por favor,'||
                                                        ' ingrese un nuevo '||
                                                        'tel�fono de contacto.');
                            END IF;
                            IF(EXISTE_TELEFONO_CONTACTO=0 AND
                               EXISTE_CORREO=0)THEN
                                     DBMS_OUTPUT.PUT_LINE('Se registr� '||
                                                          'correctamente a la '||
                                                          'persona con el ID '||
                                                          'persona '||PERS_ID||'.');
                                     INSERT INTO persona(id_persona,nombre,
                                                         apellidos,
                                                         correo_electronico,
                                                         ocupacion,
                                                         tipo_doc_id_tipo_doc,
                                                         numero_documento,
                                                         telefono_contacto,
                                                         estado)
                                                 VALUES(PERS_ID,PERS_NOMBRE,
                                                        PERS_APELLDOS,
                                                        PERS_CORREO,
                                                        PERS_OCUP,TIPO_DOC_ID,
                                                        PERS_NUM_DOC,PERS_TELF,
                                                        'INACTIVO');
                               COMMIT;
                            END IF;
                          END;
                    END;
           END;
        END IF;
    END IF;
EXCEPTION
 WHEN OTHERS THEN
   ROLLBACK TO INICIO;
   DBMS_OUTPUT.PUT_LINE('Error al ejecutarse el subprograma registrar_persona');
END cc_registrar_persona;
/
--BLOQUE INSERT PERSONA
DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('INSERT PERSONA');
    DBMS_OUTPUT.PUT_LINE('Caso de prueba 1:');--El ID de la persona 20 ya existe
    cc_registrar_persona(20, 'Diego', 'Garc�a', 'diego.garcia@example.com', 'A',
                         2, '3344556677', '+39 06 8765 4321');
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Caso de prueba 2:');--ID de la persona es obligatoria
    cc_registrar_persona(null,'Diego','Garc�a','diego.garcia@example.com','A',2,
                         '3344556677', '+39 06 8765 4321');
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Caso de prueba 3:');--DIEGO GARC�A ya existe
    cc_registrar_persona(21,'Diego','Garc�a','diego.garcia@example.com','A',2,
                         '3344556677', '+39 06 8765 4321');
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Caso de prueba 4:');--Incorrectos atributos de persona
    cc_registrar_persona(21, '  ', '   ', '        ', 'AD', 0, '0', null);
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Caso de prueba 5:');--Incorrecta ocupacion, correo y telefono
    cc_registrar_persona(21, 'Miguel Juan Leon', 'Chavez Perez',
                         'diego.garcia@example.com', 'P', 2, '3344556677',
                         '+39 06 8765 4321');
    DBMS_OUTPUT.PUT_LINE(' ');

    --Como todo est� OK! Se van a comprometer los datos a la base de datos
/*    DBMS_OUTPUT.PUT_LINE('Caso de prueba 6:');--Registrado correctamente
    cc_registrar_persona(21, 'Miguel Juan Leon', 'Chavez Perez',
                           'miguel.juan.leon@example.com', 'P', 1, '02372965',
                           '+51 924 975 036');
*/
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el bloque Insert Persona.');
END;
/
BEGIN
    --Registrado correctamente
    cc_registrar_persona(22, 'Jorge Pedro', 'Roca de la Torre',
                          'jorge.pedro.roca.torre@example.com', 'D', 1, '02745291',
                          '+51 991 640 138');
END;
/
SELECT*FROM PERSONA;