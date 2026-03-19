package com.inumakidavid.gamestore.Repository;

import org.springframework.data.repository.CrudRepository;

import com.inumakidavid.gamestore.Model.Game;

public interface GameRepository extends CrudRepository<Game, Integer> {
    
}
