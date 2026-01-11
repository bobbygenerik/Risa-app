package p365;

import java.util.Iterator;

/* renamed from: ᵔﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4458 extends AbstractC4457 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f16681;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C4455 f16682;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C4455 f16683;

    public C4458(C4455 c4455, C4455 c44552, int i) {
        this.f16681 = i;
        this.f16682 = c44552;
        this.f16683 = c4455;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16683 != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C4455 c4455 = this.f16683;
        C4455 c44552 = this.f16682;
        this.f16683 = (c4455 == c44552 || c44552 == null) ? null : m9006(c4455);
        return c4455;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4455 m9006(C4455 c4455) {
        switch (this.f16681) {
            case 0:
                return c4455.f16674;
            default:
                return c4455.f16676;
        }
    }

    @Override // p365.AbstractC4457
    /* renamed from: ﹳٴ */
    public final void mo9005(C4455 c4455) {
        C4455 c44552;
        C4455 c44553 = null;
        if (this.f16682 == c4455 && c4455 == this.f16683) {
            this.f16683 = null;
            this.f16682 = null;
        }
        C4455 c44554 = this.f16682;
        if (c44554 == c4455) {
            switch (this.f16681) {
                case 0:
                    c44552 = c44554.f16676;
                    break;
                default:
                    c44552 = c44554.f16674;
                    break;
            }
            this.f16682 = c44552;
        }
        C4455 c44555 = this.f16683;
        if (c44555 == c4455) {
            C4455 c44556 = this.f16682;
            if (c44555 != c44556 && c44556 != null) {
                c44553 = m9006(c44555);
            }
            this.f16683 = c44553;
        }
    }
}
