package p392;

import p055.AbstractC1445;
import p055.C1444;
import p055.C1448;
import p055.C1466;
import p055.C1467;
import p055.C1480;
import p420.AbstractC4940;

/* renamed from: ⁱי.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4685 extends AbstractC4940 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f17662 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f17663;

    public C4685(AbstractC1445 abstractC1445) {
        super(abstractC1445);
        this.f17663 = new C1466();
    }

    public C4685(AbstractC1445 abstractC1445, C1480 c1480) {
        super(abstractC1445);
        this.f17663 = c1480;
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ˉʿ */
    public C1466 mo4221(int i, C1466 c1466, long j) {
        switch (this.f17662) {
            case 1:
                super.mo4221(i, c1466, j);
                C1480 c1480 = (C1480) this.f17663;
                c1466.f5730 = c1480;
                C1444 c1444 = c1480.f5781;
                c1466.getClass();
                return c1466;
            default:
                return super.mo4221(i, c1466, j);
        }
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ﾞᴵ */
    public C1467 mo4231(int i, C1467 c1467, boolean z) {
        switch (this.f17662) {
            case 0:
                AbstractC1445 abstractC1445 = this.f18403;
                C1467 mo4231 = abstractC1445.mo4231(i, c1467, z);
                if (abstractC1445.mo4221(mo4231.f5744, (C1466) this.f17663, 0L).m4267()) {
                    mo4231.m4272(c1467.f5749, c1467.f5748, c1467.f5744, c1467.f5745, c1467.f5746, C1448.f5640, true);
                } else {
                    mo4231.f5750 = true;
                }
                return mo4231;
            default:
                return super.mo4231(i, c1467, z);
        }
    }
}
