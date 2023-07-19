CREATE VIEW low_cost_cars AS
	SELECT *
	FROM cars
	WHERE price <= 25000;
    
ALTER VIEW low_cost_cars AS
	SELECT *
	FROM cars
	WHERE price <= 30000;
    
CREATE VIEW skoda_audi_cars AS
	SELECT *
	FROM cars
	WHERE brand IN ('Шкода', 'Ауди');
