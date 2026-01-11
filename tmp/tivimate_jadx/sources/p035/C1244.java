package p035;

import p012.AbstractC0905;
import p159.C2547;
import p424.C5015;
import ـˎ.ˈ;

/* renamed from: ʼﾞ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1244 extends AbstractC0905 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f4834 = 1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f4835;

    public C1244(AbstractC0905 abstractC0905) {
        super(abstractC0905.f3828, 1);
        this.f4835 = abstractC0905;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1244(C1233 c1233, int i) {
        super(i, 1);
        this.f4835 = c1233;
    }

    @Override // p012.AbstractC0905
    /* renamed from: ʼᐧ */
    public final void mo3173(C5015 c5015) {
        switch (this.f4834) {
            case 0:
                ((C1233) this.f4835).m3813(new C2547(c5015));
                return;
            default:
                ((AbstractC0905) this.f4835).mo3173(c5015);
                ˈ.ˏי(c5015, false, true);
                return;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ˉʿ */
    public void mo3175(C5015 c5015) {
        switch (this.f4834) {
            case 1:
                ((AbstractC0905) this.f4835).mo3175(c5015);
                return;
            default:
                return;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ˉˆ */
    public void mo3176(C5015 c5015) {
        switch (this.f4834) {
            case 1:
                ((AbstractC0905) this.f4835).mo3176(c5015);
                return;
            default:
                super.mo3176(c5015);
                return;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: יـ */
    public final void mo3178(C5015 c5015, int i, int i2) {
        switch (this.f4834) {
            case 0:
                ((C1233) this.f4835).m3814(new C2547(c5015), i, i2);
                return;
            default:
                ((AbstractC0905) this.f4835).mo3178(c5015, i, i2);
                ˈ.ʻٴ(c5015);
                return;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ᵔﹳ */
    public final void mo3182(C5015 c5015, int i, int i2) {
        switch (this.f4834) {
            case 0:
                mo3178(c5015, i, i2);
                return;
            default:
                ((AbstractC0905) this.f4835).mo3182(c5015, i, i2);
                return;
        }
    }

    @Override // p012.AbstractC0905
    /* renamed from: ﹳᐧ */
    public final void mo3184(C5015 c5015) {
        switch (this.f4834) {
            case 0:
                C1233 c1233 = (C1233) this.f4835;
                c1233.m3816(new C2547(c5015));
                c1233.f4791 = c5015;
                return;
            default:
                ((AbstractC0905) this.f4835).mo3184(c5015);
                return;
        }
    }
}
