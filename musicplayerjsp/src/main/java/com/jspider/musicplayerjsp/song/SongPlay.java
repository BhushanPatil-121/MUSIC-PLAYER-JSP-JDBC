package com.jspider.musicplayerjsp.song;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;


public class SongPlay {
	
	public static boolean isActive=false;
	public static boolean pause=false;
	public static boolean start=true;
	public static AudioInputStream aStream;
	public static Clip clip;
	public static long clipTime;
	public static String query;
	public static void play() {
	if(start || !clip.isActive()) {
		try {
			java.io.File file=new java.io.File(query);
			if (file.exists()) {
				aStream=AudioSystem.getAudioInputStream(file);
				clip = AudioSystem.getClip();
				clip.open(aStream);
				clip.start();
				start=false;
				isActive=true;
			}else {
			}
		} catch (Exception e2) {
			// TODO: handle exception
		}
	}
}
	
	
	
	
	public static void pause() {
		if(clip!=null) {
			pause=true;
			clipTime=clip.getMicrosecondPosition();
			clip.stop();
		}
		
	}
	
	public static void resume() {
		if(clip!=null && pause) {
			clip.setMicrosecondPosition(clipTime);
			clip.start();
			pause=false;
		}
		
	}
	
	public static  void stop() {
		if(clip!=null) {
			clip.close();
			start=true;
			isActive=false;
		}
	}
}
