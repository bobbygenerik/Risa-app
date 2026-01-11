package p324;

import p153.C2479;

/* renamed from: ᴵי.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4040 extends AbstractC4000 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Object f15428;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C4033 f15429;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C4010 f15430;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4031 f15431;

    public C4040(C4031 c4031, C4033 c4033, C4010 c4010, Object obj) {
        this.f15431 = c4031;
        this.f15429 = c4033;
        this.f15430 = c4010;
        this.f15428 = obj;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ˆʾ */
    public final boolean mo8153() {
        return false;
    }

    @Override // p324.AbstractC4000
    /* renamed from: ٴﹶ */
    public final void mo8154(Throwable th) {
        C4010 c4010 = this.f15430;
        C4010 m8226 = C4031.m8226(c4010);
        C4031 c4031 = this.f15431;
        C4033 c4033 = this.f15429;
        Object obj = this.f15428;
        if (m8226 == null || !c4031.m8249(c4033, m8226, obj)) {
            c4033.f15422.m5594(new C2479(2), 2);
            C4010 m82262 = C4031.m8226(c4010);
            if (m82262 == null || !c4031.m8249(c4033, m82262, obj)) {
                c4031.mo5614(c4031.m8257(c4033, obj));
            }
        }
    }
}
