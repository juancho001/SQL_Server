/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     02/01/2020 05:27:06 p.m.                     */
/*==============================================================*/

Use master
go

/*Creaci�n de la Base de datos a trabajar*/
Create database db_territorial
go

/*Selecci�n de la Base de datos a trabajar*/
Use db_territorial
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REL_PAIS_CAPITAL') and o.name = 'FK_REL_PAIS_REF_TB_PAIS')
alter table REL_PAIS_CAPITAL
   drop constraint FK_REL_PAIS_REF_TB_PAIS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REL_PAIS_CAPITAL') and o.name = 'FK_REL_PAIS_REF_TB_CAPIT')
alter table REL_PAIS_CAPITAL
   drop constraint FK_REL_PAIS_REF_TB_CAPIT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TB_ESTADO') and o.name = 'FK_TB_ESTAD_REF_TB_CAPIT')
alter table TB_ESTADO
   drop constraint FK_TB_ESTAD_REF_TB_CAPIT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TB_MUNICIPIO') and o.name = 'FK_TB_MUNIC_REF_TB_ESTAD')
alter table TB_MUNICIPIO
   drop constraint FK_TB_MUNIC_REF_TB_ESTAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TB_PARROQUIA') and o.name = 'FK_TB_PARRO_REF_TB_MUNIC')
alter table TB_PARROQUIA
   drop constraint FK_TB_PARRO_REF_TB_MUNIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TB_SECTOR') and o.name = 'FK_TB_SECTO_REF_TB_PARRO')
alter table TB_SECTOR
   drop constraint FK_TB_SECTO_REF_TB_PARRO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REL_PAIS_CAPITAL')
            and   type = 'U')
   drop table REL_PAIS_CAPITAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TB_CAPITAL')
            and   type = 'U')
   drop table TB_CAPITAL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TB_ESTADO')
            and   type = 'U')
   drop table TB_ESTADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TB_MUNICIPIO')
            and   type = 'U')
   drop table TB_MUNICIPIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TB_PAIS')
            and   type = 'U')
   drop table TB_PAIS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TB_PARROQUIA')
            and   type = 'U')
   drop table TB_PARROQUIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TB_SECTOR')
            and   type = 'U')
   drop table TB_SECTOR
go

/*==============================================================*/
/* Table: REL_PAIS_CAPITAL - OK                                 */
/*==============================================================*/
create table REL_PAIS_CAPITAL (
   CN_ID_PAIS           int                  not null,
   CN_ID_CAPITAL        int                  not null
)
go

/*==============================================================*/
/* Table: TB_CAPITAL  - OK                                      */
/*==============================================================*/
create table TB_CAPITAL (
   CAPITAL_ID           int                  identity,
   NOMBRE_CAPITAL       varchar(100)         not null,
   ACTIVO               numeric(1)           not null default 1
   constraint CKC_ACTIVO_TB_CAPIT check (ACTIVO between 0 and 1),
   constraint PK_TB_CAPITAL primary key (CAPITAL_ID)
)
go

/*==============================================================*/
/* Table: TB_ESTADO - OK                                        */
/*==============================================================*/
create table TB_ESTADO (
   ESTADO_ID            int                  identity,
   CAPITAL_ID           int                  not null,
   NOMBRE_ESTADO        varchar(100)         not null,
   ULT_MOD              datetime             not null default current_timestamp,
   ACTIVO               numeric(1)           not null default 1,
   USUARIO_ID           numeric(10)          null,
   constraint PK_TB_ESTADO primary key (ESTADO_ID)
)
go

/*==============================================================*/
/* Table: TB_MUNICIPIO - OK                                     */
/*==============================================================*/
create table TB_MUNICIPIO (
   MUNICIPIO_ID         int                  identity,
   ESTADO_ID            int                  not null,
   NOMBRE_MUNICIPIO     varchar(100)         not null,
   COLOR_MUNICIPIO      numeric(10)          not null,
   ULT_MOD              datetime             not null default current_timestamp,
   USUARIO_ID           numeric(10)          not null,
   ACTIVO               numeric(1)           null default 1,
   constraint PK_TB_MUNICIPIO primary key (MUNICIPIO_ID)
)
go

