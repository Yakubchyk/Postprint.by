package by.service;

public class TotalPriceService {
    WorkPriceService workPriceService = new WorkPriceService();
    TotalFoilPriceService totalFoilPriceService = new TotalFoilPriceService();
    double totalPrice;

    public double TotalPrice() {
        totalPrice = workPriceService.getTotalWorkPrice() + totalFoilPriceService.TotalFoilPrice();
        return totalPrice;
    }
}
