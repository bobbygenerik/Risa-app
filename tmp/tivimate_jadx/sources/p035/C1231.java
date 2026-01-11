package p035;

import java.lang.ref.WeakReference;
import java.util.Set;

/* renamed from: ʼﾞ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1231 extends AbstractC1200 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final WeakReference f4773;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1230 f4774;

    public C1231(C1230 c1230, C1240 c1240) {
        super(c1240.f4642);
        this.f4774 = c1230;
        this.f4773 = new WeakReference(c1240);
    }

    @Override // p035.AbstractC1200
    /* renamed from: ﹳٴ */
    public final void mo3732(Set set) {
        AbstractC1200 abstractC1200 = (AbstractC1200) this.f4773.get();
        if (abstractC1200 == null) {
            this.f4774.m3799(this);
        } else {
            abstractC1200.mo3732(set);
        }
    }
}
