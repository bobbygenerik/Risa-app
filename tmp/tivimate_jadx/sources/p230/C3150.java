package p230;

/* renamed from: ˑʿ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3150 extends AbstractC3166 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public AbstractC3143 f12066;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f12067;

    public /* synthetic */ C3150() {
        this.f12067 = 1;
    }

    public /* synthetic */ C3150(AbstractC3143 abstractC3143, int i) {
        this.f12067 = i;
        this.f12066 = abstractC3143;
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo6946(AbstractC3143 abstractC3143) {
        switch (this.f12067) {
            case 1:
                C3170 c3170 = (C3170) this.f12066;
                if (c3170.f12109) {
                    return;
                }
                c3170.m6897();
                c3170.f12109 = true;
                return;
            default:
                return;
        }
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ˈ */
    public void mo6941(AbstractC3143 abstractC3143) {
        switch (this.f12067) {
            case 0:
                C3170 c3170 = (C3170) this.f12066;
                c3170.f12108.remove(abstractC3143);
                if (c3170.mo6896()) {
                    return;
                }
                c3170.m6922(InterfaceC3149.f12063);
                c3170.f12029 = true;
                c3170.m6922(InterfaceC3149.f12064);
                return;
            default:
                return;
        }
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ˑﹳ */
    public void mo6942(AbstractC3143 abstractC3143) {
        switch (this.f12067) {
            case 1:
                C3170 c3170 = (C3170) this.f12066;
                int i = c3170.f12111 - 1;
                c3170.f12111 = i;
                if (i == 0) {
                    c3170.f12109 = false;
                    c3170.m6899();
                }
                abstractC3143.mo6908(this);
                return;
            case 2:
                this.f12066.mo6923();
                abstractC3143.mo6908(this);
                return;
            default:
                return;
        }
    }
}
