package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.measurement.ﾞי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0514 {
    protected int zza;

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m2018(Iterable iterable, List list) {
        Charset charset = AbstractC0405.f2135;
        iterable.getClass();
        if (iterable instanceof InterfaceC0518) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            } else if (list instanceof C0370) {
                C0370 c0370 = (C0370) list;
                int i = c0370.f2029 + size;
                int length = c0370.f2030.length;
                if (i > length) {
                    if (length != 0) {
                        while (length < i) {
                            length = AbstractC0001.m2(length, 3, 2, 1, 10);
                        }
                        c0370.f2030 = Arrays.copyOf(c0370.f2030, length);
                    } else {
                        c0370.f2030 = new Object[Math.max(i, 10)];
                    }
                }
            }
        }
        int size2 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj : iterable) {
                if (obj == null) {
                    AbstractC0495.m1942(size2, list);
                    throw null;
                }
                list.add(obj);
            }
            return;
        }
        List list2 = (List) iterable;
        int size3 = list2.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Object obj2 = list2.get(i2);
            if (obj2 == null) {
                AbstractC0495.m1942(size2, list);
                throw null;
            }
            list.add(obj2);
        }
    }

    /* renamed from: ⁱˊ */
    public abstract int mo1234(InterfaceC0363 interfaceC0363);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] m2019() {
        try {
            AbstractC0269 abstractC0269 = (AbstractC0269) this;
            int m1231 = abstractC0269.m1231();
            byte[] bArr = new byte[m1231];
            C0260 c0260 = new C0260(m1231, bArr);
            abstractC0269.m1229(c0260);
            if (m1231 - c0260.f1757 == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
