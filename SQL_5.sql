CREATE FUNCTION format_seconds(seconds INT, format VARCHAR(100))
    RETURNS VARCHAR(100)
    BEGIN
        DECLARE days INT;
        DECLARE hours INT;
        DECLARE minutes INT;
        DECLARE result VARCHAR(100);

        -- Расчет количества дней, часов, минут и секунд
        SET days = seconds DIV (60 * 60 * 24);
        SET seconds = seconds MOD (60 * 60 * 24);
        SET hours = seconds DIV (60 * 60);
        SET seconds = seconds MOD (60 * 60);
        SET minutes = seconds DIV 60;
        SET seconds = seconds MOD 60;

        -- Форматирование в соответствии с заданным форматом
        SET result = CASE
            WHEN format = 'days hours minutes seconds' THEN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds ')
            WHEN format = 'days hours minutes' THEN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ')
            WHEN format = 'days hours' THEN CONCAT(days, ' days ', hours, ' hours ')
            WHEN format = 'days' THEN CONCAT(days, ' days ')
        END;

        RETURN result;
    END;
