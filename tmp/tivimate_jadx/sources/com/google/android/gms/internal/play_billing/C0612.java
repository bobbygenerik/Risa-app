package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p035.AbstractC1220;

/* renamed from: com.google.android.gms.internal.play_billing.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0612 extends AbstractC0529 {
    private static final C0612 zzb;
    private InterfaceC0543 zzd = C0646.f2504;

    static {
        C0612 c0612 = new C0612();
        zzb = c0612;
        AbstractC0529.m2042(C0612.class, c0612);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m2215(C0612 c0612, ArrayList arrayList) {
        InterfaceC0543 interfaceC0543 = c0612.zzd;
        if (!((AbstractC0556) interfaceC0543).f2342) {
            int size = interfaceC0543.size();
            c0612.zzd = interfaceC0543.mo2101(size + size);
        }
        List list = c0612.zzd;
        Charset charset = AbstractC0634.f2471;
        int size2 = arrayList.size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size2);
        } else if (list instanceof C0646) {
            C0646 c0646 = (C0646) list;
            int i = c0646.f2505 + size2;
            int length = c0646.f2506.length;
            if (i > length) {
                if (length != 0) {
                    while (length < i) {
                        length = AbstractC0001.m2(length, 3, 2, 1, 10);
                    }
                    c0646.f2506 = Arrays.copyOf(c0646.f2506, length);
                } else {
                    c0646.f2506 = new Object[Math.max(i, 10)];
                }
            }
        }
        int size3 = list.size();
        int size4 = arrayList.size();
        for (int i2 = 0; i2 < size4; i2++) {
            Object obj = arrayList.get(i2);
            if (obj == null) {
                String m3773 = AbstractC1220.m3773(list.size() - size3, "Element at index ", " is null.");
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size3) {
                        break;
                    } else {
                        list.remove(size5);
                    }
                }
                throw new NullPointerException(m3773);
            }
            list.add(obj);
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C0582 m2216() {
        return (C0582) zzb.m2050();
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", C0609.class});
        }
        if (i2 == 3) {
            return new C0612();
        }
        if (i2 == 4) {
            return new AbstractC0584(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
