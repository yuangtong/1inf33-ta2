SET SERVEROUTPUT ON;
--CURSOR CURSO
/
CREATE OR REPLACE PROCEDURE cc_proc_asistencias_curso(
    CURSO_ID NUMBER,
    SESION_ID NUMBER,
    ASISTENCIA_PARTICIPANTE CHAR)
IS
    CURSOR CUR_SESIONES_CURSO(
        CURSO_ID IN NUMBER,
        SESION_ID IN NUMBER)
    IS SELECT*FROM SESION
    WHERE curso_id_curso=CURSO_ID AND (SESION_ID IS NULL OR id_sesion=SESION_ID);

    CURSOR CUR_PARTICIPANTES_SESION(
        SESION_ID IN NUMBER,
        ASISTENCIA_PARTICIPANTE CHAR)
    IS SELECT*FROM sesion_participante
    WHERE (sesion_id_sesion=SESION_ID OR sesion_id_sesion IS NULL)
          AND UPPER(asistencia)=UPPER(ASISTENCIA_PARTICIPANTE);
    CANT_ASIST_SESION NUMBER;
    TOT_ASIST_SESION NUMBER;
    TOT_PART_CURSO NUMBER;
    REG_CURSO CURSO%ROWTYPE;
    REG_PERSONA PERSONA%ROWTYPE;
BEGIN
    --DBMS_OUTPUT.PUT_LINE('XD');
    TOT_PART_CURSO:=0;
    SELECT*INTO REG_CURSO FROM CURSO WHERE ID_CURSO=CURSO_ID;
    IF(REG_CURSO.modalidad='V')THEN
        DBMS_OUTPUT.PUT_LINE('Asistencias del curso '||REG_CURSO.nombre||
                             ' en las sesiones '||SESION_ID||
                             ' en la modalidad virtual:');
    END IF;
    IF(REG_CURSO.modalidad='P')THEN
        DBMS_OUTPUT.PUT_LINE('Asistencias del curso '||REG_CURSO.nombre||
                             ' en las sesiones '||SESION_ID||
                             ' en la modalidad presencial:');
    END IF;
    IF(REG_CURSO.modalidad='H')THEN
        DBMS_OUTPUT.PUT_LINE('Asistencias del curso '||REG_CURSO.nombre||
                             ' en las sesiones '||SESION_ID||
                             ' en la modalidad h�brida:');
    END IF;
    SELECT COUNT(*)INTO TOT_PART_CURSO FROM PARTICIPANTE
    WHERE curso_id_curso=CURSO_ID;
    IF(TOT_PART_CURSO=0)THEN
        DBMS_OUTPUT.PUT_LINE('=======================================');
        DBMS_OUTPUT.PUT_LINE('No existe ning�n participante en el curso.');
    ELSE
        FOR REG_SESION IN CUR_SESIONES_CURSO(CURSO_ID,SESION_ID) LOOP
            DBMS_OUTPUT.PUT_LINE('=======================================');
            DBMS_OUTPUT.PUT_LINE('Sesi�n del '||REG_SESION.fecha_sesion);
            SELECT COUNT(*)INTO TOT_ASIST_SESION FROM sesion_participante
            WHERE (sesion_id_sesion=REG_SESION.ID_SESION OR
                  REG_SESION.ID_SESION IS NULL);
            IF(TOT_ASIST_SESION=0)THEN
                DBMS_OUTPUT.PUT_LINE('---------------------------------------');
                DBMS_OUTPUT.PUT_LINE('No existe ning�n participante en la '||
                                     'sesi�n de clase.');
            ELSE
                CANT_ASIST_SESION:=0;
                DBMS_OUTPUT.PUT_LINE('---------------------------------------');
                FOR REG_PARTICIPANTE IN CUR_PARTICIPANTES_SESION(REG_SESION.ID_SESION,ASISTENCIA_PARTICIPANTE)LOOP
                    SELECT*INTO REG_PERSONA FROM PERSONA
                    WHERE ID_PERSONA=(SELECT id_persona FROM participante
                                      WHERE ID_participante=REG_PARTICIPANTE.participante_id_participante);
                    CANT_ASIST_SESION:=CANT_ASIST_SESION+1;
                    DBMS_OUTPUT.PUT_LINE(REG_PERSONA.nombre||' '||REG_PERSONA.apellidos);
                END LOOP;
                IF(UPPER(ASISTENCIA_PARTICIPANTE)='S')THEN
                   IF(CANT_ASIST_SESION>1)THEN
                        DBMS_OUTPUT.PUT_LINE('---------------------------------------');
                        DBMS_OUTPUT.PUT_LINE('A esta sesi�n SI han asistido '
                                             ||CANT_ASIST_SESION||
                                             ' participantes de un total de '||
                                             TOT_ASIST_SESION||'.');
                    END IF;
                    IF(CANT_ASIST_SESION=1)THEN
                        DBMS_OUTPUT.PUT_LINE('---------------------------------------');
                        DBMS_OUTPUT.PUT_LINE('A esta sesi�n SI ha asistido 1 '||
                                             'participante de un total de '||
                                             TOT_ASIST_SESION||'.');
                    END IF;
                    IF(CANT_ASIST_SESION=0)THEN
                        DBMS_OUTPUT.PUT_LINE('A esta sesi�n de clase SI han'||
                                             ' faltado todos los '||TOT_ASIST_SESION
                                             ||' participantes.');
                    END IF;
                ELSE
                   IF(CANT_ASIST_SESION>1)THEN
                        DBMS_OUTPUT.PUT_LINE('---------------------------------------');
                        DBMS_OUTPUT.PUT_LINE('A esta sesi�n SI han faltado '||
                                             CANT_ASIST_SESION||
                                             ' participantes de un total de '||
                                             TOT_ASIST_SESION||'.');
                    END IF;
                    IF(CANT_ASIST_SESION=1)THEN
                        DBMS_OUTPUT.PUT_LINE('---------------------------------------');
                        DBMS_OUTPUT.PUT_LINE('A esta sesi�n SI ha faltado 1 '||
                                             'participante de un total de '||
                                             TOT_ASIST_SESION||'.');
                    END IF;
                    IF(CANT_ASIST_SESION=0)THEN
                        DBMS_OUTPUT.PUT_LINE('A esta sesi�n de clase NO han '||
                                             'faltado ninguno de los '||TOT_ASIST_SESION||
                                             ' participantes.');
                    END IF;
                END IF;
            END IF;
        END LOOP;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al ejecutarse el subpprograma '||
                             'cc_proc_asistencia_curso');
END cc_proc_asistencias_curso;
/
--BLOQUE CURSOR CURSO
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Prueba 1:');
    cc_proc_asistencias_curso(1,2,'N');
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Prueba 2:');
    cc_proc_asistencias_curso(2,NULL,'N');
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Prueba 3:');
    cc_proc_asistencias_curso(3,8,'S');
    DBMS_OUTPUT.PUT_LINE(' ');

    DBMS_OUTPUT.PUT_LINE('Prueba 4:');
    cc_proc_asistencias_curso(4,NULL,'S');
END;
/
SELECT*FROM SESION;
SELECT*FROM SESION_PARTICIPANTE;