/*==============================================================*/
/* Table: TB_PAIS - OK                                          */
/*==============================================================*/
create table TB_PAIS (
   CN_ID_PAIS           int                  identity,
   CC_NOMBRE_PAIS       varchar(70)          not null,
   CL_STATUS_PAIS       bit                  not null default 1,
   constraint PK_TB_PAIS primary key (CN_ID_PAIS)
)
go

/*==============================================================*/
/* Table: TB_PARROQUIA - OK                                     */
/*==============================================================*/
create table TB_PARROQUIA (
   PARROQUIA_ID         int                  identity,
   MUNICIPIO_ID         int                  not null,
   NOMBRE_PARROQUIA     varchar(100)         not null,
   COLOR_PARROQUIA      numeric(10)          not null,
   USUARIO_ID           numeric(10)          not null,
   ULT_MOD              datetime             not null default current_timestamp,
   ACTIVO               numeric(1)           null default 1,
   constraint PK_TB_PARROQUIA primary key (PARROQUIA_ID)
)
go

/*==============================================================*/
/* Table: TB_SECTOR - OK                                        */
/*==============================================================*/
create table TB_SECTOR (
   SECTOR_ID            int                  identity,
   PARROQUIA_ID         int                  not null,
   NOMBRE_SECTOR        varchar(200)         not null,
   RUTA_CART_SECTOR     varchar(500)         not null,
   COORDENADA_X1        numeric(16,2)        null,
   COORDENADA_Y1        numeric(16,2)        null,
   COORDENADA_X2        numeric(16,2)        null,
   COORDENADA_Y2        numeric(16,2)        null,
   USUARIO_ID           numeric(10)          not null,
   ULT_MOD              datetime             not null default current_timestamp,
   ACTIVO               numeric(1)           not null,
   COLOR_SECTOR         smallint             null default 0,
   RUTA_CART_VIALIDAD   varchar(3000)        null,
   ESTADO_AGUAS_BLANCAS_ID int                  null,
   ESTADO_AGUAS_NEGRAS_ID int                  null,
   ESTADO_VIALIDAD_ID   int                  null,
   ESTADO_ELECTRICIDAD_ID int                  null,
   ESTADO_GAS_ID        int                  null,
   ESTADO_TRANSPORTE_ID int                  null,
   ESTADO_TELEFONIA_ID  int                  null,
   constraint PK_TB_SECTOR primary key (SECTOR_ID)
)
go

alter table REL_PAIS_CAPITAL
   add constraint FK_REL_PAIS_REF_TB_PAIS foreign key (CN_ID_PAIS)
      references TB_PAIS (CN_ID_PAIS)
go

alter table REL_PAIS_CAPITAL
   add constraint FK_REL_PAIS_REF_TB_CAPIT foreign key (CN_ID_CAPITAL)
      references TB_CAPITAL (CAPITAL_ID)
go

alter table TB_ESTADO
   add constraint FK_TB_ESTAD_REF_TB_CAPIT foreign key (CAPITAL_ID)
      references TB_CAPITAL (CAPITAL_ID)
go

alter table TB_MUNICIPIO
   add constraint FK_TB_MUNIC_REF_TB_ESTAD foreign key (ESTADO_ID)
      references TB_ESTADO (ESTADO_ID)
go

alter table TB_PARROQUIA
   add constraint FK_TB_PARRO_REF_TB_MUNIC foreign key (MUNICIPIO_ID)
      references TB_MUNICIPIO (MUNICIPIO_ID)
go

alter table TB_SECTOR
   add constraint FK_TB_SECTO_REF_TB_PARRO foreign key (PARROQUIA_ID)
      references TB_PARROQUIA (PARROQUIA_ID)
go

