package p324;

import java.util.concurrent.locks.LockSupport;
import p126.InterfaceC2139;
import p152.AbstractC2444;

/* renamed from: ᴵי.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4056 extends AbstractC4051 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Thread f15448;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AbstractC4020 f15449;

    public C4056(InterfaceC2139 interfaceC2139, Thread thread, AbstractC4020 abstractC4020) {
        super(interfaceC2139, true, true);
        this.f15448 = thread;
        this.f15449 = abstractC4020;
    }

    @Override // p324.C4031
    /* renamed from: ˑﹳ */
    public final void mo5614(Object obj) {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.f15448;
        if (AbstractC2444.m5562(currentThread, thread)) {
            return;
        }
        LockSupport.unpark(thread);
    }
}
