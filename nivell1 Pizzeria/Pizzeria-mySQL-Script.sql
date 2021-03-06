-- MySQL Script generated by MySQL Workbench
-- mar 05 jul 2022 20:45:00
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Pizzeria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pizzeria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pizzeria` DEFAULT CHARACTER SET utf8 ;
USE `Pizzeria` ;

-- -----------------------------------------------------
-- Table `Pizzeria`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`provincia` (
  `idprovincia` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`idprovincia`),
  UNIQUE INDEX `idprovincia_UNIQUE` (`idprovincia` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`localitat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`localitat` (
  `idlocalitat` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NOT NULL,
  `provincia_idprovincia` INT NOT NULL,
  PRIMARY KEY (`idlocalitat`, `provincia_idprovincia`),
  UNIQUE INDEX `idlocalitat_UNIQUE` (`idlocalitat` ASC) VISIBLE,
  INDEX `fk_localitat_provincia1_idx` (`provincia_idprovincia` ASC) VISIBLE,
  CONSTRAINT `fk_localitat_provincia1`
    FOREIGN KEY (`provincia_idprovincia`)
    REFERENCES `Pizzeria`.`provincia` (`idprovincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`codi postal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`codi postal` (
  `idcodi postal` INT NOT NULL AUTO_INCREMENT,
  `codi` INT(12) NULL DEFAULT NULL,
  `localitat_idlocalitat` INT NOT NULL,
  PRIMARY KEY (`idcodi postal`, `localitat_idlocalitat`),
  UNIQUE INDEX `codi postalcol_UNIQUE` (`idcodi postal` ASC) VISIBLE,
  INDEX `fk_codi postal_localitat1` (`localitat_idlocalitat` ASC) VISIBLE,
  CONSTRAINT `fk_codi postal_localitat1`
    FOREIGN KEY (`localitat_idlocalitat`)
    REFERENCES `Pizzeria`.`localitat` (`idlocalitat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`client` (
  `idclient` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NULL DEFAULT NULL,
  `cognom` VARCHAR(45) NULL DEFAULT NULL,
  `adre??a` VARCHAR(45) NULL DEFAULT NULL,
  `telefon` VARCHAR(45) NULL DEFAULT NULL,
  `codi postal_idcodi postal` INT NOT NULL,
  `codi postal_localitat_idlocalitat` INT NOT NULL,
  PRIMARY KEY (`idclient`, `codi postal_idcodi postal`, `codi postal_localitat_idlocalitat`),
  UNIQUE INDEX `idclient_UNIQUE` (`idclient` ASC) VISIBLE,
  INDEX `fk_client_codi postal1_idx` (`codi postal_idcodi postal` ASC, `codi postal_localitat_idlocalitat` ASC) VISIBLE,
  CONSTRAINT `fk_client_codi postal1`
    FOREIGN KEY (`codi postal_idcodi postal` , `codi postal_localitat_idlocalitat`)
    REFERENCES `Pizzeria`.`codi postal` (`idcodi postal` , `localitat_idlocalitat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`format comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`format comanda` (
  `idformat comanda` INT NOT NULL AUTO_INCREMENT,
  `recollir o emportar` CHAR(8) NULL DEFAULT NULL,
  PRIMARY KEY (`idformat comanda`),
  UNIQUE INDEX `idformat comanda_UNIQUE` (`idformat comanda` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`empleat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`empleat` (
  `idempleat` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NULL,
  PRIMARY KEY (`idempleat`),
  UNIQUE INDEX `idempleat_UNIQUE` (`idempleat` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`comanda` (
  `idcomanda` INT NOT NULL AUTO_INCREMENT,
  `dia i hora` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `client_idclient` INT NOT NULL,
  `format comanda_idformat comanda` INT NOT NULL,
  `empleat_idempleat` INT NOT NULL,
  PRIMARY KEY (`idcomanda`, `format comanda_idformat comanda`),
  UNIQUE INDEX `idcomanda_UNIQUE` (`idcomanda` ASC) VISIBLE,
  INDEX `fk_comanda_client1_idx` (`client_idclient` ASC) VISIBLE,
  INDEX `fk_comanda_format comanda1_idx` (`format comanda_idformat comanda` ASC) VISIBLE,
  INDEX `fk_comanda_empleat1_idx` (`empleat_idempleat` ASC) VISIBLE,
  CONSTRAINT `fk_comanda_client1`
    FOREIGN KEY (`client_idclient`)
    REFERENCES `Pizzeria`.`client` (`idclient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comanda_format comanda1`
    FOREIGN KEY (`format comanda_idformat comanda`)
    REFERENCES `Pizzeria`.`format comanda` (`idformat comanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comanda_empleat1`
    FOREIGN KEY (`empleat_idempleat`)
    REFERENCES `Pizzeria`.`empleat` (`idempleat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`categoria pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`categoria pizza` (
  `idcategoria pizza` INT NOT NULL AUTO_INCREMENT,
  `nom categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategoria pizza`),
  UNIQUE INDEX `idpizza_UNIQUE` (`idcategoria pizza` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`tipus beguda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`tipus beguda` (
  `idtipus beguda` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NULL DEFAULT NULL,
  `descripcio` MEDIUMTEXT NULL DEFAULT NULL,
  `imatge` BLOB NULL DEFAULT NULL,
  `preu` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`idtipus beguda`),
  UNIQUE INDEX `idtipus beguda_UNIQUE` (`idtipus beguda` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`tipus hamburguesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`tipus hamburguesa` (
  `idtipus hamburguesa` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NULL DEFAULT NULL,
  `descripcio` MEDIUMTEXT NULL DEFAULT NULL,
  `imatge` BLOB NULL DEFAULT NULL,
  `preu` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`idtipus hamburguesa`),
  UNIQUE INDEX `idtipus hamburguesa_UNIQUE` (`idtipus hamburguesa` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`diametre pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`diametre pizza` (
  `iddiametre` INT NOT NULL AUTO_INCREMENT,
  `diametre` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`iddiametre`),
  UNIQUE INDEX `idtipus pizza_UNIQUE` (`iddiametre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`tipus pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`tipus pizza` (
  `idtipus pizza` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NULL DEFAULT NULL,
  `descripcio` MEDIUMTEXT NULL DEFAULT NULL,
  `imatge` BLOB NULL DEFAULT NULL,
  `preu` FLOAT NULL DEFAULT NULL,
  `diametre pizza_iddiametre` INT NOT NULL,
  PRIMARY KEY (`idtipus pizza`, `diametre pizza_iddiametre`),
  UNIQUE INDEX `idtipus pizza_UNIQUE` (`idtipus pizza` ASC) VISIBLE,
  INDEX `fk_tipus pizza_diametre pizza1_idx` (`diametre pizza_iddiametre` ASC) VISIBLE,
  CONSTRAINT `fk_tipus pizza_diametre pizza1`
    FOREIGN KEY (`diametre pizza_iddiametre`)
    REFERENCES `Pizzeria`.`diametre pizza` (`iddiametre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`categoria pizza_has_tipus pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`categoria pizza_has_tipus pizza` (
  `categoria pizza_idcategoria pizza` INT NOT NULL,
  `tipus pizza_idtipus pizza` INT NOT NULL,
  PRIMARY KEY (`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`),
  INDEX `fk_categoria pizza_has_tipus pizza_tipus pizza1_idx` (`tipus pizza_idtipus pizza` ASC) VISIBLE,
  INDEX `fk_categoria pizza_has_tipus pizza_categoria pizza1_idx` (`categoria pizza_idcategoria pizza` ASC) VISIBLE,
  CONSTRAINT `fk_categoria pizza_has_tipus pizza_categoria pizza1`
    FOREIGN KEY (`categoria pizza_idcategoria pizza`)
    REFERENCES `Pizzeria`.`categoria pizza` (`idcategoria pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria pizza_has_tipus pizza_tipus pizza1`
    FOREIGN KEY (`tipus pizza_idtipus pizza`)
    REFERENCES `Pizzeria`.`tipus pizza` (`idtipus pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`tipus pizza_has_comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`tipus pizza_has_comanda` (
  `tipus pizza_idtipus pizza` INT NOT NULL,
  `comanda_idcomanda` INT NOT NULL,
  `comanda_client_idclient` INT NOT NULL,
  `numero` INT NULL DEFAULT 1,
  PRIMARY KEY (`tipus pizza_idtipus pizza`, `comanda_idcomanda`, `comanda_client_idclient`),
  INDEX `fk_tipus pizza_has_comanda_comanda1_idx` (`comanda_idcomanda` ASC, `comanda_client_idclient` ASC) VISIBLE,
  INDEX `fk_tipus pizza_has_comanda_tipus pizza1_idx` (`tipus pizza_idtipus pizza` ASC) VISIBLE,
  CONSTRAINT `fk_tipus pizza_has_comanda_tipus pizza1`
    FOREIGN KEY (`tipus pizza_idtipus pizza`)
    REFERENCES `Pizzeria`.`tipus pizza` (`idtipus pizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipus pizza_has_comanda_comanda1`
    FOREIGN KEY (`comanda_idcomanda`)
    REFERENCES `Pizzeria`.`comanda` (`idcomanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`tipus hamburguesa_has_comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`tipus hamburguesa_has_comanda` (
  `tipus hamburguesa_idtipus hamburguesa` INT NOT NULL,
  `comanda_idcomanda` INT NOT NULL,
  `comanda_client_idclient` INT NOT NULL,
  `numero` INT NULL DEFAULT 1,
  PRIMARY KEY (`tipus hamburguesa_idtipus hamburguesa`, `comanda_idcomanda`, `comanda_client_idclient`),
  INDEX `fk_tipus hamburguesa_has_comanda_comanda1_idx` (`comanda_idcomanda` ASC, `comanda_client_idclient` ASC) VISIBLE,
  INDEX `fk_tipus hamburguesa_has_comanda_tipus hamburguesa1_idx` (`tipus hamburguesa_idtipus hamburguesa` ASC) VISIBLE,
  CONSTRAINT `fk_tipus hamburguesa_has_comanda_tipus hamburguesa1`
    FOREIGN KEY (`tipus hamburguesa_idtipus hamburguesa`)
    REFERENCES `Pizzeria`.`tipus hamburguesa` (`idtipus hamburguesa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipus hamburguesa_has_comanda_comanda1`
    FOREIGN KEY (`comanda_idcomanda`)
    REFERENCES `Pizzeria`.`comanda` (`idcomanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pizzeria`.`tipus beguda_has_comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pizzeria`.`tipus beguda_has_comanda` (
  `tipus beguda_idtipus beguda` INT NOT NULL,
  `comanda_idcomanda` INT NOT NULL,
  `comanda_client_idclient` INT NOT NULL,
  `numero` INT NULL DEFAULT 1,
  PRIMARY KEY (`tipus beguda_idtipus beguda`, `comanda_idcomanda`, `comanda_client_idclient`),
  INDEX `fk_tipus beguda_has_comanda_comanda1_idx` (`comanda_idcomanda` ASC, `comanda_client_idclient` ASC) VISIBLE,
  INDEX `fk_tipus beguda_has_comanda_tipus beguda1_idx` (`tipus beguda_idtipus beguda` ASC) VISIBLE,
  CONSTRAINT `fk_tipus beguda_has_comanda_tipus beguda1`
    FOREIGN KEY (`tipus beguda_idtipus beguda`)
    REFERENCES `Pizzeria`.`tipus beguda` (`idtipus beguda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipus beguda_has_comanda_comanda1`
    FOREIGN KEY (`comanda_idcomanda`)
    REFERENCES `Pizzeria`.`comanda` (`idcomanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
