CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL,
   `id_usuario` INT NOT NULL,
   `titulo` VARCHAR(255) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_modif` DATE NOT NULL,
   `descripcion` TEXT,
   `eliminable` DATE NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL,
   `nombre` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `id_nota_cat` (
   `id` INT NOT NULL,
   `id_categoria` INT NOT NULL,
   `id_nota` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_6fa97b19-21e7-4dc9-8155-5effd8f05b93` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `id_nota_cat` ADD CONSTRAINT `FK_23bb3a01-ebf2-48f4-974c-51cf5a4fc87e` FOREIGN KEY (`id_nota`) REFERENCES `notas`(`id`)  ;

ALTER TABLE `id_nota_cat` ADD CONSTRAINT `FK_04b3dc12-8abf-4aa8-b3cd-402466b25219` FOREIGN KEY (`id_categoria`) REFERENCES `categorias`(`id`)  ;





insert into usuarios (id, nombre, email) values (1, 'user1', 'user1@user.com');
insert into usuarios (id, nombre, email) values (2, 'user2', 'user2@user.com');
insert into usuarios (id, nombre, email) values (3, 'user3', 'user3@user.com');
insert into usuarios (id, nombre, email) values (4, 'user4', 'user4@user.com');
insert into usuarios (id, nombre, email) values (5, 'user5', 'user5@user.com');
insert into usuarios (id, nombre, email) values (6, 'user6', 'user6@user.com');
insert into usuarios (id, nombre, email) values (7, 'user7', 'user7@user.com');
insert into usuarios (id, nombre, email) values (8, 'user8', 'user8@user.com');
insert into usuarios (id, nombre, email) values (9, 'user9', 'user9@user.com');
insert into usuarios (id, nombre, email) values (10, 'user10', 'user10@user.com');

insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (1, 1, '', '2021/05/11', '2021/05/11', '2021/05/11', '1234');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (2, 2, '', '2021/05/11', '2021/05/11', '2021/05/11', '1234');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (3, 3, '', '2021/05/11', '2021/05/11', '2021/05/11', '1234');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (4, 4, '', '2021/05/11', '2021/05/11', '2021/05/11', '');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (5, 5, '', '2021/05/11', '2021/05/11', '2021/05/11', '');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (6, 6, '', '2021/05/11', '2021/05/11', '2021/05/11', '');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (7, 7, '', '2021/05/11', '2021/05/11', '2021/05/11', '');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (8, 8, '', '2021/05/11', '2021/05/11', '2021/05/11', '');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (9, 9, '', '2021/05/11', '2021/05/11', '2021/05/11', '');
insert into notas (id, id_usuario, titulo, fecha_creacion, fecha_modif, eliminable, descripcion) values (10, 10, '', '2021/05/11', '2021/05/11', '2021/05/11', '');

insert into categorias (id, nombre) values (1, 'ejemplo1');
insert into categorias (id, nombre) values (2, 'ejemplo2');
insert into categorias (id, nombre) values (3, 'ejemplo3');
insert into categorias (id, nombre) values (4, 'ejemplo4');
insert into categorias (id, nombre) values (5, 'ejemplo5');
insert into categorias (id, nombre) values (6, 'ejemplo6');
insert into categorias (id, nombre) values (7, 'ejemplo7');
insert into categorias (id, nombre) values (8, 'ejemplo8');
insert into categorias (id, nombre) values (9, 'ejemplo9');
insert into categorias (id, nombre) values (10, 'ejemplo10');

insert into id_nota_cat (id, id_categoria, id_nota) values (1, 1, 1);
insert into id_nota_cat (id, id_categoria, id_nota) values (2, 2, 2);
insert into id_nota_cat (id, id_categoria, id_nota) values (3, 3, 3);
insert into id_nota_cat (id, id_categoria, id_nota) values (4, 4, 4);
insert into id_nota_cat (id, id_categoria, id_nota) values (5, 5, 5);
insert into id_nota_cat (id, id_categoria, id_nota) values (6, 6, 6);
insert into id_nota_cat (id, id_categoria, id_nota) values (7, 7, 7);
insert into id_nota_cat (id, id_categoria, id_nota) values (8, 8, 8);
insert into id_nota_cat (id, id_categoria, id_nota) values (9, 9, 9);
insert into id_nota_cat (id, id_categoria, id_nota) values (10, 10, 10);
