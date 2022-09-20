package com.testarmy.controller;

import com.testarmy.entity.ComputerGame;
import com.testarmy.repository.ComputerGameRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("/game")
public class ComputerGameController {
    ComputerGameRepository computerGameRepository;

    public ComputerGameController(ComputerGameRepository computerGameRepository) {
        this.computerGameRepository = computerGameRepository;
    }

    @GetMapping("/add")
    public String addGame(Model model) {
        ComputerGame game = new ComputerGame();
        model.addAttribute("game", game);
        return "computer_game_form";
    }

    @PostMapping("/save")
    @ResponseBody
    public String saveGame(@ModelAttribute ComputerGame game) {
        computerGameRepository.save(game);
        return "redirect:/game/";
    }
}
