package com.google.android.gms.internal.measurement;

import androidx.datastore.preferences.protobuf.C0018;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: com.google.android.gms.internal.measurement.ˎˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0364 implements Iterable, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0364 f2018 = new C0364(AbstractC0405.f2134);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f2019 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f2020;

    static {
        int i = AbstractC0242.f1726;
    }

    public C0364(byte[] bArr) {
        bArr.getClass();
        this.f2020 = bArr;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C0364 m1685(byte[] bArr, int i, int i2) {
        m1686(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C0364(bArr2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m1686(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 44 + String.valueOf(i2).length());
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(i2).length() + 15 + String.valueOf(i3).length());
        sb3.append("End index: ");
        sb3.append(i2);
        sb3.append(" >= ");
        sb3.append(i3);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof C0364) && mo1236() == ((C0364) obj).mo1236()) {
            if (mo1236() == 0) {
                return true;
            }
            if (!(obj instanceof C0364)) {
                return obj.equals(this);
            }
            C0364 c0364 = (C0364) obj;
            int i = this.f2019;
            int i2 = c0364.f2019;
            if (i == 0 || i2 == 0 || i == i2) {
                int mo1236 = mo1236();
                if (mo1236 > c0364.mo1236()) {
                    int mo12362 = mo1236();
                    StringBuilder sb = new StringBuilder(String.valueOf(mo1236).length() + 18 + String.valueOf(mo12362).length());
                    sb.append("Length too large: ");
                    sb.append(mo1236);
                    sb.append(mo12362);
                    throw new IllegalArgumentException(sb.toString());
                }
                if (mo1236 <= c0364.mo1236()) {
                    byte[] bArr = c0364.f2020;
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < mo1236) {
                        if (this.f2020[i3] == bArr[i4]) {
                            i3++;
                            i4++;
                        }
                    }
                    return true;
                }
                int mo12363 = c0364.mo1236();
                StringBuilder sb2 = new StringBuilder(String.valueOf(mo1236).length() + 27 + String.valueOf(mo12363).length());
                sb2.append("Ran off end of other: 0, ");
                sb2.append(mo1236);
                sb2.append(", ");
                sb2.append(mo12363);
                throw new IllegalArgumentException(sb2.toString());
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f2019;
        if (i != 0) {
            return i;
        }
        int mo1236 = mo1236();
        int i2 = mo1236;
        for (int i3 = 0; i3 < mo1236; i3++) {
            i2 = (i2 * 31) + this.f2020[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.f2019 = i2;
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
        int mo1236 = mo1236();
        if (mo1236() <= 50) {
            concat = android.support.v4.media.session.ⁱˊ.ʼʼ(this);
        } else {
            int m1686 = m1686(0, 47, mo1236());
            concat = android.support.v4.media.session.ⁱˊ.ʼʼ(m1686 == 0 ? f2018 : new C0270(m1686, this.f2020)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(mo1236);
        sb.append(" contents=\"");
        return AbstractC1220.m3775(sb, concat, "\">");
    }

    /* renamed from: ˈ */
    public int mo1236() {
        return this.f2020.length;
    }

    /* renamed from: ⁱˊ */
    public byte mo1237(int i) {
        return this.f2020[i];
    }

    /* renamed from: ﹳٴ */
    public byte mo1238(int i) {
        return this.f2020[i];
    }
}
