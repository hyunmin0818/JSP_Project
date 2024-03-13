package com.movie.web.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class movie2 {

	 private static HttpURLConnection connection;
	
	public static void main(String[] args) {
        JSONParser jsonParser = new JSONParser();
        String key = "H594OAKW457U2H270K93"; // 인증키 (개인이 받아와야 함)
        int list = 500;

        try {
        	String serviceKey = URLEncoder.encode(key, "UTF-8");
            String releaseDts = URLEncoder.encode(String.valueOf(20230101), "UTF-8");

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
                String posterUrl = (String) movieData.get("posterUrl");
                String stillUrl = (String) movieData.get("stillUrl");
                String vodClass = (String) movieData.get("vodClass");
                String vodUrl = (String) movieData.get("vodUrl");
                String screenArea = (String) movieData.get("screenArea");
                String Awards1 = (String) movieData.get("Awards1");
                String Awards2 = (String) movieData.get("Awards2");
                
                JSONArray directors = (JSONArray) ((JSONObject) movieData.get("directors")).get("director");
                JSONArray actors = (JSONArray) ((JSONObject) movieData.get("actors")).get("actor");
                JSONArray plots = (JSONArray) ((JSONObject) movieData.get("plots")).get("plot");
                
                String nation = (String) movieData.get("nation");
                String genre = (String) movieData.get("genre");
                String runtime = (String) movieData.get("runtime");

                System.out.println("MovieSeq: " + movieSeq);
                System.out.println("Title: " + title);
                System.out.println("English Title: " + titleEng);
                System.out.println("Production Year: " + prodYear);
                System.out.println("Nation: " + nation);
                System.out.println("Genre: " + genre);
                System.out.println("Runtime: " + runtime + " minutes");
                System.out.println("titleOrg: " + titleOrg);
                System.out.println("production_country: " + production_country);
                System.out.println("type: " + type);
                System.out.println("use: " + use);
                System.out.println("company: " + company);
                System.out.println("posterUrl: " + posterUrl);
                System.out.println("stillUrl: " + stillUrl);
                System.out.println("vodClass: " + vodClass);
                System.out.println("vodUrl: " + vodUrl);
                System.out.println("screenArea: " + screenArea);
                System.out.println("Awards1: " + Awards1);
                System.out.println("Awards2: " + Awards2);
                System.out.println("rating: " + rating);
                
                
                System.out.println("Directors:");
                for (Object director : directors) {
                    JSONObject dir = (JSONObject) director;
                    System.out.println("  " + dir.get("directorNm") + " (" + dir.get("directorEnNm") + ")");
                }
                System.out.println("Actors:");
                for (Object actor : actors) {
                    JSONObject act = (JSONObject) actor;
                    System.out.println("  " + act.get("actorNm") + " (" + act.get("actorEnNm") + ")");
                }
                System.out.println("plots:");
                for (Object plot : plots) {
                	JSONObject act = (JSONObject) plot;
                	System.out.println("  " + act.get("plotLang") + " (" + act.get("plotText") + ")");
                }
                
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
