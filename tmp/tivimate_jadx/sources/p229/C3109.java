package p229;

import java.util.concurrent.atomic.AtomicReference;
import p242.AbstractC3235;

/* renamed from: ˑʼ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3109 extends AbstractC3235 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f11841;

    public C3109(AtomicReference atomicReference) {
        this.f11841 = atomicReference;
    }

    @Override // p242.AbstractC3235
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo6753(Object obj) {
        AbstractC3235 abstractC3235 = (AbstractC3235) this.f11841.get();
        if (abstractC3235 == null) {
            throw new IllegalStateException("Operation cannot be started before fragment is in created state");
        }
        abstractC3235.mo6753(obj);
    }
}
