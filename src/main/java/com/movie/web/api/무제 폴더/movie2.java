package com.movie.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.movie.web.dao.UserDAO;
import com.movie.web.dto.MovieDTO;

public class movie2 {

	 private static HttpURLConnection connection;
	
	public static void main(String[] args) {
        JSONParser jsonParser = new JSONParser();
        MovieDTO mdto = new MovieDTO();
        UserDAO udao = new UserDAO();
        String key = "H594OAKW457U2H270K93"; // 인증키 (개인이 받아와야 함)
        int list = 500;

        try {
        	String serviceKey = URLEncoder.encode(key, "UTF-8");
            String releaseDts = URLEncoder.encode(String.valueOf(20100101), "UTF-8");

            URL url = new URL("http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2" +
                    "&ServiceKey=" + serviceKey +
                    "&detail=Y" +
                    "&listCount=" + list +
                    "&releaseDts=" + releaseDts);
            
            
            connection = (HttpURLConnection) url.openConnection();
            
            connection.setRequestMethod("GET");
            connection.setConnectTimeout(5000);
            connection.setReadTimeout(5000);

            int status = connection.getResponseCode();
            if (status > 299) {
                throw new RuntimeException("API 호출 실패. 응답 코드: " + status);
            } else {
                BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                StringBuffer responseContent = new StringBuffer();
                String line;

                while ((line = reader.readLine()) != null) {
                    responseContent.append(line);
                }
                reader.close();
                
                JSONObject responseData = (JSONObject) jsonParser.parse(responseContent.toString());
                JSONArray data = (JSONArray) responseData.get("Data");

                for (Object movieObj : data) {
                    JSONArray resultArray = (JSONArray) ((JSONObject) movieObj).get("Result");
                    for (int i = 0; i < resultArray.size(); i++) {
                        JSONObject movieData = (JSONObject) resultArray.get(i);

                String movieSeq = (String) movieData.get("movieSeq");
                String title = (String) movieData.get("title");
                String titleEng = (String) movieData.get("titleEng");
                String titleOrg = (String) movieData.get("titleOrg");
                String prodYear = (String) movieData.get("prodYear");
                String production_country = (String) movieData.get("production_country");
                String type = (String) movieData.get("type");
                String rating = (String) movieData.get("rating");
                String use = (String) movieData.get("use");
                String company = (String) movieData.get("company");
                String posterUrl = (String) movieData.get("posters");
                if (posterUrl.length() > 255) {
                    // 최대 길이를 초과할 경우 문자열을 잘라내어 최대 길이로 조정
                	posterUrl = posterUrl.substring(0, 61);
                }
                String stillUrl = (String) movieData.get("stlls");
                if (stillUrl.length() > 255) {
                    // 최대 길이를 초과할 경우 문자열을 잘라내어 최대 길이로 조정
                	stillUrl = stillUrl.substring(0, 65);
                }
                String vodClass = (String) movieData.get("vodClass");
                String vodUrl = (String) movieData.get("vodUrl");
                String screenArea = (String) movieData.get("screenArea");
                String audiAcc = (String) movieData.get("audiAcc");
                String Awards1 = (String) movieData.get("Awards1");
                String Awards2 = (String) movieData.get("Awards2");
                
                JSONArray directors = (JSONArray) ((JSONObject) movieData.get("directors")).get("director");
                
                StringBuilder directorNmStringBuilder = new StringBuilder();
                StringBuilder directorIdStringBuilder = new StringBuilder();

                for (Object directorObj : directors) {
                    JSONObject director = (JSONObject) directorObj;
                    String directorNm = (String) director.get("directorNm");
                    String directorId = (String) director.get("directorId");
                    
                    // 각각의 directorNm과 directorId를 각각의 StringBuilder에 추가합니다.
                    directorNmStringBuilder.append(directorNm).append("\n");
                    directorIdStringBuilder.append(directorId).append("\n");
                }

                String directorNmString = directorNmStringBuilder.toString();
                String directorIdString = directorIdStringBuilder.toString();
                
                JSONArray actors = (JSONArray) ((JSONObject) movieData.get("actors")).get("actor");
                
                StringBuilder actorNmStringBuilder = new StringBuilder();
                StringBuilder actorIdStringBuilder = new StringBuilder();

                for (Object actorObj : actors) {
                    JSONObject actor = (JSONObject) actorObj;
                    String actorNm = (String) actor.get("actorNm");
                    String actorId = (String) actor.get("actorId");

                    // 각 배우의 이름과 아이디를 각각의 StringBuilder에 추가합니다.
                    actorNmStringBuilder.append(actorNm).append("\n");
                    actorIdStringBuilder.append(actorId).append("\n");
                }

                String actorNmString = actorNmStringBuilder.toString();
                if (actorNmString.length() > 255) {
                    // 최대 길이를 초과할 경우 문자열을 잘라내어 최대 길이로 조정
                	actorNmString = actorNmString.substring(0, 255);
                }
                String actorIdString = actorIdStringBuilder.toString();
                
                
                JSONArray plots = (JSONArray) ((JSONObject) movieData.get("plots")).get("plot");
                          
                StringBuilder plotLangStringBuilder = new StringBuilder();
                StringBuilder plotTextStringBuilder = new StringBuilder();

                for (Object plotObj : plots) {
                    JSONObject plot = (JSONObject) plotObj;
                    String plotLang = (String) plot.get("plotLang");
                    String plotText = (String) plot.get("plotText");

                    // 각 플롯의 언어와 텍스트를 각각의 StringBuilder에 추가합니다.
                    plotLangStringBuilder.append(plotLang).append("\n");
                    plotTextStringBuilder.append(plotText).append("\n");
                }

                String plotLangString = plotLangStringBuilder.toString();
                String plotTextString = plotTextStringBuilder.toString();
                
                String nation = (String) movieData.get("nation");
                String repRlsDate = (String) movieData.get("repRlsDate");
                String genre = (String) movieData.get("genre");
                String runtime = (String) movieData.get("runtime");
                int runtimeValue = 0;
                if (!runtime.isEmpty()) {
                	runtimeValue = Integer.parseInt(runtime);
                }
                
                mdto.setMovieSeq(movieSeq);
        		mdto.setTitle(title);
        		mdto.setTitleEng(titleEng);
        		mdto.setTitleOrg(titleOrg);
        		mdto.setProduction_country(production_country);
        		mdto.setProdYear(Integer.parseInt(prodYear));
        		mdto.setReleaseDate(Integer.parseInt(repRlsDate));
        		mdto.setRuntime(runtimeValue);
        		mdto.setRating(rating);
        		mdto.setType(type);
        		mdto.setGenre(genre);
        		mdto.setUse(use);
        		mdto.setDirectorNm(directorNmString);
        		mdto.setActorEnNm(actorNmString);
        		mdto.setNation(nation);
        		mdto.setCompany(company);
        		mdto.setPlot(plotTextString);
        		mdto.setPosterUrl(posterUrl);
        		mdto.setStillUrl(stillUrl);
        		mdto.setVodClass(vodClass);
        		mdto.setVodUrl(vodUrl);
        		mdto.setScreenArea(screenArea);
        		mdto.setAwards1(Awards1);
        		mdto.setAwards2(Awards2);
                
                
                udao.insertMovie(mdto);
                
               
                
            }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            connection.disconnect();
        }
    }
}
