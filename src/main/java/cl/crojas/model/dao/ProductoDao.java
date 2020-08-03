package cl.crojas.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.crojas.model.entity.Producto;


public interface ProductoDao extends JpaRepository<Producto, Integer>{}
