package com.example.restservice;

public class Data {

	private final long id;
	private final String name;

	public Data(long id, String name) {
		this.id = id;
		this.name = name;
	}

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}
}
