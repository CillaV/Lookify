package com.pv.lookify.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pv.lookify.models.Song;
import com.pv.lookify.services.SongService;

@Controller
public class SongController {
	
	private final SongService songService;
	
	public SongController(SongService songService) {
		this.songService = songService;
	}
	
// welcome page
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
// show dash board with all songs
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("songs", this.songService.allSongs());
		return "dashboard.jsp";
	}
	
// show new song form
	@GetMapping("/songs/new")
	public String songForm(@ModelAttribute("song") Song song, Model model) {
		model.addAttribute("songs", this.songService.allSongs());
		return "newSongForm.jsp";
	}
	
// add new song
	@PostMapping("/songs/new")
	public String addSong(@Valid @ModelAttribute("song") Song song, BindingResult result, Model model) {
		if (result.hasErrors()) {
			// List<Song> 
			model.addAttribute("songs", this.songService.allSongs());
			return "newSongForm.jsp";
		}
		else {
			songService.addSong(song);
			return "redirect:/dashboard";
		}
	}
	
	
	
// show top songs
	@GetMapping("/search/topten")
	public String topSongs(Model model) {
		model.addAttribute("songs", this.songService.topTenSongs());
		return "topTenSongs.jsp";
	}
	
	
// show one song info
	@GetMapping("/songs/{id}")
	public String songInfo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("song", this.songService.showSong(id));
		return "songInfo.jsp";
	}
	
// search for artist
	@GetMapping("/search")
	public String searchForArtist(@RequestParam("artist") String artist, Model model) {
		// search artists in song list
		model.addAttribute("songs", this.songService.searchArtist(artist));
		// display artist from request parameters
		model.addAttribute("artists", artist);
		return "searchResults.jsp";
	}
	

	
	
	
// delete a song
	@PostMapping("/songs/{id}/delete")
	public String deleteSong() {
		return "redirect:/dashboard";
	}
		
	

}
