package p261;

import j$.util.Objects;

/* renamed from: ـʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3405 extends AbstractC3409 {

    /* renamed from: ʿ, reason: contains not printable characters */
    public String f13345;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f13346;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public long f13347;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public byte[] f13348;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f13349;

    public C3405() {
        this.f3828 = 3;
    }

    @Override // p261.AbstractC3409
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3405.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        C3405 c3405 = (C3405) obj;
        C3403 c3403 = this.f13373;
        long j = c3403 != null ? c3403.f13341 : this.f13347;
        C3403 c34032 = c3405.f13373;
        return j == (c34032 != null ? c34032.f13341 : c3405.f13347);
    }

    public final int hashCode() {
        String str = this.f13380;
        C3403 c3403 = this.f13373;
        return Objects.hash(str, Long.valueOf(c3403 != null ? c3403.f13341 : this.f13347));
    }

    @Override // p012.AbstractC0905
    public final String toString() {
        return this.f13380;
    }
}
