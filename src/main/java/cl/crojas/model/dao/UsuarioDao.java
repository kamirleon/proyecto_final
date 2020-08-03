package cl.crojas.model.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.crojas.model.entity.Usuario;


public interface UsuarioDao extends JpaRepository<Usuario, Integer>{

}
