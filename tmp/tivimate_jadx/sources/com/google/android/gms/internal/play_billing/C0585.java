package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import androidx.datastore.preferences.protobuf.C0018;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: com.google.android.gms.internal.play_billing.ˑʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0585 implements Iterable, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0585 f2388 = new C0585(AbstractC0634.f2470);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f2389 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f2390;

    static {
        int i = AbstractC0647.f2507;
    }

    public C0585(byte[] bArr) {
        bArr.getClass();
        this.f2390 = bArr;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m2177(int i, int i2, int i3) {
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

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C0585 m2178(byte[] bArr, int i, int i2) {
        m2177(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C0585(bArr2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof C0585) && mo2031() == ((C0585) obj).mo2031()) {
            if (mo2031() == 0) {
                return true;
            }
            if (!(obj instanceof C0585)) {
                return obj.equals(this);
            }
            C0585 c0585 = (C0585) obj;
            int i = this.f2389;
            int i2 = c0585.f2389;
            if (i == 0 || i2 == 0 || i == i2) {
                int mo2031 = mo2031();
                if (mo2031 > c0585.mo2031()) {
                    throw new IllegalArgumentException("Length too large: " + mo2031 + mo2031());
                }
                if (mo2031 > c0585.mo2031()) {
                    throw new IllegalArgumentException(AbstractC0001.m14(mo2031, c0585.mo2031(), "Ran off end of other: 0, ", ", "));
                }
                byte[] bArr = c0585.f2390;
                int i3 = 0;
                int i4 = 0;
                while (i3 < mo2031) {
                    if (this.f2390[i3] == bArr[i4]) {
                        i3++;
                        i4++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f2389;
        if (i != 0) {
            return i;
        }
        int mo2031 = mo2031();
        int i2 = mo2031;
        for (int i3 = 0; i3 < mo2031; i3++) {
            i2 = (i2 * 31) + this.f2390[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.f2389 = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new C0018(this);
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int mo2031 = mo2031();
        if (mo2031() <= 50) {
            concat = ˉᵎ.ⁱˊ.ˈʿ(this);
        } else {
            int m2177 = m2177(0, 47, mo2031());
            concat = ˉᵎ.ⁱˊ.ˈʿ(m2177 == 0 ? f2388 : new C0522(m2177, this.f2390)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(mo2031);
        sb.append(" contents=\"");
        return AbstractC1220.m3775(sb, concat, "\">");
    }

    /* renamed from: ˈ */
    public int mo2031() {
        return this.f2390.length;
    }

    /* renamed from: ⁱˊ */
    public byte mo2032(int i) {
        return this.f2390[i];
    }

    /* renamed from: ﹳٴ */
    public byte mo2033(int i) {
        return this.f2390[i];
    }
}
