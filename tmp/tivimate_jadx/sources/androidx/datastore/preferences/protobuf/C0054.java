package androidx.datastore.preferences.protobuf;

import android.support.v4.media.session.AbstractC0001;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: androidx.datastore.preferences.protobuf.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0054 implements Iterable, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0054 f480 = new C0054(AbstractC0013.f388);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C0035 f481;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f482 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f483;

    static {
        f481 = AbstractC0009.m215() ? new C0035(1) : new C0035(0);
    }

    public C0054(byte[] bArr) {
        bArr.getClass();
        this.f483 = bArr;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C0054 m353(byte[] bArr, int i, int i2) {
        byte[] copyOfRange;
        m354(i, i + i2, bArr.length);
        switch (f481.f429) {
            case 0:
                copyOfRange = Arrays.copyOfRange(bArr, i, i2 + i);
                break;
            default:
                copyOfRange = new byte[i2];
                System.arraycopy(bArr, i, copyOfRange, 0, i2);
                break;
        }
        return new C0054(copyOfRange);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m354(int i, int i2, int i3) {
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

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0054) || size() != ((C0054) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C0054)) {
            return obj.equals(this);
        }
        C0054 c0054 = (C0054) obj;
        int i = this.f482;
        int i2 = c0054.f482;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        int size = size();
        if (size > c0054.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > c0054.size()) {
            StringBuilder m16 = AbstractC0001.m16(size, "Ran off end of other: 0, ", ", ");
            m16.append(c0054.size());
            throw new IllegalArgumentException(m16.toString());
        }
        byte[] bArr = c0054.f483;
        int mo358 = mo358() + size;
        int mo3582 = mo358();
        int mo3583 = c0054.mo358();
        while (mo3582 < mo358) {
            if (this.f483[mo3582] != bArr[mo3583]) {
                return false;
            }
            mo3582++;
            mo3583++;
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f482;
        if (i != 0) {
            return i;
        }
        int size = size();
        int mo358 = mo358();
        int i2 = size;
        for (int i3 = mo358; i3 < mo358 + size; i3++) {
            i2 = (i2 * 31) + this.f483[i3];
        }
        if (i2 == 0) {
            i2 = 1;
        }
        this.f482 = i2;
        return i2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0018(this);
    }

    public int size() {
        return this.f483.length;
    }

    public final String toString() {
        String sb;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            sb = com.bumptech.glide.ʽ.ˈ(this);
        } else {
            StringBuilder sb2 = new StringBuilder();
            int m354 = m354(0, 47, size());
            sb2.append(com.bumptech.glide.ʽ.ˈ(m354 == 0 ? f480 : new C0068(this.f483, mo358(), m354)));
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

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo355(int i, byte[] bArr) {
        System.arraycopy(this.f483, 0, bArr, 0, i);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte mo356(int i) {
        return this.f483[i];
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte mo357(int i) {
        return this.f483[i];
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int mo358() {
        return 0;
    }
}
