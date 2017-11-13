/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Jeca
 * Created: Nov 8, 2017
 */

CREATE TABLE users (
    username VARCHAR(45) NOT NULL ,
    password VARCHAR(45) NOT NULL ,
    enabled TINYINT NOT NULL DEFAULT 1 ,
    PRIMARY KEY (username));
    
CREATE TABLE user_roles (
    user_role_id int(11) NOT NULL AUTO_INCREMENT,
    username varchar(45) NOT NULL,
    role varchar(45) NOT NULL,
    PRIMARY KEY (user_role_id),
    UNIQUE KEY uni_username_role (role,username),
    KEY fk_username_idx (username),
    CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

INSERT INTO users(username,password,enabled) VALUES ('admin','admin', true);
INSERT INTO users(username,password,enabled) VALUES ('korisnik','korisnik', true);
INSERT INTO user_roles (username, role) VALUES ('admin', 'ROLE_USER');
INSERT INTO user_roles (username, role) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO 