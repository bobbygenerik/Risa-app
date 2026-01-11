package p022;

import java.lang.ref.SoftReference;

/* renamed from: ʼˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1038 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object[] f4071 = new Object[512];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f4070 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m3375(SoftReference softReference) {
        int i = (this.f4070 + 1) & 511;
        this.f4070 = i;
        this.f4071[i] = softReference;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized Object m3376() {
        Object obj;
        Object[] objArr = this.f4071;
        int i = this.f4070;
        obj = objArr[i];
        objArr[i] = null;
        this.f4070 = (i - 1) & 511;
        return obj;
    }
}
