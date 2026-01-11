package p218;

import j$.util.Objects;
import p035.AbstractC1220;
import p277.AbstractC3528;
import p457.C5384;

/* renamed from: ˏˑ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3018 extends AbstractC3528 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3017 f11526;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f11527;

    public C3018(int i, C3017 c3017) {
        this.f11527 = i;
        this.f11526 = c3017;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ﾞˏ.ʽ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C5384 m6545() {
        ?? obj = new Object();
        obj.f20506 = null;
        obj.f20505 = C3017.f11523;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3018)) {
            return false;
        }
        C3018 c3018 = (C3018) obj;
        return c3018.f11527 == this.f11527 && c3018.f11526 == this.f11526;
    }

    public final int hashCode() {
        return Objects.hash(C3018.class, Integer.valueOf(this.f11527), this.f11526);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesSiv Parameters (variant: ");
        sb.append(this.f11526);
        sb.append(", ");
        return AbstractC1220.m3782(sb, this.f11527, "-byte key)");
    }

    @Override // p277.AbstractC3528
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo6546() {
        return this.f11526 != C3017.f11523;
    }
}
