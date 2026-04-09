package com.csc340.player_api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * PlayerService - Service layer that centralizes all data access for Player entities.
 */
@Service
public class PlayerService {

    @Autowired
    private PlayerRepository playerRepository;

    /**
     * Get all players.
     */
    public List<Player> getAllPlayers() {
        return playerRepository.findAll();
    }

    /**
     * Get a single player by ID.
     */
    public Player getPlayerById(long playerId) {
        return playerRepository.findById(playerId).orElse(null);
    }

    /**
     * Add a new player.
     */
    public Player addPlayer(Player player) {
        if (player != null) {
            return playerRepository.save(player);
        }
        return null;
    }

    /**
     * Update an existing player by ID.
     */
    public Player updatePlayer(long playerId, Player updatedPlayer) {
        Player existing = playerRepository.findById(playerId).orElse(null);
        if (existing != null) {
            existing.setName(updatedPlayer.getName());
            existing.setDescription(updatedPlayer.getDescription());
            existing.setPosition(updatedPlayer.getPosition());
            existing.setJerseyNumber(updatedPlayer.getJerseyNumber());
            existing.setNationality(updatedPlayer.getNationality());
            existing.setAge(updatedPlayer.getAge());
            existing.setMarketValue(updatedPlayer.getMarketValue());
            return playerRepository.save(existing);
        }
        return null;
    }

    /**
     * Delete a player by ID.
     */
    public void deletePlayer(long playerId) {
        playerRepository.deleteById(playerId);
    }

    /**
     * Get all players by position (category).
     */
    public List<Player> getPlayersByPosition(String position) {
        return playerRepository.getPlayersByPosition(position);
    }

    /**
     * Get players whose name contains a given substring.
     */
    public List<Player> getPlayersByNameContaining(String name) {
        return playerRepository.getPlayersByNameContaining(name);
    }
}