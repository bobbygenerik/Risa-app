package com.google.android.gms.internal.play_billing;

import java.util.Arrays;

/* renamed from: com.google.android.gms.internal.play_billing.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC0607 {
    f2421("RESPONSE_CODE_UNSPECIFIED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF18("SERVICE_TIMEOUT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF27("FEATURE_NOT_SUPPORTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF36("SERVICE_DISCONNECTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF44("OK"),
    /* JADX INFO: Fake field, exist only in values array */
    EF52("USER_CANCELED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF60("SERVICE_UNAVAILABLE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF70("BILLING_UNAVAILABLE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF83("ITEM_UNAVAILABLE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF96("DEVELOPER_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF109("ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF122("ITEM_ALREADY_OWNED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF133("ITEM_NOT_OWNED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF148("EXPIRED_OFFER_TOKEN"),
    /* JADX INFO: Fake field, exist only in values array */
    EF163("NETWORK_ERROR");


    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0558 f2419;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f2422;

    static {
        ʽﹳ r0 = new ʽﹳ((byte) 0, 0);
        r0.ʽʽ = new Object[8];
        r0.ᴵˊ = 0;
        for (EnumC0607 enumC0607 : values()) {
            Integer valueOf = Integer.valueOf(enumC0607.f2422);
            int i = r0.ᴵˊ + 1;
            Object[] objArr = (Object[]) r0.ʽʽ;
            int length = objArr.length;
            int i2 = i + i;
            if (i2 > length) {
                if (i2 > length) {
                    length = length + (length >> 1) + 1;
                    if (length < i2) {
                        int highestOneBit = Integer.highestOneBit(i2 - 1);
                        length = highestOneBit + highestOneBit;
                    }
                    if (length < 0) {
                        length = Integer.MAX_VALUE;
                    }
                }
                r0.ʽʽ = Arrays.copyOf(objArr, length);
            }
            Object[] objArr2 = (Object[]) r0.ʽʽ;
            int i3 = r0.ᴵˊ;
            int i4 = i3 + i3;
            objArr2[i4] = valueOf;
            objArr2[i4 + 1] = enumC0607;
            r0.ᴵˊ = i3 + 1;
        }
        C0581 c0581 = (C0581) r0.ˈٴ;
        if (c0581 != null) {
            throw c0581.m2173();
        }
        C0558 m2134 = C0558.m2134(r0.ᴵˊ, (Object[]) r0.ʽʽ, r0);
        C0581 c05812 = (C0581) r0.ˈٴ;
        if (c05812 != null) {
            throw c05812.m2173();
        }
        f2419 = m2134;
    }

    EnumC0607(String str) {
        this.f2422 = r2;
    }
}
