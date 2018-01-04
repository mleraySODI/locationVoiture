package com.sodifrance.locationVoiture.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sodifrance.locationVoiture.model.Vehicule;

@Controller
@RequestMapping(value = {"/", "/vehicules"})
@Secured("USER")
public class VehiculesController {
	
	/**
	 * Permet d'acc�der � l'IHM pr�sentant la liste des v�hicules louable.
	 * @param myModel
	 * @return
	 */
    @RequestMapping(method = RequestMethod.GET)
    public String afficherBonjour(Model myModel) {
        
    	List<Vehicule> vehicules = new ArrayList<Vehicule>();
    	
    	vehicules.add(new Vehicule("Mustang", "rouge", 200, 300));
    	vehicules.add(new Vehicule("Clio", "bleue", 50, 100));
    	
    	// Le mod�le (les donn�es) qui sera transmit � la vue
    	myModel.addAttribute("vehicules", vehicules);
    	
    	// La vue qui sera retourn� au client
        return "vehicules";
    }
    

    /**
     * Permet de d�brancher vers l'IHM d'jaout d'un nouveau v�hicule.
     * Seul les utilisateur ayant le r�le ADMIN peuvent acc�der � cette fonctionnalit�
     * @return
     */
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping(value = "/ajouterVehicule", method = RequestMethod.GET)
    public String ajouterVehicule() {
    	return "ajoutVehicule";
    }
}
