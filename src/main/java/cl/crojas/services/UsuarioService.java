package cl.crojas.services;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.crojas.model.dao.UsuarioDao;
import cl.crojas.model.entity.Usuario;



@Service
public class UsuarioService {
	private Logger logger = LoggerFactory.getLogger(UsuarioService.class);

	@Autowired
	private UsuarioDao dao;

	public Usuario registrarUsuario(Usuario usuario) {
	    logger.info("Servicio: registra usuarios");
	    return dao.save(usuario);
	}

}
