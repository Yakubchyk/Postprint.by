package by.servlet;

import by.model.VariableParametersOperation;
import by.service.TotalPriceService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tisnenie")
public class TisnenieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/pages/tisnenie.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            final int quantity = Integer.parseInt(req.getParameter("quantity"));
            final double oneOttiskPrice = Double.parseDouble(req.getParameter("oneOttiskPrice"));
            final double montageWorkPrice = Double.parseDouble(req.getParameter("montageWorkPrice"));
            final double oneQuadratMetterFoilPrice = Double.parseDouble(req.getParameter("oneQuadratMetterFoilPrice"));
            final double widthSM = Double.parseDouble(req.getParameter("widthSM"));
            final double lengthSM = Double.parseDouble(req.getParameter("lengthSM"));

            VariableParametersOperation variableParametersOperation = new VariableParametersOperation(
                    quantity,
                    oneOttiskPrice,
                    montageWorkPrice,
                    oneQuadratMetterFoilPrice,
                    widthSM,
                    lengthSM
            );

            TotalPriceService totalPriceService = new TotalPriceService();
            double result = totalPriceService.getTotalPrice(variableParametersOperation);

            req.setAttribute("result", result);
        } catch (NumberFormatException e) {
        }
        req.getRequestDispatcher("/pages/tisnenie.jsp").forward(req, resp);

    }
}
