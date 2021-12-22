--music code written by ForestDragon:
    function TLU_smooth_replace_music(new_track,fade_out_time,fade_in_time)
    
        wesnoth.music_list.volume = 100 --percentage of the volume in settings
    
        if fade_out_time then else
            fade_out_time = 2000-- if no delay is provided in the function, use a default value
        end
    
        delay_time = fade_out_time / 10 -- since the fade out takes roughly 10 steps, divide the time by 10
    
        while wesnoth.music_list.volume >= 10 do
            wesnoth.music_list.volume = wesnoth.music_list.volume - 10
--            repeats = repeats - 1
            wesnoth.delay(delay_time)
--            wesnoth.message(wesnoth.music_list.volume)
        end

        wesnoth.music_list.volume = 0
    
        wesnoth.music_list.clear()
        wesnoth.music_list.add(new_track, true)

        if fade_in_time then else
            fade_in_time = 0-- if no delay is provided in the function, fade in is instant
        end
    
        delay_time = fade_in_time / 10 -- since the fade out takes roughly 10 steps, divide the time by 10

        while wesnoth.music_list.volume <= 90 do
            wesnoth.music_list.volume = wesnoth.music_list.volume + 10
--            repeats = repeats - 1
            wesnoth.delay(delay_time)
--            wesnoth.message(wesnoth.music_list.volume)
        end

        wesnoth.music_list.volume = 100
    
    end