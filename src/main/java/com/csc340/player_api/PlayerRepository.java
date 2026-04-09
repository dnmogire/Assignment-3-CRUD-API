package com.csc340.player_api;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * PlayerRepository - Data access layer for Player entities.
 * Extends JpaRepository to inherit standard CRUD operations.
 */
@Repository
public interface PlayerRepository extends JpaRepository<Player, Long> {

    /**
     * Custom query: Find all players with a given position.
     * e.g., position = "Forward", "Midfielder", "Defender", "Goalkeeper"
     */
    @Query("SELECT p FROM Player p WHERE p.position = ?1")
    List<Player> getPlayersByPosition(String position);

    /**
     * Custom query: Find all players whose name contains a given substring (case-insensitive).
     */
    @Query("SELECT p FROM Player p WHERE LOWER(p.name) LIKE LOWER(CONCAT('%', ?1, '%'))")
    List<Player> getPlayersByNameContaining(String name);
}