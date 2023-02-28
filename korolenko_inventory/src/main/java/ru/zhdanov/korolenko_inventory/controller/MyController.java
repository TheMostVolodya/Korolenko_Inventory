package ru.zhdanov.korolenko_inventory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ru.zhdanov.korolenko_inventory.exceptions.MashinAndEquipmentException;
import ru.zhdanov.korolenko_inventory.exceptions.MovPropertyNotFoundException;
import ru.zhdanov.korolenko_inventory.model.MashinAndEquipment;
import ru.zhdanov.korolenko_inventory.model.MovableProperty;
import ru.zhdanov.korolenko_inventory.repository.MashinAndEquipmentRepository;
import ru.zhdanov.korolenko_inventory.repository.MovablePropertyRepository;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin("http://192.168.0.100:3000")
public class MyController {

    @Autowired
    private MovablePropertyRepository movablePropertyRepository;
    @Autowired
    private MashinAndEquipmentRepository mashinAndEquipmentRepository;


    //получение всех MovableProperty
    @GetMapping("/showAllMovProperty")
    public List<MovableProperty> showAllMovProperty() {
        return movablePropertyRepository.findAll();
    }


    //получение MovableProperty по id
    @GetMapping("/MovProperty/{id}")
    MovableProperty getMovPropertyById(@PathVariable Long id) {
        return movablePropertyRepository.findById(id).
                orElseThrow(() -> new MovPropertyNotFoundException(id));
    }

    //получение MovableProperty по invertNumber
    @GetMapping("/MovProperty2/{invertNumber}")
    public List<MovableProperty> getMovPropertyByInvNumb(@PathVariable String invertNumber) {
        List<MovableProperty> movProp = movablePropertyRepository.getMovPropertyByInvertNumber(invertNumber);
        return movProp;
    }


    //добавление MovableProperty
    @PostMapping("/addMovProperty")
    public MovableProperty addMovProperty(@RequestBody MovableProperty movProperty) {
        return movablePropertyRepository.save(movProperty);
    }

    //изменение MovableProperty
    @PutMapping("/MovProperty/{id}")
    MovableProperty updateMovProperty(@RequestBody MovableProperty newMovProperty,
                                      @PathVariable Long id) {
        return movablePropertyRepository.findById(id).
                map(movProperty -> {
                    movProperty.setName(newMovProperty.getName());
                    movProperty.setInvertNumber(newMovProperty.getInvertNumber());
                    movProperty.setRoom(newMovProperty.getRoom());
                    movProperty.setDepreciationGroup(newMovProperty.getDepreciationGroup());
                    movProperty.setDateOfRegistration(newMovProperty.getDateOfRegistration());
                    movProperty.setUsefulLife(newMovProperty.getUsefulLife());
                    movProperty.setPrice(newMovProperty.getPrice());
                    movProperty.setQuantity(newMovProperty.getQuantity());
                    return movablePropertyRepository.save(movProperty);

                }).orElseThrow(() -> new MovPropertyNotFoundException(id));
    }


    //удаление MovableProperty
    @DeleteMapping("/MovProperty/{id}")
    public String deleteMOvProperty(@PathVariable Long id) {
        if (!movablePropertyRepository.existsById(id)) {
            throw new MovPropertyNotFoundException(id);
        }
        movablePropertyRepository.deleteById(id);
        return "MovableProperty with ID = " + id + " deleted.";
    }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //получение всех MashinAndEquipment
    @GetMapping("/showAllMashAndEqui")
    public List<MashinAndEquipment> showAllMashAndEqui() {
        return mashinAndEquipmentRepository.findAll();
    }

    //получение MashinAndEquipment по id
    @GetMapping("/MashAndEqui/{id}")
    MashinAndEquipment getMashAndEquiById(@PathVariable Long id) {
        return mashinAndEquipmentRepository.findById(id).
                orElseThrow(() -> new MashinAndEquipmentException(id));
    }

    //получение MashinAndEquipment по invertNumber
    @GetMapping("/MashAndEqui2/{invertNumber}")
    public List<MashinAndEquipment> getMashinAndEquiByInvertNumb(@PathVariable String invertNumber) {
        List<MashinAndEquipment> mashAndEqui = mashinAndEquipmentRepository.getMashinAndEquipmentByInvertNumber(invertNumber);
        return mashAndEqui;
    }

    //добавление MashinAndEquipment
    @PostMapping("/addMashAndEqui")
    public MashinAndEquipment addMashAndEqui(@RequestBody MashinAndEquipment mashAndEqui) {
        return mashinAndEquipmentRepository.save(mashAndEqui);
    }

    //изменение MashinAndEquipment
    @PutMapping("/MashAndEqui/{id}")
    MashinAndEquipment updateMashAndEqui(@RequestBody MashinAndEquipment newMashAndEqui,
                                         @PathVariable Long id) {
        return mashinAndEquipmentRepository.findById(id).
                map(mashAndEqui -> {
                    mashAndEqui.setName(newMashAndEqui.getName());
                    mashAndEqui.setInvertNumber(newMashAndEqui.getInvertNumber());
                    mashAndEqui.setRoom(newMashAndEqui.getRoom());
                    mashAndEqui.setDepreciationGroup(newMashAndEqui.getDepreciationGroup());
                    mashAndEqui.setDateOfRegistration(newMashAndEqui.getDateOfRegistration());
                    mashAndEqui.setUsefulLife(newMashAndEqui.getUsefulLife());
                    mashAndEqui.setPrice(newMashAndEqui.getPrice());
                    mashAndEqui.setQuantity(newMashAndEqui.getQuantity());
                    return mashinAndEquipmentRepository.save(mashAndEqui);

                }).orElseThrow(() -> new MashinAndEquipmentException(id));
    }


    //удаление MashinAndEquipment
    @DeleteMapping("/MashAndEqui/{id}")
    public String deleteMashAndEqui(@PathVariable Long id) {
        if (!mashinAndEquipmentRepository.existsById(id)) {
            throw new MashinAndEquipmentException(id);
        }
        mashinAndEquipmentRepository.deleteById(id);
        return "MashinAndEquipment with ID = " + id + " deleted.";
    }
}
