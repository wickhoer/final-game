instance_destroy();
global.undercount += 1;

   if (global.speedModifier > 1.5){
       global.speedModifier -= 0.5;
      }
	  
   if (global.speedModifier > 2){
       global.speedModifier -= 0.8;
      }
	  
global.underworld = true;
room_goto(rm_under);

audio_play_sound(snd_switch, 1, false);
