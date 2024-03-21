package com.movie.web.mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class insertMovie {

    public void insertMovieData(Map<String, Object> map) throws IOException {
        String resource = "./com/movie/web/mybatis/config.xml"; // MyBatis 설정 파일 경로
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        try (SqlSession session = sqlSessionFactory.openSession()) {
            session.insert("movieinsert", map);
            session.commit();
        }
    }

    // 다른 MyBatis 메서드들을 추가할 수 있음
}
