package edu.vn.utils;

import java.sql.Types;

import org.hibernate.dialect.SQLServer2012Dialect;

public class CustomDialect extends SQLServer2012Dialect {

  public CustomDialect () {
    registerColumnType(Types.LONGNVARCHAR, "ntext");
    registerHibernateType(Types.LONGNVARCHAR, "string");
    registerColumnType(Types.NVARCHAR, "nvarchar(50)");
    registerHibernateType(Types.NVARCHAR, "nvarchar(50)");
  }
}