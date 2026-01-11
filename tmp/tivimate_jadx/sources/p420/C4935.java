package p420;

import p055.AbstractC1445;
import p055.C1466;
import p055.C1467;
import p055.C1480;
import p305.AbstractC3731;
import p364.C4443;
import p392.C4685;

/* renamed from: ﹳᵢ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4935 extends AbstractC4960 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f18376;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C1466 f18377;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public C4962 f18378;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f18379;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f18380;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C4966 f18381;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final boolean f18382;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C1467 f18383;

    public C4935(InterfaceC4975 interfaceC4975, boolean z) {
        super(interfaceC4975);
        this.f18382 = z && interfaceC4975.mo9777();
        this.f18377 = new C1466();
        this.f18383 = new C1467();
        AbstractC1445 mo9775 = interfaceC4975.mo9775();
        if (mo9775 == null) {
            this.f18378 = new C4962(new C4943(interfaceC4975.mo5105()), C1466.f5726, C4962.f18486);
        } else {
            this.f18378 = new C4962(mo9775, null, null);
            this.f18376 = true;
        }
    }

    @Override // p420.AbstractC4948, p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        this.f18379 = false;
        this.f18380 = false;
        super.mo5098();
    }

    @Override // p420.AbstractC4960
    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void mo9735() {
        if (this.f18382) {
            return;
        }
        this.f18380 = true;
        m9776();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00cc  */
    @Override // p420.AbstractC4960
    /* renamed from: ˊʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9736(p055.AbstractC1445 r12) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p420.C4935.mo9736(ʽⁱ.ʼˈ):void");
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C4966 c4966 = (C4966) interfaceC4945;
        if (c4966.f18504 != null) {
            InterfaceC4975 interfaceC4975 = c4966.f18500;
            interfaceC4975.getClass();
            interfaceC4975.mo5101(c4966.f18504);
        }
        if (interfaceC4945 == this.f18381) {
            this.f18381 = null;
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final boolean m9737(long j) {
        C4966 c4966 = this.f18381;
        int mo4228 = this.f18378.mo4228(c4966.f18499.f18631);
        if (mo4228 == -1) {
            return false;
        }
        C4962 c4962 = this.f18378;
        C1467 c1467 = this.f18383;
        c4962.mo4231(mo4228, c1467, false);
        long j2 = c1467.f5745;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        c4966.f18502 = j;
        return true;
    }

    @Override // p420.AbstractC4960
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4987 mo9738(C4987 c4987) {
        Object obj = c4987.f18631;
        Object obj2 = this.f18378.f18488;
        if (obj2 != null && obj2.equals(obj)) {
            obj = C4962.f18486;
        }
        return c4987.m9839(obj);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵎⁱ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4966 mo5104(C4987 c4987, C4443 c4443, long j) {
        C4966 c4966 = new C4966(c4987, c4443, j);
        AbstractC3731.m7857(c4966.f18500 == null);
        c4966.f18500 = this.f18442;
        if (!this.f18379) {
            this.f18381 = c4966;
            if (!this.f18380) {
                this.f18380 = true;
                m9776();
            }
            return c4966;
        }
        Object obj = c4987.f18631;
        if (this.f18378.f18488 != null && obj.equals(C4962.f18486)) {
            obj = this.f18378.f18488;
        }
        c4966.m9789(c4987.m9839(obj));
        return c4966;
    }

    @Override // p420.AbstractC4960, p420.InterfaceC4975
    /* renamed from: ᵔʾ */
    public final void mo5102(C1480 c1480) {
        if (this.f18376) {
            C4962 c4962 = this.f18378;
            this.f18378 = new C4962(new C4685(this.f18378.f18403, c1480), c4962.f18487, c4962.f18488);
        } else {
            this.f18378 = new C4962(new C4943(c1480), C1466.f5726, C4962.f18486);
        }
        this.f18442.mo5102(c1480);
    }
}
