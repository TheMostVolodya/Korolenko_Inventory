package ru.zhdanov.korolenko_inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.zhdanov.korolenko_inventory.model.MashinAndEquipment;

import java.util.List;

@Repository
public interface MashinAndEquipmentRepository extends JpaRepository<MashinAndEquipment, Long> {
    List<MashinAndEquipment> getMashinAndEquipmentByInvertNumber(String invertNumber);
}
