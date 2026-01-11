package p094;

import j$.util.Objects;
import java.util.Arrays;

/* renamed from: ˆʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1862 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f7475;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f7476;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f7477;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC1863[] f7478;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7479;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f7480;

    public C1862(String str, int i, int i2, long j, long j2, AbstractC1863[] abstractC1863Arr) {
        super("CHAP");
        this.f7479 = str;
        this.f7475 = i;
        this.f7476 = i2;
        this.f7477 = j;
        this.f7480 = j2;
        this.f7478 = abstractC1863Arr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1862.class == obj.getClass()) {
            C1862 c1862 = (C1862) obj;
            if (this.f7475 == c1862.f7475 && this.f7476 == c1862.f7476 && this.f7477 == c1862.f7477 && this.f7480 == c1862.f7480 && Objects.equals(this.f7479, c1862.f7479) && Arrays.equals(this.f7478, c1862.f7478)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (((((((527 + this.f7475) * 31) + this.f7476) * 31) + ((int) this.f7477)) * 31) + ((int) this.f7480)) * 31;
        String str = this.f7479;
        return i + (str != null ? str.hashCode() : 0);
    }
}
