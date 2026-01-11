package p090;

import p152.AbstractC2452;
import p329.InterfaceC4104;

/* renamed from: ʿᵢ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1837 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1791 f7392;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f7393;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1837(C1791 c1791, int i) {
        super(0);
        this.f7393 = i;
        this.f7392 = c1791;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f7393) {
            case 0:
                C1826 c1826 = (C1826) this.f7392.f7233.getValue();
                switch (c1826.f7366) {
                    case 0:
                        return c1826.f7365;
                    default:
                        return c1826.f7365;
                }
            default:
                return this.f7392.f7240.mo4759();
        }
    }
}
