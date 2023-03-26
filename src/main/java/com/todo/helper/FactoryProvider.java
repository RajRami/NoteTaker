package com.todo.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.File;

public class FactoryProvider {
    private static SessionFactory factory;

    public static SessionFactory getFactory() {

        if (factory == null) {
            String path = "C:\\Users\\Owner\\IdeaProjects\\NoteTaker\\src\\main\\resources\\hibernate.cfg.xml";
            File hibernate = new File(path);
            factory = new Configuration().configure(hibernate).buildSessionFactory();
        }
        return factory;
    }

    public void closeFactory() {
        if (factory.isOpen()) {
            factory.close();
        }
    }
}
