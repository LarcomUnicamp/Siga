ALTER TABLE `siga`.`ex_documento` 
DROP FOREIGN KEY `DOC_CADASTRANTE_PESSOA_FK`;
ALTER TABLE `siga`.`ex_documento` 
CHANGE COLUMN `ID_CADASTRANTE` `ID_CADASTRANTE` INT UNSIGNED NULL ;
ALTER TABLE `siga`.`ex_documento` 
ADD CONSTRAINT `DOC_CADASTRANTE_PESSOA_FK`
  FOREIGN KEY (`ID_CADASTRANTE`)
  REFERENCES `corporativo`.`dp_pessoa` (`ID_PESSOA`);