package p094;

import j$.util.Objects;
import java.util.Arrays;

/* renamed from: ˆʻ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1864 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f7482;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f7483;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String[] f7484;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7485;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC1863[] f7486;

    public C1864(String str, boolean z, boolean z2, String[] strArr, AbstractC1863[] abstractC1863Arr) {
        super("CTOC");
        this.f7485 = str;
        this.f7482 = z;
        this.f7483 = z2;
        this.f7484 = strArr;
        this.f7486 = abstractC1863Arr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1864.class == obj.getClass()) {
            C1864 c1864 = (C1864) obj;
            if (this.f7482 == c1864.f7482 && this.f7483 == c1864.f7483 && Objects.equals(this.f7485, c1864.f7485) && Arrays.equals(this.f7484, c1864.f7484) && Arrays.equals(this.f7486, c1864.f7486)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (((527 + (this.f7482 ? 1 : 0)) * 31) + (this.f7483 ? 1 : 0)) * 31;
        String str = this.f7485;
        return i + (str != null ? str.hashCode() : 0);
    }
}
