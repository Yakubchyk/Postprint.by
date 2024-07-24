package by.service;

import by.model.PriceOperation;

public class TotalFoilPriceService {

    FoilExpenseService foilExpenseService = new FoilExpenseService();
    PriceOperation priceOperation = new PriceOperation();
    double totalFoilPrice;

    public double TotalFoilPrice() {
        totalFoilPrice = (foilExpenseService.getTotalFoilExpense() * priceOperation.getOneQuadratMetterFoilPrice()) * 1.25;
        return totalFoilPrice;
    }
}
