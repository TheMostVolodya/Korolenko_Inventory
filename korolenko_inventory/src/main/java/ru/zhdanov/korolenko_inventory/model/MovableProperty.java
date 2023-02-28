package ru.zhdanov.korolenko_inventory.model;


import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "movableProperty")  //движимое имущество
@Data
public class MovableProperty {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;  //именование сущности

    @Column(name = "invertNumber")
    private String invertNumber;    //инвертарный номер

    @Column(name = "room")
    private String room;    //в какой комнате находится

    @Column(name = "depreciationGroup")
    private String depreciationGroup;  //амортизационная группа

    @Column(name = "dateOfRegistration")
    private Date dateOfRegistration;  //дата принятия к учету

    @Column(name = "usefulLife")
    private String usefulLife;    //срок полезного использования

    @Column(name = "price")
    private Double price;    //балансовая стоимость

    @Column(name = "quantity")
    private String quantity;    //количество данных сущностей



}
