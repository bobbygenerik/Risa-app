package com.google.android.gms.internal.measurement;

import java.util.HashMap;

/* renamed from: com.google.android.gms.internal.measurement.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC0401 {
    f2111("ADD"),
    f2071("AND"),
    f2082("APPLY"),
    f2113("ASSIGN"),
    f2086("BITWISE_AND"),
    f2104("BITWISE_LEFT_SHIFT"),
    f2085("BITWISE_NOT"),
    f2118("BITWISE_OR"),
    f2102("BITWISE_RIGHT_SHIFT"),
    f2116("BITWISE_UNSIGNED_RIGHT_SHIFT"),
    f2119("BITWISE_XOR"),
    f2079("BLOCK"),
    f2120("BREAK"),
    f2080("CASE"),
    f2094("CONST"),
    f2089("CONTINUE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF0("CONTROL"),
    f2087("CREATE_ARRAY"),
    f2069("CREATE_OBJECT"),
    f2098("DEFAULT"),
    f2124("DEFINE_FUNCTION"),
    f2083("DIVIDE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF0("DO"),
    f2112("EQUALS"),
    f2084("EXPRESSION_LIST"),
    f2076("FN"),
    f2078("FOR_IN"),
    f2117("FOR_IN_CONST"),
    f2109("FOR_IN_LET"),
    f2107("FOR_LET"),
    f2091("FOR_OF"),
    f2110("FOR_OF_CONST"),
    f2068("FOR_OF_LET"),
    f2088("GET"),
    /* JADX INFO: Fake field, exist only in values array */
    EF0("GET_CONTAINER_VARIABLE"),
    f2101("GET_INDEX"),
    f2081("GET_PROPERTY"),
    f2128("GREATER_THAN"),
    f2126("GREATER_THAN_EQUALS"),
    f2066("IDENTITY_EQUALS"),
    f2093("IDENTITY_NOT_EQUALS"),
    f2105("IF"),
    f2114("LESS_THAN"),
    f2099("LESS_THAN_EQUALS"),
    f2072("MODULUS"),
    f2108("MULTIPLY"),
    f2095("NEGATE"),
    f2074("NOT"),
    f2092("NOT_EQUALS"),
    f2070("NULL"),
    f2090("OR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF1("PLUS_EQUALS"),
    f2096("POST_DECREMENT"),
    f2073("POST_INCREMENT"),
    f2075("QUOTE"),
    f2121("PRE_DECREMENT"),
    f2106("PRE_INCREMENT"),
    f2067("RETURN"),
    f2097("SET_PROPERTY"),
    f2115("SUBTRACT"),
    f2077("SWITCH"),
    f2125("TERNARY"),
    f2122("TYPEOF"),
    f2065("UNDEFINED"),
    f2127("VAR"),
    f2100("WHILE");


    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public static final HashMap f2103 = new HashMap();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f2129;

    static {
        for (EnumC0401 enumC0401 : values()) {
            f2103.put(Integer.valueOf(enumC0401.f2129), enumC0401);
        }
    }

    EnumC0401(String str) {
        this.f2129 = r2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.valueOf(this.f2129).toString();
    }
}
