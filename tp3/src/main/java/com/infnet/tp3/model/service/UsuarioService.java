package com.infnet.tp3.model.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infnet.tp3.model.domain.Usuario;
import com.infnet.tp3.model.repository.UsuarioRepository;


@Service
public class UsuarioService {
    @Autowired
    private UsuarioRepository usuarioRepository;

    public Usuario incluir(Usuario usuario) {
        return usuarioRepository.save(usuario); 
    }

    public void excluir(Integer key){
        usuarioRepository.deleteById(key);
    }

    public Collection<Usuario> obterLista(){
        return (Collection<Usuario>) usuarioRepository.findAll();
    }
}