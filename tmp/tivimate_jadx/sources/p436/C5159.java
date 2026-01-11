package p436;

import java.util.concurrent.atomic.AtomicReferenceArray;
import p126.InterfaceC2139;
import p153.AbstractC2483;

/* renamed from: ﹶי.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5159 extends AbstractC2483 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReferenceArray f19445;

    public C5159(long j, C5159 c5159, int i) {
        super(j, c5159, i);
        this.f19445 = new AtomicReferenceArray(AbstractC5157.f19443);
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.f9472 + ", hashCode=" + hashCode() + ']';
    }

    @Override // p153.AbstractC2483
    /* renamed from: ᵎﹶ */
    public final int mo3903() {
        return AbstractC5157.f19443;
    }

    @Override // p153.AbstractC2483
    /* renamed from: ᵔᵢ */
    public final void mo3905(int i, InterfaceC2139 interfaceC2139) {
        this.f19445.set(i, AbstractC5157.f19440);
        m5631();
    }
}
