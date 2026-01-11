package com.google.crypto.tink.shaded.protobuf;

import android.support.v4.media.session.AbstractC0001;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0744 implements Iterable, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0723 f3062;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0740 f3063 = new C0740(AbstractC0702.f2978);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f3064;

    static {
        f3062 = AbstractC0699.m2479() ? new C0723(1) : new C0723(0);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C0740 m2694(byte[] bArr, int i, int i2) {
        byte[] copyOfRange;
        m2695(i, i + i2, bArr.length);
        switch (f3062.f3010) {
            case 0:
                copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
                break;
            default:
                copyOfRange = new byte[i2];
                System.arraycopy(bArr, i, copyOfRange, 0, i2);
                break;
        }
        return new C0740(copyOfRange);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m2695(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(AbstractC1220.m3773(i, "Beginning index: ", " < 0"));
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "Beginning index larger than ending index: ", ", "));
        }
        throw new IndexOutOfBoundsException(AbstractC0001.m14(i2, i3, "End index: ", " >= "));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f3064;
        if (i != 0) {
            return i;
        }
        int size = size();
        C0740 c0740 = (C0740) this;
        int mo2655 = c0740.mo2655();
        int i2 = size;
        for (int i3 = mo2655; i3 < mo2655 + size; i3++) {
            i2 = (i2 * 31) + c0740.f3045[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.f3064 = i2;
        return i2;
    }

    public abstract int size();

    public final String toString() {
        String sb;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            sb = com.bumptech.glide.ʽ.ˑﹳ(this);
        } else {
            StringBuilder sb2 = new StringBuilder();
            C0740 c0740 = (C0740) this;
            int m2695 = m2695(0, 47, c0740.size());
            sb2.append(com.bumptech.glide.ʽ.ˑﹳ(m2695 == 0 ? f3063 : new C0752(c0740.f3045, c0740.mo2655(), m2695)));
            sb2.append("...");
            sb = sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder("<ByteString@");
        sb3.append(hexString);
        sb3.append(" size=");
        sb3.append(size);
        sb3.append(" contents=\"");
        return AbstractC1220.m3775(sb3, sb, "\">");
    }

    /* renamed from: ˑﹳ */
    public abstract void mo2654(int i, byte[] bArr);

    /* renamed from: ﹳٴ */
    public abstract byte mo2657(int i);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final byte[] m2696() {
        int size = size();
        if (size == 0) {
            return AbstractC0702.f2978;
        }
        byte[] bArr = new byte[size];
        mo2654(size, bArr);
        return bArr;
    }
}
