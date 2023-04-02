package com.infnet.tp3.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infnet.tp3.clients.IEnderecoClient;
import com.infnet.tp3.model.domain.Endereco;

@Service
public class EnderecoService {

    @Autowired
    private IEnderecoClient enderecoClient;

    public Endereco buscaPorCep(String cep) {
        return enderecoClient.buscaPorCep(cep);
    }
}
