package model.dao;

import model.dao.impl.JdbcDaoFactory;

public abstract class DaoFactory {
	private static DaoFactory daoFactory;

	public abstract PersonDao createPersonDao();
	
    public static DaoFactory getInstance(){
        if( daoFactory == null ){
            synchronized (DaoFactory.class){
                if(daoFactory==null){
                    DaoFactory temp = new JdbcDaoFactory();
                    daoFactory = temp;
                }
            }
        }
        return daoFactory;
    }
}
