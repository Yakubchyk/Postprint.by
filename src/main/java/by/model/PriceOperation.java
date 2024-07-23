package by.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PriceOperation {

    private double oneOttiskPrice;
    private double montageWorkPrice;
    private double oneQuadratMetterFoilPrice;
}
