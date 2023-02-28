package ru.zhdanov.korolenko_inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import ru.zhdanov.korolenko_inventory.model.MovableProperty;

import java.util.List;

@Repository
public interface MovablePropertyRepository extends JpaRepository<MovableProperty, Long> {
    List<MovableProperty> getMovPropertyByInvertNumber(String invertNumber);
}
