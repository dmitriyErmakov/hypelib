package com.example.hypelib.dialog;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
public enum Phrase {
    USER_EXISTS("User exists!");


    @Getter
    private String value;
}
