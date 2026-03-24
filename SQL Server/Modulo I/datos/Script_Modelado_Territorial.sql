/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     01/01/2020 07:06:05 p.m.                     */
/*==============================================================*/


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
/* Table: REL_PAIS_CAPITAL                                      */
/*==============================================================*/
create table REL_PAIS_CAPITAL (
   CN_ID_PAIS           int                  not null,
   CN_ID_CAPITAL        int                  not null
)
go

/*==============================================================*/
/* Table: TB_CAPITAL                                            */
/*==============================================================*/
create table TB_CAPITAL (
   CN_ID_CAPITAL        int                  identity,
   CC_NOMBRE_CAPITAL    varchar(150)         not null,
   CL_STATUS_CAPITAL    bit                  not null default 1
      constraint CKC_CL_STATUS_CAPITAL_TB_CAPIT check (CL_STATUS_CAPITAL between 0 and 1),
   constraint PK_TB_CAPITAL primary key (CN_ID_CAPITAL)
)
go

/*==============================================================*/
/* Table: TB_ESTADO                                             */
/*==============================================================*/
create table TB_ESTADO (
   CN_ID_ESTADO         int                  identity,
   CN_ID_CAPITAL        int                  not null,
   CN_NOMBRE_ESTADO     varchar(200)           not null,
   CL_STATUS_ESTADO     bit                  not null,
   constraint PK_TB_ESTADO primary key (CN_ID_ESTADO)
)
go

/*==============================================================*/
/* Table: TB_MUNICIPIO                                          */
/*==============================================================*/
create table TB_MUNICIPIO (
   CN_ID_MUNICIPIO      int                  identity,
   CN_ID_ESTADO         int                  not null,
   CC_NOMBRE_MUNICIPIO  varchar(200)         not null,
   CL_STATUS_MUNICIPIO  bit                  not null,
   constraint PK_TB_MUNICIPIO primary key (CN_ID_MUNICIPIO)
)
go

/*==============================================================*/
/* Table: TB_PAIS                                               */
/*==============================================================*/
create table TB_PAIS (
   CN_ID_PAIS           int                  identity,
   CC_NOMBRE_PAIS       varchar(200)          not null,
   CL_STATUS_PAIS       bit                  not null default 1,
   constraint PK_TB_PAIS primary key (CN_ID_PAIS)
)
go

/*==============================================================*/
/* Table: TB_PARROQUIA                                          */
/*==============================================================*/
create table TB_PARROQUIA (
   CN_ID_PARROQUIA      int                  identity,
   CN_ID_MUNICIPIO      int                  not null,
   CC_NOMBRE_PARROQUIA  varchar(200)         not null,
   CL_STATUS_PARROQUIA  bit                  not null,
   constraint PK_TB_PARROQUIA primary key (CN_ID_PARROQUIA)
)
go

/*==============================================================*/
/* Table: TB_SECTOR                                             */
/*==============================================================*/
create table TB_SECTOR (
   CN_ID_SECTOR         int                  not null,
   CN_ID_PARROQUIA      int                  not null,
   CC_NOMBRE_SECTOR     varchar(200)         not null,
   CL_STATUS_SECTOR     bit                  not null,
   constraint PK_TB_SECTOR primary key (CN_ID_SECTOR)
)
go

alter table REL_PAIS_CAPITAL
   add constraint FK_REL_PAIS_REF_TB_PAIS foreign key (CN_ID_PAIS)
      references TB_PAIS (CN_ID_PAIS)
go

alter table REL_PAIS_CAPITAL
   add constraint FK_REL_PAIS_REF_TB_CAPIT foreign key (CN_ID_CAPITAL)
      references TB_CAPITAL (CN_ID_CAPITAL)
go

alter table TB_ESTADO
   add constraint FK_TB_ESTAD_REF_TB_CAPIT foreign key (CN_ID_CAPITAL)
      references TB_CAPITAL (CN_ID_CAPITAL)
go

alter table TB_MUNICIPIO
   add constraint FK_TB_MUNIC_REF_TB_ESTAD foreign key (CN_ID_ESTADO)
      references TB_ESTADO (CN_ID_ESTADO)
go

alter table TB_PARROQUIA
   add constraint FK_TB_PARRO_REF_TB_MUNIC foreign key (CN_ID_MUNICIPIO)
      references TB_MUNICIPIO (CN_ID_MUNICIPIO)
go

alter table TB_SECTOR
   add constraint FK_TB_SECTO_REF_TB_PARRO foreign key (CN_ID_PARROQUIA)
      references TB_PARROQUIA (CN_ID_PARROQUIA)
go

