package by.servlet;

import by.model.PriceOperation;
import by.model.QuantityOperation;
import by.model.SquareOperation;
import by.service.TotalPriceService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/")
public class PostprintServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getServletContext().getRequestDispatcher("/pages/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PriceOperation priceOperation = new PriceOperation();
        SquareOperation squareOperation = new SquareOperation();
        QuantityOperation quantityOperation = new QuantityOperation();
        TotalPriceService totalPriceService = new TotalPriceService();


        priceOperation.setMontageWorkPrice(Double.parseDouble(req.getParameter("montageWorkPrice")));
        priceOperation.setOneOttiskPrice(Double.parseDouble(req.getParameter("oneOttiskPrice")));
        squareOperation.setLengthSM(Double.parseDouble(req.getParameter("lengthSM")));
        squareOperation.setWidthSM(Double.parseDouble(req.getParameter("widthSM")));
        quantityOperation.setQuantity(Integer.parseInt(req.getParameter("quantity")));

        double result = totalPriceService.TotalPrice();

        req.setAttribute("result", result);

        getServletContext().getRequestDispatcher("/pages/index.jsp").forward(req, resp);

    }
}
