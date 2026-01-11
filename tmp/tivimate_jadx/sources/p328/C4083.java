package p328;

/* renamed from: ᴵᵔ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4083 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C4069 f15553;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f15555 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f15554 = false;

    public C4083(C4069 c4069) {
        this.f15553 = c4069;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8341(boolean z) {
        C4069 c4069 = this.f15553;
        if (z && c4069.mo8287() == -1) {
            throw new UnsupportedOperationException("Error: Cannot reverse infinite animator set");
        }
        if (this.f15555 < 0 || z == this.f15554) {
            return;
        }
        this.f15555 = c4069.mo8287() - this.f15555;
        this.f15554 = z;
    }
}
