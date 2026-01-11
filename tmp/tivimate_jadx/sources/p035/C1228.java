package p035;

import java.util.TreeMap;
import p034.InterfaceC1193;
import p034.InterfaceC1196;

/* renamed from: ʼﾞ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1228 implements InterfaceC1196, InterfaceC1193 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final TreeMap f4746 = new TreeMap();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile String f4748;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f4751;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int[] f4750 = new int[2];

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long[] f4752 = new long[2];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final double[] f4747 = new double[2];

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String[] f4749 = new String[2];

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final byte[][] f4753 = new byte[2];

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ʻٴ */
    public final void mo3703(int i, String str) {
        this.f4750[i] = 4;
        this.f4749[i] = str;
    }

    @Override // p034.InterfaceC1196
    /* renamed from: ʽ */
    public final String mo3150() {
        String str = this.f4748;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // p034.InterfaceC1196
    /* renamed from: ᵎﹶ */
    public final void mo3153(InterfaceC1193 interfaceC1193) {
        int i = this.f4751;
        if (1 > i) {
            return;
        }
        int i2 = 1;
        while (true) {
            int i3 = this.f4750[i2];
            if (i3 == 1) {
                interfaceC1193.mo3706(i2);
            } else if (i3 == 2) {
                interfaceC1193.mo3707(i2, this.f4752[i2]);
            } else if (i3 == 3) {
                interfaceC1193.mo3705(i2, this.f4747[i2]);
            } else if (i3 == 4) {
                String str = this.f4749[i2];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                interfaceC1193.mo3703(i2, str);
            } else if (i3 == 5) {
                byte[] bArr = this.f4753[i2];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                interfaceC1193.mo3704(i2, bArr);
            }
            if (i2 == i) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ᵔᵢ */
    public final void mo3704(int i, byte[] bArr) {
        this.f4750[i] = 5;
        this.f4753[i] = bArr;
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ⁱˊ */
    public final void mo3705(int i, double d) {
        this.f4750[i] = 3;
        this.f4747[i] = d;
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ﹳٴ */
    public final void mo3706(int i) {
        this.f4750[i] = 1;
    }

    @Override // p034.InterfaceC1193
    /* renamed from: ﾞᴵ */
    public final void mo3707(int i, long j) {
        this.f4750[i] = 2;
        this.f4752[i] = j;
    }
}
