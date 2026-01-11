package p405;

import j$.util.Objects;
import p035.AbstractC1220;
import ˑי.ʽ;

/* renamed from: ﹳʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4817 extends AbstractC4819 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4815 f18098;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18099;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18100;

    public C4817(int i, int i2, C4815 c4815) {
        this.f18100 = i;
        this.f18099 = i2;
        this.f18098 = c4815;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑי.ʽ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ʽ m9621() {
        ?? obj = new Object();
        ((ʽ) obj).ʾˋ = null;
        ((ʽ) obj).ᴵˊ = null;
        ((ʽ) obj).ʽʽ = C4815.f18089;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4817)) {
            return false;
        }
        C4817 c4817 = (C4817) obj;
        return c4817.f18100 == this.f18100 && c4817.m9622() == m9622() && c4817.f18098 == this.f18098;
    }

    public final int hashCode() {
        return Objects.hash(C4817.class, Integer.valueOf(this.f18100), Integer.valueOf(this.f18099), this.f18098);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AES-CMAC Parameters (variant: ");
        sb.append(this.f18098);
        sb.append(", ");
        sb.append(this.f18099);
        sb.append("-byte tags, and ");
        return AbstractC1220.m3782(sb, this.f18100, "-byte key)");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m9622() {
        C4815 c4815 = C4815.f18089;
        int i = this.f18099;
        C4815 c48152 = this.f18098;
        if (c48152 == c4815) {
            return i;
        }
        if (c48152 != C4815.f18090 && c48152 != C4815.f18087 && c48152 != C4815.f18088) {
            throw new IllegalStateException("Unknown variant");
        }
        return i + 5;
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ */
    public final boolean mo6546() {
        return this.f18098 != C4815.f18089;
    }
}
