package com.avis.dojosandninjas.services;


import java.util.List;

import org.springframework.stereotype.Service;

import com.avis.dojosandninjas.models.Dojo;
import com.avis.dojosandninjas.models.Ninja;
import com.avis.dojosandninjas.repositories.DojoRepository;
import com.avis.dojosandninjas.repositories.NinjaRepository;

@Service
public class WebService {
	private final NinjaRepository ninjaRepository;
	private final DojoRepository dojoRepository;
	
	public WebService(NinjaRepository ninjaRepository, DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
		this.ninjaRepository = ninjaRepository;
	}
	
	//create ninja
	public Ninja createNinja(Ninja t) {
		return this.ninjaRepository.save(t);
	}
	//get all ninjas
	public List<Ninja> getAllNinjas(){
		return (List<Ninja>)this.ninjaRepository.findAll();
	}
	//get one ninja
	public Ninja getOneNinja(Long id) {
		return this.ninjaRepository.findById(id).orElse(null);
	}
	
	//create dojo
	public Dojo createDojo(Dojo d) {
		return this.dojoRepository.save(d);
	}
	//get all dojos
	public List<Dojo> getAllDojos(){
		return (List<Dojo>)this.dojoRepository.findAll();
	}
	
	//get one dojo by id
	public Dojo getOneDojo(Long id) {
		return this.dojoRepository.findById(id).orElse(null);
	}
	
}
