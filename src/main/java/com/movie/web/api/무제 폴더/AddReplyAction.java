package com.movie.web.servlet;


import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.MovieDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.movie.web.dao.UserDAO;
import com.movie.web.dto.MovieDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddReplyAction extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDAO udao = new UserDAO();
        MovieDTO mdto = new MovieDTO();

        mdto.setMovieSeq(request.getParameter("movieSeq"));
        mdto.setTitle(request.getParameter("username"));
        mdto.setTitleEng(request.getParameter("titleEng"));
        mdto.setTitleOrg(request.getParameter("titleOrg"));
        mdto.setProduction_country(request.getParameter("production_country"));
        mdto.setProdYear(Integer.parseInt(request.getParameter("prodYear")));
        mdto.setRuntime(Integer.parseInt(request.getParameter("runtime")));
        mdto.setRating(request.getParameter("rating"));
        mdto.setType(request.getParameter("type"));
        mdto.setGenre(request.getParameter("genre"));
        mdto.setUse(request.getParameter("use"));
        mdto.setDirectorId(Integer.parseInt(request.getParameter("directorIdString")));
        mdto.setDirectorNm(request.getParameter("directorNmString"));
        mdto.setActorId(request.getParameter("actorIdString"));
        mdto.setActorEnNm(request.getParameter("actorNmString"));
        mdto.setNation(request.getParameter("nation"));
        mdto.setCompany(request.getParameter("company"));
        mdto.setPlot(request.getParameter("plotTextString"));
        mdto.setPosterUrl(request.getParameter("posterUrl"));
        mdto.setStillUrl(request.getParameter("stillUrl"));
        mdto.setVodClass(request.getParameter("vodClass"));
        mdto.setVodUrl(request.getParameter("vodUrl"));
        mdto.setScreenArea(request.getParameter("screenArea"));
        mdto.setAudiAcc(Integer.parseInt(request.getParameter("audiAcc")));
        mdto.setAwards1(request.getParameter("Awards1"));
        mdto.setAwards2(request.getParameter("Awards2"));


    }

}









