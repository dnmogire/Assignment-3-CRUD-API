package com.csc340.player_api;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Player Entity - represents a Manchester United football player.
 */
@Entity
@Table(name = "players")
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long playerId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    // Additional attributes
    private String position;       // e.g., "Forward", "Midfielder", "Defender", "Goalkeeper"
    private int jerseyNumber;
    private String nationality;
    private int age;
    private double marketValue;   // in millions GBP

    // Default constructor (required by JPA)
    public Player() {
    }

    // Parameterized constructor
    public Player(String name, String description, String position,
                  int jerseyNumber, String nationality, int age, double marketValue) {
        this.name = name;
        this.description = description;
        this.position = position;
        this.jerseyNumber = jerseyNumber;
        this.nationality = nationality;
        this.age = age;
        this.marketValue = marketValue;
    }

    // Getters and Setters
    public long getPlayerId() {
        return playerId;
    }

    public void setPlayerId(long playerId) {
        this.playerId = playerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getJerseyNumber() {
        return jerseyNumber;
    }

    public void setJerseyNumber(int jerseyNumber) {
        this.jerseyNumber = jerseyNumber;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getMarketValue() {
        return marketValue;
    }

    public void setMarketValue(double marketValue) {
        this.marketValue = marketValue;
    }
}