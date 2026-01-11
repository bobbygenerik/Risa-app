package p041;

import java.util.concurrent.CancellationException;
import p324.AbstractC3999;

/* renamed from: ʽʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1313 extends AbstractC1307 implements InterfaceC1312 {
    @Override // p324.C4031
    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean mo3910(Throwable th) {
        AbstractC3999.m8167(th, this.f15440);
        return true;
    }

    @Override // p324.C4031
    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void mo3911(Throwable th) {
        if (th != null) {
            r0 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r0 == null) {
                CancellationException cancellationException = new CancellationException(getClass().getSimpleName().concat(" was cancelled"));
                cancellationException.initCause(th);
                r0 = cancellationException;
            }
        }
        this.f5007.mo3899(r0);
    }
}
