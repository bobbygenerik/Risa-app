package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ﹳᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0495 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0269 f2259;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public AbstractC0269 f2260;

    public AbstractC0495(AbstractC0269 abstractC0269) {
        this.f2259 = abstractC0269;
        if (abstractC0269.m1230()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f2260 = (AbstractC0269) abstractC0269.mo1194(4);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m1942(int i, List list) {
        int size = list.size() - i;
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 26);
        sb.append("Element at index ");
        sb.append(size);
        sb.append(" is null.");
        String sb2 = sb.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 < i) {
                throw new NullPointerException(sb2);
            }
            list.remove(size2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.internal.measurement.ˈʻ, java.lang.Object] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m1943(byte[] bArr, int i, C0343 c0343) {
        if (!this.f2260.m1230()) {
            AbstractC0269 abstractC0269 = (AbstractC0269) this.f2259.mo1194(4);
            C0464.f2220.m1889(abstractC0269.getClass()).mo1550(abstractC0269, this.f2260);
            this.f2260 = abstractC0269;
        }
        try {
            InterfaceC0363 m1889 = C0464.f2220.m1889(this.f2260.getClass());
            AbstractC0269 abstractC02692 = this.f2260;
            ?? obj = new Object();
            c0343.getClass();
            m1889.mo1539(abstractC02692, bArr, 0, i, obj);
        } catch (zzmr e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC0495 clone() {
        AbstractC0495 abstractC0495 = (AbstractC0495) this.f2259.mo1194(5);
        abstractC0495.f2260 = m1945();
        return abstractC0495;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0269 m1945() {
        if (!this.f2260.m1230()) {
            return this.f2260;
        }
        this.f2260.m1232();
        return this.f2260;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m1946(AbstractC0269 abstractC0269) {
        AbstractC0269 abstractC02692 = this.f2259;
        if (abstractC02692.equals(abstractC0269)) {
            return;
        }
        if (!this.f2260.m1230()) {
            AbstractC0269 abstractC02693 = (AbstractC0269) abstractC02692.mo1194(4);
            C0464.f2220.m1889(abstractC02693.getClass()).mo1550(abstractC02693, this.f2260);
            this.f2260 = abstractC02693;
        }
        AbstractC0269 abstractC02694 = this.f2260;
        C0464.f2220.m1889(abstractC02694.getClass()).mo1550(abstractC02694, abstractC0269);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1947() {
        if (this.f2260.m1230()) {
            return;
        }
        AbstractC0269 abstractC0269 = (AbstractC0269) this.f2259.mo1194(4);
        C0464.f2220.m1889(abstractC0269.getClass()).mo1550(abstractC0269, this.f2260);
        this.f2260 = abstractC0269;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC0269 m1948() {
        AbstractC0269 m1945 = m1945();
        m1945.getClass();
        boolean z = true;
        byte byteValue = ((Byte) m1945.mo1194(1)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                z = C0464.f2220.m1889(m1945.getClass()).mo1529(m1945);
                m1945.mo1194(2);
            }
        }
        if (z) {
            return m1945;
        }
        throw new RuntimeException("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
