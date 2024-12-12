CREATE OR REPLACE PROCEDURE registrar_opinion (
    p_id_participante IN NUMBER,
    p_id_curso IN NUMBER,
    p_opinion IN VARCHAR2
) AS
BEGIN
    -- Validar si existe el participante y está asociado al curso
    IF EXISTS (
        SELECT 1
        FROM participante
        WHERE id_participante = p_id_participante AND curso_id_curso = p_id_curso
    ) THEN
        -- Actualizar la opinión del participante
        UPDATE participante
        SET opinion = p_opinion
        WHERE id_participante = p_id_participante AND curso_id_curso = p_id_curso;

        DBMS_OUTPUT.PUT_LINE('Opinión registrada correctamente.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('El participante o el curso no existen.');
    END IF;
END;
/
