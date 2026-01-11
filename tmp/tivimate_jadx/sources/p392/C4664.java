package p392;

import j$.util.Objects;

/* renamed from: ⁱי.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4664 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f17480;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f17481;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f17482;

    public C4664(C4676 c4676) {
        this.f17482 = c4676.f17546;
        this.f17481 = c4676.f17545;
        this.f17480 = c4676.f17544;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4664)) {
            return false;
        }
        C4664 c4664 = (C4664) obj;
        return this.f17482 == c4664.f17482 && this.f17481 == c4664.f17481 && this.f17480 == c4664.f17480;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f17482), Float.valueOf(this.f17481), Long.valueOf(this.f17480));
    }
}
