const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'testdb',
  password: 'admin',
  port: 5432,
})

/*CREATE TABLE daycares(
    ID SERIAL PRIMARY KEY,
    RATING INT,
    CAPACIY INT,
    INSURANCE TEXT,
    PHOTOS TEXT,
    COST TEXT,
    NAME TEXT,
    PHONE TEXT,
    LANGUAGES TEXT,
    HOURS BOOLEAN,
    LICENSED BOOLEAN,
    DESCRIPTION BOOLEAN,
    DOCTOR_RATE BOOLEAN,
    CA BOOLEAN,
    TA BOOLEAN,
    MA BOOLEAN,
    LPN BOOLEAN,
    RN BOOLEAN,
    PA BOOLEAN
);

INSERT INTO daycares (RATING, CAPACIY, INSURANCE, PHOTOS, COST, PHONE, LANGUAGES, LICENSED, DOCTOR_RATE,
    CA, TA, MA, LPN, RN, PA, HOURS, NAME, DESCRIPTION) VALUES
    ('4', '50', 'FIDELUS', 'xys', '$$$', '3340', 'ENG', '1', '1', '1', '0', '0', '1', '1', '1', '9 to 8', 'Purple Rain Daycare', 'Lorem_Ipsum'),
    ('5', '50', 'EMPIRE', 'xys', '$$$$',  '3340', 'ENG', '1', '1', '1', '1', '1', '1', '1', '1', '9 to 8', 'Richmond Daycare', 'Lorem_Ipsum');


CREATE TABLE APPOINTMENT(
    ID SERIAL PRIMARY KEY,
    DAY VARCHAR(20),
    TIME VARCHAR(20),
    DISCOUNT INT,
    NAME VARCHAR(20),
    AGE INT,
    LANGUAGE VARCHAR(30),
    ALLERGIES VARCHAR(30),
    SYMPTOMS VARCHAR(30),
    MEDICATION VARCHAR(30),
    EXTRA_COMMENTS VARCHAR(50)
)

INSERT INTO APPOINTMENT (day, time, discount, name, age, language, allergies, SYMPTOMS, MEDICATION, EXTRA_COMMENTS, DAYCARE) VALUES
    ('10/12/2019', '9 am', '10', 'Jane Doe', '5', 'ENG', 'PEANUT', 'COLD, FLU', 'Lorum Ipsum' , 'Lorum Ipsum' , 'Purple Rain Daycare'),
    ('10/12/2019', '10 am', '10', 'Jane Doe', '5', 'ENG', 'PEANUT', 'COLD, FLU', 'Lorum Ipsum' , 'Lorum Ipsum' , 'Richmond Daycare');
*/


