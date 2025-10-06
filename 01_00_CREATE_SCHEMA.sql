/*
01-00 CREAMOS LA DB

    Damos por hecho que tenemos el schema creado y ya estamos dentro, pero,
    quizás queremos eliminar el schema y empezar de nuevo.

*/

-- 1. Eliminar schema si existiera
drop schema if exists devcampexercise;


/*
 2. Crear la DB
    MySQL-Workbench auto-ajusta los settings de character-set y collate, pero vamos a dárselos manualmente


    Los collate, para MariaDB, utf84mb_general_ci mejor; es la base que uso; collate utf8mb4_unicode_ci es más genérico de MySQL-Workbench.
    Como estoy teniendo problemas con símbolos, acentos, utf8mb4_general_ci, sin acentos en CHARS

    Lo dejo comentado, pero lo añado para recordarlo. MySQL lo hace automático en Workbench, pero desde CLI es distinto.
*/
create schema devcampexercise;
/*
    default character set utf8mb4
    default collate utf8mb4_general_ci;
*/

-- 3. Elegimos la base recien creada
use devcampexercise;
