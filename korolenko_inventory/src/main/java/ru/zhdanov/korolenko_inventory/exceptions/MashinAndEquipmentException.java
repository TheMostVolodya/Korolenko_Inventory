package ru.zhdanov.korolenko_inventory.exceptions;

public class MashinAndEquipmentException extends RuntimeException{
    public MashinAndEquipmentException(Long id){
        super("Could not found MashinAndEquipmentException with id " + id);
    }

}
