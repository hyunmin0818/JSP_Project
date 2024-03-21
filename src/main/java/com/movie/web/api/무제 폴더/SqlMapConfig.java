package com.movie.web.mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.movie.web.dto.MovieDTO;

public class SqlMapConfig {
    private static SqlSessionFactory factory;

    // 클래스 초기화 블럭
    static {
        try {
            String resource = "./com/movie/web/mybatis/config.xml";
            InputStream inputStream = Resources.getResourceAsStream(resource);
            factory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("경로 이상");
        }
    }

    public static SqlSessionFactory getFactory() {
        return factory;
    }

    public static void insertMovie(MovieDTO mdto) {
        try (SqlSession session = factory.openSession()) {
            int rowsAffected = session.insert("mapper.movieinsert", mdto);
            if (rowsAffected > 0) {
                System.out.println("Movie inserted successfully.");
            } else {
                System.out.println("Failed to insert movie.");
            }
            session.commit();
        }
    }
    // 다른 MyBatis 메서드들을 추가할 수 있음
}