package p365;

import java.util.Iterator;

/* renamed from: ᵔﹳ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4456 extends AbstractC4457 implements Iterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C4460 f16678;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C4455 f16679;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f16680 = true;

    public C4456(C4460 c4460) {
        this.f16678 = c4460;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f16680) {
            return this.f16678.f16686 != null;
        }
        C4455 c4455 = this.f16679;
        return (c4455 == null || c4455.f16674 == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f16680) {
            this.f16680 = false;
            this.f16679 = this.f16678.f16686;
        } else {
            C4455 c4455 = this.f16679;
            this.f16679 = c4455 != null ? c4455.f16674 : null;
        }
        return this.f16679;
    }

    @Override // p365.AbstractC4457
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo9005(C4455 c4455) {
        C4455 c44552 = this.f16679;
        if (c4455 == c44552) {
            C4455 c44553 = c44552.f16676;
            this.f16679 = c44553;
            this.f16680 = c44553 == null;
        }
    }
}
