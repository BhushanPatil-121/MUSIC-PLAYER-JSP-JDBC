package com.jspider.musicplayerjsp.song;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;


public class SongPlay {
	
	public static boolean pause=false;
	public static boolean start=true;
	public static AudioInputStream aStream;
	public static Clip clip;
	public static long clipTime;
	public static String query;
	public static void play() {
	if(start) {
		try {
			java.io.File file=new java.io.File(query);
			if (file.exists()) {
				aStream=AudioSystem.getAudioInputStream(file);
				clip = AudioSystem.getClip();
				clip.open(aStream);
				clip.start();
				start=false;
			}else {
			}
		} catch (Exception e2) {
			// TODO: handle exception
		}
	}
}
	
	
	
	
	public static void pause() {
		if(clip!=null) {
			clipTime=clip.getMicrosecondPosition();
			clip.stop();
		}
		
	}
	
	public static void resume() {
		if(clip!=null) {
			clip.setMicrosecondPosition(clipTime);
			clip.start();
		}
		
	}
	
	public static  void stop() {
		if(clip!=null) {
			clip.close();
			start=true;
		}
	}
}
