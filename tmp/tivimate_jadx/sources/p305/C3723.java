package p305;

/* renamed from: ᐧˎ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3723 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3723 f14499 = new C3723(-1, -1);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f14500;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f14501;

    static {
        new C3723(0, 0);
    }

    public C3723(int i, int i2) {
        AbstractC3731.m7849((i == -1 || i >= 0) && (i2 == -1 || i2 >= 0));
        this.f14501 = i;
        this.f14500 = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3723) {
            C3723 c3723 = (C3723) obj;
            if (this.f14501 == c3723.f14501 && this.f14500 == c3723.f14500) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f14501;
        return ((i >>> 16) | (i << 16)) ^ this.f14500;
    }

    public final String toString() {
        return this.f14501 + "x" + this.f14500;
    }
}
