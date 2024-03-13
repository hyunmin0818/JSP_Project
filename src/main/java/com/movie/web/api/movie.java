package com.movie.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class movie {

    public static void main(String[] args) {
    
        // 인증키 (개인이 받아와야 함)
        String key = "H594OAKW457U2H270K93";

        // 파싱한 데이터를 저장할 변수
        String result = "";

        try {

            // API 요청 URL 생성
            URL url = new URL("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2"
                    + "&listCount=500&ServiceKey=" + key);

            // API 응답 데이터 읽기
            BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
            result = bf.readLine();

            // JSON 파서 초기화
            JSONParser jsonParser = new JSONParser();
            
            // JSON 데이터를 파싱하여 JSONObject로 변환
            JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
            JSONObject movieInfoResult = (JSONObject) jsonObject.get("movieInfoResult");
            JSONObject movieInfo = (JSONObject) movieInfoResult.get("movieInfo");

            // 필요한 정보 추출
            JSONArray nations = (JSONArray) movieInfo.get("nations");
            JSONObject nations_nationNm = (JSONObject) nations.get(0);

            JSONArray directors = (JSONArray) movieInfo.get("directors");
            JSONObject directors_peopleNm = (JSONObject) directors.get(0);

            JSONArray genres = (JSONArray) movieInfo.get("genres");

            JSONArray actors = (JSONArray) movieInfo.get("actors");

            // 출력
            System.out.println("영화코드 : " + movieInfo.get("movieCd"));
            System.out.println("영화명(한글) : " + movieInfo.get("movieNm"));
            System.out.println("영화명(영문) : " + movieInfo.get("movieNmEn"));
            System.out.println("재생시간 : " + movieInfo.get("showTm"));
            System.out.println("개봉일 : " + movieInfo.get("openDt"));
            System.out.println("영화유형 : " + movieInfo.get("typeNm"));
            System.out.println("제작국가명 : " + nations_nationNm.get("nationNm"));

            String genreNm = "";

            // 장르 정보 추출
            for (int i = 0; i < genres.size(); i++) {
                JSONObject genres_genreNm = (JSONObject) genres.get(i);
                genreNm += genres_genreNm.get("genreNm") + " ";
            }

            System.out.println("장르 : " + genreNm);

            System.out.println("감독명 : " + directors_peopleNm.get("peopleNm"));

            String peopleNm = "";

            // 출연 배우 정보 추출
            for (int i = 0; i < actors.size(); i++) {
                JSONObject actors_peopleNm = (JSONObject) actors.get(i);
                peopleNm += actors_peopleNm.get("peopleNm") + " ";
            }

            System.out.println("출연배우 : " + peopleNm);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
