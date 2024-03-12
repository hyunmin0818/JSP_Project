package com.movie.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class API {
    public static void main(String[] args) throws Exception {
        try {
            // API 엔드포인트 URL
            URL url = new URL("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_xml2(또는 search_json2).jsp?collection=kmdb_new2");

            // HttpURLConnection 객체 생성
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // GET 메서드 설정
            connection.setRequestMethod("GET");

            // 응답 코드 확인
            int responseCode = connection.getResponseCode();
            System.out.println("Response Code: " + responseCode);

            // 응답 데이터 읽기
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String inputLine;
            StringBuilder response = new StringBuilder();

            while ((inputLine = reader.readLine()) != null) {
                response.append(inputLine);
            }
            reader.close();

            // 응답 출력
            System.out.println("Response: " + response.toString());

            // 연결 종료
            connection.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
