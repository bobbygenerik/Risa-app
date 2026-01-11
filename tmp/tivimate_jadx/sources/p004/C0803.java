package p004;

import p425.C5053;

/* renamed from: ʻˆ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0803 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f3421;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f3422;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f3423;

    public /* synthetic */ C0803(boolean z, boolean z2, boolean z3) {
        this.f3423 = z;
        this.f3422 = z2;
        this.f3421 = z3;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean m2922() {
        return (this.f3421 || this.f3422) && this.f3423;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C5053 m2923() {
        if (this.f3423 || !(this.f3422 || this.f3421)) {
            return new C5053(this);
        }
        throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
    }
}
