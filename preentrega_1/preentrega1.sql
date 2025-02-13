
CREATE TABLE doctor (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  dni TEXT NOT NULL,
  rol	TEXT NOT NULL,
  email TEXT NOT NULL,
  phone INT NOT NULL,
  specialty TEXT
);

CREATE TABLE patient (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INT,
  gender TEXT
);

CREATE TABLE consultation (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  patientid BIGINT,
  doctorid BIGINT,
  date DATETIME,
  notes TEXT,
  FOREIGN KEY (patientid) REFERENCES patient (id),
  FOREIGN KEY (doctorid) REFERENCES doctor (id)
);

CREATE TABLE medicalhistory (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  patientid BIGINT,
  doctorid BIGINT,
  consultationid BIGINT,
  details TEXT,
  FOREIGN KEY (patientid) REFERENCES patient (id),
  FOREIGN KEY (doctorid) REFERENCES doctor (id),
  FOREIGN KEY (consultationid) REFERENCES consultation (id)
);

CREATE TABLE notification (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  consultationid BIGINT,
  message TEXT,
  sentat DATETIME,
  FOREIGN KEY (consultationid) REFERENCES consultation (id)
);

CREATE TABLE recipe (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  consultationid BIGINT,
  description TEXT,
  FOREIGN KEY (consultationid) REFERENCES consultation (id)
);
