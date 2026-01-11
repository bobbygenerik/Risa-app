package p213;

import androidx.leanback.widget.C0122;
import p171.InterfaceC2626;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˏʻ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3004 implements InterfaceC3006 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f11470;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0122 f11471;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC3003 f11472;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f11473;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public long f11474;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public long f11475;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f11476;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f11477;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f11478;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public long f11479;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f11480;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f11481;

    public C3004(AbstractC3003 abstractC3003, long j, long j2, long j3, long j4, boolean z) {
        AbstractC3731.m7849(j >= 0 && j2 > j);
        this.f11472 = abstractC3003;
        this.f11477 = j;
        this.f11470 = j2;
        if (j3 == j2 - j || z) {
            this.f11474 = j4;
            this.f11478 = 4;
        } else {
            this.f11478 = 0;
        }
        this.f11471 = new C0122();
    }

    @Override // p213.InterfaceC3006
    /* renamed from: ʽ */
    public final InterfaceC2626 mo2911() {
        if (this.f11474 != 0) {
            return new C3005(this);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4  */
    @Override // p213.InterfaceC3006
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo2912(p171.InterfaceC2622 r28) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p213.C3004.mo2912(ˊﾞ.ʼᐧ):long");
    }

    @Override // p213.InterfaceC3006
    /* renamed from: ᵔʾ */
    public final void mo2913(long j) {
        this.f11473 = AbstractC3712.m7767(j, 0L, this.f11474 - 1);
        this.f11478 = 2;
        this.f11480 = this.f11477;
        this.f11475 = this.f11470;
        this.f11479 = 0L;
        this.f11481 = this.f11474;
    }
}
