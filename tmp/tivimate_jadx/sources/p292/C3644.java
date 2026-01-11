package p292;

import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import p274.C3488;
import p452.AbstractC5367;

/* renamed from: ٴᵎ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3644 extends AbstractC5367 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3643 f14275;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ C3488 f14276;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3644(String str, InterfaceC3643 interfaceC3643, C3488 c3488) {
        super(str);
        this.f14275 = interfaceC3643;
        this.f14276 = c3488;
    }

    @Override // p452.AbstractC5367
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long mo7636() {
        C3629 c3629;
        InterfaceC3643 interfaceC3643 = this.f14275;
        try {
            c3629 = interfaceC3643.mo7618();
        } catch (Throwable th) {
            c3629 = new C3629(interfaceC3643, th, 2);
        }
        C3488 c3488 = this.f14276;
        if (!((CopyOnWriteArrayList) c3488.f13690).contains(interfaceC3643)) {
            return -1L;
        }
        ((LinkedBlockingDeque) c3488.f13687).put(c3629);
        return -1L;
    }
}
