package by.service;

import by.model.PriceOperation;
import by.model.QuantityOperation;

public class WorkPriceService {
    PriceOperation priceOperation = new PriceOperation();
    QuantityOperation quantityOperation = new QuantityOperation();
    double totalWorkPrice = 0;

    public double getTotalWorkPrice() {

        totalWorkPrice = (priceOperation.getMontageWorkPrice() + quantityOperation.getQuantity() * priceOperation.getOneOttiskPrice()) * 1.05;

        return totalWorkPrice;
    }
}
