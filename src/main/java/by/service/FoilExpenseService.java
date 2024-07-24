package by.service;

import by.model.QuantityOperation;

public class FoilExpenseService {
SquareService squareService = new SquareService();
QuantityOperation quantityOperation = new QuantityOperation();
double totalFoilExpense = 0;
    public double getTotalFoilExpense() {
        totalFoilExpense = squareService.getSquareQuadraticMeter() * quantityOperation.getQuantity();
        return totalFoilExpense;
    }

}
