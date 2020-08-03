package cl.crojas.model.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.crojas.model.entity.Desayuno;

public interface DesayunoDao extends JpaRepository<Desayuno,Integer> {
    Optional<Desayuno> findByCorreo(String correo);
}
