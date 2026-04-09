package com.csc340.player_api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/mvc/players")
public class PlayerMvcController {

    @Autowired
    private PlayerService playerService;

    @GetMapping("")
    public String getAllPlayers(Model model) {
        model.addAttribute("playerList", playerService.getAllPlayers());
        model.addAttribute("title", "Player Gallery");
        return "player-list";
    }

    @GetMapping("/{playerId}")
    public String getPlayerById(@PathVariable long playerId, Model model) {
        model.addAttribute("player", playerService.getPlayerById(playerId));
        model.addAttribute("title", "Player Details");
        return "player-details";
    }

    @GetMapping("/createForm")
    public String showCreateForm(Model model) {
        model.addAttribute("title", "Add New Player");
        return "player-create";
    }

    @PostMapping("/create")
    public String createPlayer(Player player) {
        Player saved = playerService.addPlayer(player);
        return "redirect:/mvc/players/" + saved.getPlayerId();
    }

    @GetMapping("/updateForm/{playerId}")
    public String showUpdateForm(@PathVariable long playerId, Model model) {
        Player player = playerService.getPlayerById(playerId);
        model.addAttribute("player", player);
        model.addAttribute("title", "Update Player: " + player.getName());
        return "player-update";
    }

    @PostMapping("/update/{playerId}")
    public String updatePlayer(@PathVariable long playerId, Player player) {
        playerService.updatePlayer(playerId, player);
        return "redirect:/mvc/players/" + playerId;
    }

    @GetMapping("/delete/{playerId}")
    public String deletePlayer(@PathVariable long playerId) {
        playerService.deletePlayer(playerId);
        return "redirect:/mvc/players";
    }

    @GetMapping("/position/{position}")
    public String getPlayersByPosition(@PathVariable String position, Model model) {
        model.addAttribute("playerList", playerService.getPlayersByPosition(position));
        model.addAttribute("title", "Players – " + position);
        model.addAttribute("filterLabel", position);
        return "player-list";
    }

    @GetMapping("/search")
    public String searchPlayers(@RequestParam String name, Model model) {
        model.addAttribute("playerList", playerService.getPlayersByNameContaining(name));
        model.addAttribute("title", "Search results for: " + name);
        model.addAttribute("searchTerm", name);
        return "player-list";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("title", "About");
        return "about";
    }
}