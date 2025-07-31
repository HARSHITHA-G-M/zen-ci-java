package com.example;

public class App {
    public static void main(String[] args) {
        System.out.println("✅ App started successfully!");
        System.out.println(greet("RAKSHITH"));
    }

    public static String greet(String name) {
        return "👋 Hello, " + name + "! Welcome to Zen CI Java App 🚀";
    }
}

