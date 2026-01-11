package com.google.android.gms.internal.measurement;

import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import p223.C3056;

/* renamed from: com.google.android.gms.internal.measurement.ﹳʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0490 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final /* synthetic */ int f2248 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f2249;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0328 f2250 = new C0328();

    static {
        new C0490(0);
    }

    public C0490() {
    }

    public C0490(int i) {
        m1941();
        m1941();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m1940(C0260 c0260, EnumC0319 enumC0319, int i, Object obj) {
        if (enumC0319 == EnumC0319.f1962) {
            Charset charset = AbstractC0405.f2135;
            c0260.m1212(i, 3);
            ((AbstractC0269) ((AbstractC0514) obj)).m1229(c0260);
            c0260.m1212(i, 4);
            return;
        }
        c0260.m1212(i, enumC0319.f1965);
        EnumC0407 enumC0407 = EnumC0407.f2137;
        switch (enumC0319.ordinal()) {
            case 0:
                c0260.m1216(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                c0260.m1213(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                c0260.m1208(((Long) obj).longValue());
                return;
            case 3:
                c0260.m1208(((Long) obj).longValue());
                return;
            case 4:
                c0260.m1215(((Integer) obj).intValue());
                return;
            case 5:
                c0260.m1216(((Long) obj).longValue());
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                c0260.m1213(((Integer) obj).intValue());
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                c0260.m1210(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                if (obj instanceof C0364) {
                    c0260.m1221((C0364) obj);
                    return;
                } else {
                    c0260.m1211((String) obj);
                    return;
                }
            case 9:
                ((AbstractC0269) ((AbstractC0514) obj)).m1229(c0260);
                return;
            case 10:
                c0260.getClass();
                AbstractC0269 abstractC0269 = (AbstractC0269) ((AbstractC0514) obj);
                c0260.m1214(abstractC0269.m1231());
                abstractC0269.m1229(c0260);
                return;
            case 11:
                if (obj instanceof C0364) {
                    c0260.m1221((C0364) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                int length = bArr.length;
                c0260.m1214(length);
                c0260.m1222(length, bArr);
                return;
            case 12:
                c0260.m1214(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof InterfaceC0361) {
                    c0260.m1215(((InterfaceC0361) obj).mo1636());
                    return;
                } else {
                    c0260.m1215(((Integer) obj).intValue());
                    return;
                }
            case 14:
                c0260.m1213(((Integer) obj).intValue());
                return;
            case 15:
                c0260.m1216(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                c0260.m1214((intValue >> 31) ^ (intValue + intValue));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                c0260.m1208((longValue >> 63) ^ (longValue + longValue));
                return;
            default:
                return;
        }
    }

    public final Object clone() {
        C0490 c0490 = new C0490();
        C0328 c0328 = this.f2250;
        if (c0328.f1976 > 0) {
            c0328.m1578(0).f1874.getClass();
            throw new ClassCastException();
        }
        Iterator it = c0328.m1577().iterator();
        if (!it.hasNext()) {
            return c0490;
        }
        Map.Entry entry = (Map.Entry) it.next();
        if (entry.getKey() != null) {
            throw new ClassCastException();
        }
        entry.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0490) {
            return this.f2250.equals(((C0490) obj).f2250);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2250.hashCode();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m1941() {
        if (this.f2249) {
            return;
        }
        C0328 c0328 = this.f2250;
        int i = c0328.f1976;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = c0328.m1578(i2).f1875;
            if (obj instanceof AbstractC0269) {
                ((AbstractC0269) obj).m1232();
            }
        }
        Iterator it = c0328.m1577().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof AbstractC0269) {
                ((AbstractC0269) value).m1232();
            }
        }
        if (!c0328.f1974) {
            if (c0328.f1976 > 0) {
                c0328.m1578(0).f1874.getClass();
                throw new ClassCastException();
            }
            Iterator it2 = c0328.m1577().iterator();
            if (it2.hasNext()) {
                ((Map.Entry) it2.next()).getKey().getClass();
                throw new ClassCastException();
            }
        }
        if (!c0328.f1974) {
            c0328.f1972 = c0328.f1972.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(c0328.f1972);
            c0328.f1975 = c0328.f1975.isEmpty() ? Collections.EMPTY_MAP : DesugarCollections.unmodifiableMap(c0328.f1975);
            c0328.f1974 = true;
        }
        this.f2249 = true;
    }
}
