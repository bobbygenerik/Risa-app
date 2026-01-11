package p041;

import ar.tvplayer.core.domain.ˈ;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.JobCancellationException;
import p012.C0902;
import p089.C1766;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p324.AbstractC4051;

/* renamed from: ʽʿ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1307 extends AbstractC4051 implements InterfaceC1299 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C1316 f5007;

    public AbstractC1307(InterfaceC2139 interfaceC2139, C1316 c1316, boolean z, boolean z2) {
        super(interfaceC2139, z, z2);
        this.f5007 = c1316;
    }

    @Override // p041.InterfaceC1298
    public final C1297 iterator() {
        C1316 c1316 = this.f5007;
        c1316.getClass();
        return new C1297(c1316);
    }

    @Override // p041.InterfaceC1298
    /* renamed from: ʼˎ */
    public final Object mo3897() {
        return this.f5007.mo3897();
    }

    @Override // p041.InterfaceC1298
    /* renamed from: ˆʾ */
    public final Object mo3898(C1766 c1766) {
        C1316 c1316 = this.f5007;
        c1316.getClass();
        return C1316.m3919(c1316, c1766);
    }

    @Override // p324.C4031
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo3907(CancellationException cancellationException) {
        this.f5007.m3933(cancellationException, true);
        m8256(cancellationException);
    }

    @Override // p324.C4031, p324.InterfaceC4036, p041.InterfaceC1298
    /* renamed from: ᵎﹶ */
    public final void mo3899(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(mo8232(), null, this);
        }
        mo3907(cancellationException);
    }

    @Override // p041.InterfaceC1294
    /* renamed from: ⁱˊ */
    public Object mo3890(Object obj) {
        return this.f5007.mo3890(obj);
    }

    @Override // p041.InterfaceC1294
    /* renamed from: ﹳٴ */
    public Object mo3891(Object obj, InterfaceC2136 interfaceC2136) {
        return this.f5007.mo3891(obj, interfaceC2136);
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final void m3908(ˈ r6) {
        C1316 c1316 = this.f5007;
        c1316.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1316.f5038;
        while (!atomicReferenceFieldUpdater.compareAndSet(c1316, null, r6)) {
            if (atomicReferenceFieldUpdater.get(c1316) != null) {
                while (true) {
                    Object obj = atomicReferenceFieldUpdater.get(c1316);
                    C0902 c0902 = AbstractC1310.f5024;
                    if (obj != c0902) {
                        if (obj == AbstractC1310.f5027) {
                            throw new IllegalStateException("Another handler was already registered and successfully invoked");
                        }
                        throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
                    }
                    C0902 c09022 = AbstractC1310.f5027;
                    while (!atomicReferenceFieldUpdater.compareAndSet(c1316, c0902, c09022)) {
                        if (atomicReferenceFieldUpdater.get(c1316) != c0902) {
                            break;
                        }
                    }
                    r6.ⁱˊ(c1316.m3922());
                    return;
                }
            }
        }
    }
}
