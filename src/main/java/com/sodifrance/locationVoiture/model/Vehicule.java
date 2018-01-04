package com.sodifrance.locationVoiture.model;

import javax.persistence.Entity;

@Entity
public class Vehicule {
	
	private String modele;
	private String couleur;
	private double prixJournee;
	private int chevaux;
	
	public String getModele() {
		return modele;
	}
	public void setModele(String modele) {
		this.modele = modele;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public double getPrixJournee() {
		return prixJournee;
	}
	public void setPrixJournee(double prixJournee) {
		this.prixJournee = prixJournee;
	}
	public int getChevaux() {
		return chevaux;
	}
	public void setChevaux(int chevaux) {
		this.chevaux = chevaux;
	}
	
	public Vehicule(){};
	
	public Vehicule(String modele, String couleur, double prixJournee, int chevaux) {
		super();
		this.modele = modele;
		this.couleur = couleur;
		this.prixJournee = prixJournee;
		this.chevaux = chevaux;
	}
		
}
