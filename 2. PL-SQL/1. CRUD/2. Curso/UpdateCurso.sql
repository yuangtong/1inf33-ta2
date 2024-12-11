SET SERVEROUTPUT ON;
/
--SUBPROGRAMA DE INSERTAR CURSO
CREATE OR REPLACE PROCEDURE cc_actualizar_curso(CURSO_ID NUMBER,CURSO_NOMBRE CURSO.nombre%TYPE, CURSO_MODALIDAD CURSO.modalidad%TYPE,
    PROPUESTA_ID NUMBER, COORD_ACAD_ID NUMBER, ASIST_ADMIN_ID NUMBER, CURSO_NRO_HORAS NUMBER, CURSO_CONTENIDO VARCHAR2)
IS
    V_CURSO_NOMBR CURSO.nombre%TYPE;
    V_CURSO_MODALIDAD CURSO.modalidad%TYPE;
    V_PROPUESTA_ID CURSO.PROPUESTA_ID_PROPUESTA%TYPE;
    V_COORD_ACAD_ID CURSO.COORD_ACAD_ID_COORD_ACAD%TYPE;
    V_ASIST_ADMIN_ID CURSO.ASIST_ADMIN_ID_ASIST_ADMIN%TYPE;
    V_CURSO_NRO_HORAS CURSO.NRO_HORAS%TYPE;
    V_CURSO_CONTENIDO CURSO.CONTENIDO%TYPE;
    CENTINELA BOOLEAN;
BEGIN
    SAVEPOINT INICIO;
    CENTINELA:= FALSE;
    IF(CURSO_ID IS NULL)THEN
        DBMS_OUTPUT.PUT_LINE('Error: El ID del curso es obligatorio. Por favor ingrese un nuevo ID.');
    ELSE
        IF(CURSO_NOMBRE IS NULL OR CURSO_NOMBRE LIKE ' %')THEN
            SELECT nombre INTO V_CURSO_NOMBR FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(LENGTH(CURSO_CONTENIDO)>1 AND LENGTH(CURSO_CONTENIDO)<60) THEN
            V_CURSO_NOMBR:= CURSO_NOMBRE;
        ELSE
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: El nombre del curso no es permitido. Por favor, ingrese otro '|| 
            'nombre.');
        END IF;
        
        
        IF(CURSO_MODALIDAD IS NULL OR CURSO_MODALIDAD LIKE ' %')THEN
            SELECT modalidad INTO V_CURSO_MODALIDAD FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(CURSO_MODALIDAD = 'P' OR CURSO_MODALIDAD = 'V' AND LENGTH(CURSO_MODALIDAD) = 1) THEN
            V_CURSO_MODALIDAD:= CURSO_MODALIDAD;
        ELSE
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: La modalidad del curso no es permitida. Por favor, ingrese otra '|| 
            'modalidad.');
        END IF;
        
        
        IF(PROPUESTA_ID IS NULL OR PROPUESTA_ID = 0)THEN
            SELECT PROPUESTA_ID_PROPUESTA INTO V_PROPUESTA_ID FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(PROPUESTA_ID > 0) THEN
            V_PROPUESTA_ID:= PROPUESTA_ID;
        ELSE 
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: La propuesta del curso no es permitida. Por favor, ingrese otra '|| 
            'propuesta.');
        END IF;
        
        
        IF(COORD_ACAD_ID IS NULL OR COORD_ACAD_ID  = 0)THEN
            SELECT COORD_ACAD_ID_COORD_ACAD INTO V_COORD_ACAD_ID FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(COORD_ACAD_ID > 0) THEN
            V_COORD_ACAD_ID:= COORD_ACAD_ID;
        ELSE 
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: El coordinador academico del curso no es permitido. Por favor, ingrese otro '|| 
            'coordinador academico.');
        END IF;
        
        
        IF(ASIST_ADMIN_ID IS NULL OR ASIST_ADMIN_ID =0)THEN
            SELECT ASIST_ADMIN_ID_ASIST_ADMIN INTO V_ASIST_ADMIN_ID FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(ASIST_ADMIN_ID > 0) THEN
            V_ASIST_ADMIN_ID:= ASIST_ADMIN_ID;
        ELSE 
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: El asistente academico del curso no es permitido. Por favor, ingrese otro '|| 
            'asistente academico.');
        END IF;
        
        
        IF(CURSO_NRO_HORAS IS NULL OR CURSO_NRO_HORAS =0)THEN
            SELECT NRO_HORAS INTO V_CURSO_NRO_HORAS FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(CURSO_NRO_HORAS > 0) THEN
            V_CURSO_NRO_HORAS:= CURSO_NRO_HORAS;
        ELSE 
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: El numero de horas del curso no es permitido. Por favor, ingrese otro '|| 
            'numero de horas.');
        END IF;
        
        
        IF(CURSO_CONTENIDO IS NULL OR CURSO_CONTENIDO LIKE ' %')THEN
            SELECT CONTENIDO INTO V_CURSO_CONTENIDO FROM CURSO WHERE ID_CURSO = CURSO_ID;
        ELSIF(LENGTH(CURSO_CONTENIDO)>1 AND LENGTH(CURSO_CONTENIDO)<200) THEN
            V_CURSO_CONTENIDO:= CURSO_CONTENIDO;
        ELSE
            CENTINELA:= TRUE;
            DBMS_OUTPUT.PUT_LINE('Error: El nombre del curso no es permitido. Por favor, ingrese otro '|| 
            'nombre.');
        END IF;
        
        IF(CENTINELA = FALSE) THEN
            UPDATE CURSO SET
                NOMBRE = V_CURSO_NOMBR,
                MODALIDAD = V_CURSO_MODALIDAD,
                PROPUESTA_ID_PROPUESTA = V_PROPUESTA_ID,
                COORD_ACAD_ID_COORD_ACAD = V_COORD_ACAD_ID,
                ASIST_ADMIN_ID_ASIST_ADMIN = V_ASIST_ADMIN_ID,
                NRO_HORAS = V_CURSO_NRO_HORAS,
                CONTENIDO = V_CURSO_CONTENIDO
            WHERE ID_CURSO = CURSO_ID;
            DBMS_OUTPUT.PUT_LINE('El curso '||CURSO_ID||' ha sido actualizado');
        END IF;
        
        
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK TO INICIO;
        DBMS_OUTPUT.PUT_LINE('Error al ejecutarse el subprograma actualizar_curso '|| SQLERRM);
END cc_actualizar_curso;
/

--BLOQUE INSERT PERSONA
DECLARE
    EXISTE NUMBER;
BEGIN
    cc_actualizar_curso(6, null, 'V', 2, 3, 5, null, 'ESTO ES UNA PRUEBA ');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el bloque principal.');
END;