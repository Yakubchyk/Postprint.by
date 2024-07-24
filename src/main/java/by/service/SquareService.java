package by.service;

import by.model.SquareOperation;

public class SquareService {

    SquareOperation squareOperation = new SquareOperation();
    double squareQuadraticMeter;

    public double getSquareQuadraticMeter() {

        squareQuadraticMeter = (squareOperation.getLengthSM() * squareOperation.getWidthSM()) / 10000;
        return squareQuadraticMeter;

    }
}
