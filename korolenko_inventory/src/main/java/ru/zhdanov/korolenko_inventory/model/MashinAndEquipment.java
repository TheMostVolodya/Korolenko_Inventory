package ru.zhdanov.korolenko_inventory.model;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "mashinAndEquipment")  //машины и оборудование
@Data
public class MashinAndEquipment {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "name2")
    private String name;  //именование сущности

    @Column(name = "invertNumber2")
    private String invertNumber;    //инвертарный номер

    @Column(name = "room2")
    private String room;    //в какой комнате находится

    @Column(name = "depreciationGroup2")
    private String depreciationGroup;  //амортизационная группа

    @Column(name = "dateOfRegistration2")
    private Date dateOfRegistration;  //дата принятия к учету

    @Column(name = "usefulLife2")
    private String usefulLife;    //срок полезного использования

    @Column(name = "price2")
    private Double price;    //балансовая стоимость

    @Column(name = "quantity2")
    private String quantity;    //количество данных сущностей

}
