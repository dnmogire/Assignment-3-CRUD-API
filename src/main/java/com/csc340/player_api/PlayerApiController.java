package com.csc340.player_api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * PlayerApiController - REST Controller exposing all CRUD endpoints for the Manchester United Player API.
 * Base URL: /players
 */
@RestController
@RequestMapping("/players")
public class PlayerApiController {

    @Autowired
    private PlayerService playerService;

    /**
     * GET /players
     * Returns a list of all players.
     */
    @GetMapping("")
    public List<Player> getAllPlayers() {
        return playerService.getAllPlayers();
    }

    /**
     * GET /players/{playerId}
     * Returns a single player by ID.
     */
    @GetMapping("/{playerId}")
    public Player getPlayerById(@PathVariable long playerId) {
        return playerService.getPlayerById(playerId);
    }

    /**
     * POST /players
     * Adds a new player. Request body must be JSON. Do NOT include playerId.
     */
    @PostMapping("")
    public Player addPlayer(@RequestBody Player player) {
        return playerService.addPlayer(player);
    }

    /**
     * PUT /players/{playerId}
     * Updates an existing player. Request body must be JSON.
     */
    @PutMapping("/{playerId}")
    public Player updatePlayer(@PathVariable long playerId, @RequestBody Player player) {
        return playerService.updatePlayer(playerId, player);
    }

    /**
     * DELETE /players/{playerId}
     * Deletes a player by ID.
     */
    @DeleteMapping("/{playerId}")
    public String deletePlayer(@PathVariable long playerId) {
        playerService.deletePlayer(playerId);
        return "Player with ID " + playerId + " has been deleted.";
    }

    /**
     * GET /players/position/{position}
     * Returns all players at a given position (category).
     * e.g., GET /players/position/Forward
     */
    @GetMapping("/position/{position}")
    public List<Player> getPlayersByPosition(@PathVariable String position) {
        return playerService.getPlayersByPosition(position);
    }

    /**
     * GET /players/search?name=substring
     * Returns players whose name contains the given substring (case-insensitive).
     * e.g., GET /players/search?name=bruno
     */
    @GetMapping("/search")
    public List<Player> searchPlayersByName(@RequestParam String name) {
        return playerService.getPlayersByNameContaining(name);
    }
}