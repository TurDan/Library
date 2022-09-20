package com.testarmy.repository;

import com.testarmy.entity.ComputerGame;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ComputerGameRepository extends JpaRepository<ComputerGame, Long> {

}
