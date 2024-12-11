CREATE OR REPLACE PROCEDURE update_persona (
    p_id_persona IN NUMBER,
    p_tipo_documento IN VARCHAR2,
    p_numero_documento IN VARCHAR2,
    p_nombre IN VARCHAR2,
    p_apellidos IN VARCHAR2,
    p_correo_electronico IN VARCHAR2,
    p_telefono_contacto IN VARCHAR2,
    p_ocupacion IN CHAR
) AS
BEGIN
    -- Validación: Verificar si la persona existe antes de actualizar
    IF EXISTS (SELECT 1 FROM Persona WHERE ID_PERSONA = p_id_persona) THEN
        -- Actualizar los datos de la persona
        UPDATE Persona
        SET
            TIPO_DOCUMENTO = p_tipo_documento,
            NUMERO_DOCUMENTO = p_numero_documento,
            NOMBRE = p_nombre,
            APELLIDOS = p_apellidos,
            CORREO_ELECTRONICO = p_correo_electronico,
            TELEFONO_CONTACTO = p_telefono_contacto,
            OCUPACION = p_ocupacion
        WHERE ID_PERSONA = p_id_persona;
        -- Confirmación de la actualización
        DBMS_OUTPUT.PUT_LINE('Datos actualizados para ID_PERSONA: ' || p_id_persona);
    ELSE
        -- Mensaje de error si no existe la persona
        DBMS_OUTPUT.PUT_LINE('No se encontró la persona con ID_PERSONA: ' || p_id_persona);
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al actualizar los datos: ' || SQLERRM);
END update_persona;
/