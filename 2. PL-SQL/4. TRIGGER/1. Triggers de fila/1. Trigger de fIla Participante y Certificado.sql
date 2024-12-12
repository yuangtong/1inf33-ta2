SET SERVEROUTPUT ON;
--TRIGGERS DE FILA
--1: Trigger para lograr actualizar el curso de un participante o eliminar un participante
--Definicion
/
CREATE OR REPLACE TRIGGER cc_tr_crud_participante
    BEFORE UPDATE OR DELETE ON PARTICIPANTE
    FOR EACH ROW
BEGIN
    IF UPDATING THEN
        UPDATE CERTIFICADO SET PARTICIPANTE_CURSO_ID_CURSO=:NEW.CURSO_ID_CURSO
        WHERE PARTICIPANTE_ID_PARTICIPANTE=:NEW.ID_PARTICIPANTE;
    END IF;
    IF DELETING THEN
        DELETE CERTIFICADO WHERE PARTICIPANTE_ID_PARTICIPANTE=:OLD.ID_PARTICIPANTE;
    END IF;
END;
/
--Prueba
/
COMMIT;
/
INSERT INTO participante(id_participante,curso_id_curso,id_persona)VALUES(6,2,16);
/
UPDATE participante SET curso_id_curso=3 WHERE id_participante=6;
/
DELETE PARTICIPANTE WHERE id_participante=6;
/
--1: Trigger para lograr actualizar la cantidad de certificados emitidos en un informe
--Definicion
/
CREATE OR REPLACE TRIGGER cc_tr_crud_certificado
    AFTER INSERT OR UPDATE OR DELETE ON CERTIFICADO
    FOR EACH ROW
DECLARE
    INFORME_FINAL_ID NUMBER;
BEGIN
    IF INSERTING THEN
        UPDATE INFORME_FINAL SET NUMERO_CERT_EMIT=NUMERO_CERT_EMIT+1 
        WHERE CURSO_ID_CURSO=:NEW.PARTICIPANTE_CURSO_ID_CURSO;
    END IF;
    IF UPDATING THEN
        UPDATE INFORME_FINAL SET NUMERO_CERT_EMIT=NUMERO_CERT_EMIT-1 
        WHERE CURSO_ID_CURSO=:OLD.PARTICIPANTE_CURSO_ID_CURSO;
        
        UPDATE INFORME_FINAL SET NUMERO_CERT_EMIT=NUMERO_CERT_EMIT+1 
        WHERE CURSO_ID_CURSO=:NEW.PARTICIPANTE_CURSO_ID_CURSO;
    END IF;
    IF DELETING THEN
        UPDATE INFORME_FINAL SET NUMERO_CERT_EMIT=NUMERO_CERT_EMIT-1 
        WHERE CURSO_ID_CURSO=:OLD.PARTICIPANTE_CURSO_ID_CURSO;
    END IF;
END;
/
--Prueba
/
COMMIT;
/
INSERT INTO participante(id_participante, curso_id_curso, id_persona) 
            VALUES (6, 2, 16);--Ejecutar si no se insertó o se eliminó en la pruea anterior
/
INSERT INTO certificado(id_certificado,nombre,codigo_qr,fecha_emision,descripcion,
                        participante_id_participante,participante_curso_id_curso,
                        gerente_id_gerente)
            VALUES(6,'Certificado en Desarrollo Web',
                   utl_raw.cast_to_raw('QR_CODE_DATA_26'),
                   TO_DATE('2024-11-25', 'YYYY-MM-DD'),
                   'Certificación en el curso de Desarrollo Web, aprobado con'||
                   ' un puntaje del 100%.',6,2,2);
/
UPDATE participante SET curso_id_curso=3 WHERE id_participante=6;
/
UPDATE CERTIFICADO SET nombre='Certificado en Análisis de Datos',
                       fecha_emision=TO_DATE('2024-10-15','YYYY-MM-DD'), 
                       descripcion='Certificación en el curso de Análisis de'||
                       ' Datos, aprobado con un puntaje del 88%.',
                       participante_curso_id_curso=3,gerente_id_gerente=3 
                   WHERE id_certificado=6;
/
DELETE CERTIFICADO WHERE id_certificado=6;
/
DELETE PARTICIPANTE WHERE id_participante=6;
/
SELECT*FROM INFORME_FINAL;--Revisar la cantidad de certificados emitidos
/
commit;