package ru.zhdanov.korolenko_inventory.exceptions;

public class MovPropertyNotFoundException extends RuntimeException {
    public MovPropertyNotFoundException(Long id){
        super("Could not found MovProperty with id " + id);
    }

}
