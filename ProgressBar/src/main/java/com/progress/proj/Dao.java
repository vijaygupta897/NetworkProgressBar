package com.progress.proj;

public class Dao {

	private int length;

	private int rate;

	@Override
	public String toString() {
		return "Dao [length=" + length + ", rate=" + rate + ", packet=" + packet + "]";
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getPacket() {
		return packet;
	}

	public void setPacket(int packet) {
		this.packet = packet;
	}

	private int packet;

}
