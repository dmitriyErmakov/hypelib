package com.example.hypelib.util;

import java.util.List;

public class Util {
    public static boolean checkFirstValue(List<String> checkboxValueList) {
        return checkboxValueList.get(0).equals("on");
    }
}
