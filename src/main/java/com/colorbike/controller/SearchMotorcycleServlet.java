/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.colorbike.controller;

import com.colorbike.dao.CategoryDAO;
import com.colorbike.dao.MotorcycleDAO;
import com.colorbike.dao.PriceListDAO;
import com.colorbike.dto.Category;
import com.colorbike.dto.Motorcycle;
import com.colorbike.dto.PriceList;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author huypd
 */
@WebServlet(name = "SearchMotorcycleServlet", urlPatterns = {"/searchMotorcycle"})
public class SearchMotorcycleServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String key = request.getParameter("textSearch");
        
        MotorcycleDAO motorcycleDAO = MotorcycleDAO.getInstance();
        CategoryDAO categoryDAO = CategoryDAO.getInstance();
        PriceListDAO priceListDAO = PriceListDAO.getInstance();
        
        List<Category> categories = categoryDAO.getAllCategory();
        List<PriceList> priceLists = priceListDAO.getAllPriceList();
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        int count = motorcycleDAO.getTotalMotorcycles();
        int endPage = count / 9;
        if (count % 9 != 0) {
            endPage++;
        }

        List<Motorcycle> motorcycles = motorcycleDAO.searchAndPagingMotorcyclesByName(key, index);

        request.setAttribute("endP", endPage);
        request.setAttribute("key", key);
        
        Map<Integer, String> categoryMap = new HashMap<>();
        for (Category category : categories) {
            categoryMap.put(category.getCategoryID(), category.getCategoryName());
        }

        Map<Integer, Double> priceMap = new HashMap<>();
        for (PriceList priceList : priceLists) {
            priceMap.put(priceList.getPriceListId(), priceList.getDailyPriceForDay());
        }

        request.setAttribute("motorcycles", motorcycles);
        request.setAttribute("categories", categories);
        request.setAttribute("priceLists", priceLists);
        request.setAttribute("categoryMap", categoryMap);
        request.setAttribute("priceMap", priceMap);

        request.getRequestDispatcher("motorbikes.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
