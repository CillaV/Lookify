package com.pv.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pv.lookify.models.Song;


@Repository
public interface SongRepository extends CrudRepository<Song, Long> {

	List<Song> findAll();
	
	// search by partial artist name
	List<Song> findByArtistContaining(String search);
	
	
	// order by rating
	List<Song> findFirst10ByOrderByRatingDesc();
	
}
