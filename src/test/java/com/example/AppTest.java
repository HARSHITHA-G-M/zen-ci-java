package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {

    @Test
    public void testGreet() {
        assertEquals("👋 Hello, Alice! Welcome to Zen CI Java App 🚀", App.greet("Alice"));
    }

    @Test
    public void testHealthCheck() {
        assertTrue(HealthCheck.isAlive());
    }
}

