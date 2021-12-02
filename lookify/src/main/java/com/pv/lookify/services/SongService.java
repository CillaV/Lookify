package com.pv.lookify.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pv.lookify.models.Song;
import com.pv.lookify.repositories.SongRepository;

@Service
public class SongService {

	// alt method instead of dependency injection
	// @Autowired 
	// SongRepository repository;
	
	private final SongRepository songRepo;
	
	public SongService(SongRepository songRepo) {
		this.songRepo = songRepo;
	}
	
// returns all songs
	public List<Song> allSongs() {
		return this.songRepo.findAll();
	}
	
// save a new song
	public Song addSong(Song a) {
		return this.songRepo.save(a);
	}
	
// show one song with info
	public Song showSong(Long id) {
		return this.songRepo.findById(id).orElse(null);
	}
	
// delete a song
	public void deleteSong(Long id) {
		this.songRepo.deleteById(id);
	}
	
// show top ten songs
	public List<Song> topTenSongs() {
		return this.songRepo.findFirst10ByOrderByRatingDesc();
	}
	
// search songs by artist
	public List<Song> searchArtist(String artist) {
		return this.songRepo.findByArtistContaining(artist);
	}
	
}
