package p292;

import java.io.IOException;
import p208.C2940;
import p208.C2967;
import p430.C5109;
import ʽٴ.ˈ;

/* renamed from: ٴᵎ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3652 implements InterfaceC3635, InterfaceC3631 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3640 f14313;

    public /* synthetic */ C3652(C3640 c3640) {
        this.f14313 = c3640;
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ʼˎ */
    public InterfaceC3643 mo7621() {
        return this.f14313.m7629();
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ˆʾ */
    public boolean mo7622(C3648 c3648) {
        return this.f14313.mo7622(c3648);
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ٴﹶ */
    public C2967 mo7623() {
        return this.f14313.f14233;
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ᵎﹶ */
    public boolean mo7624() {
        return this.f14313.f14240.m7650();
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ᵔᵢ */
    public C5109 mo7625() {
        return this.f14313.f14238;
    }

    @Override // p292.InterfaceC3631
    /* renamed from: ⁱˊ */
    public InterfaceC3635 mo7422() {
        return this.f14313;
    }

    @Override // p292.InterfaceC3631
    /* renamed from: ﹳٴ */
    public C3648 mo7423() {
        InterfaceC3643 mo7621;
        IOException iOException = null;
        while (true) {
            C3640 c3640 = this.f14313;
            if (!c3640.f14240.m7650()) {
                try {
                    mo7621 = c3640.mo7621();
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    } else {
                        ˈ.ⁱˊ(iOException, e);
                    }
                    if (!c3640.mo7622(null)) {
                        throw iOException;
                    }
                }
                if (mo7621.mo7620()) {
                    break;
                }
                C3629 mo7618 = mo7621.mo7618();
                if (mo7618.f14197 == null && mo7618.f14196 == null) {
                    mo7618 = mo7621.mo7616();
                }
                InterfaceC3643 interfaceC3643 = mo7618.f14197;
                Throwable th = mo7618.f14196;
                if (th != null) {
                    throw th;
                }
                if (interfaceC3643 == null) {
                    break;
                }
                c3640.f14238.addFirst(interfaceC3643);
            } else {
                throw new IOException("Canceled");
            }
        }
        return mo7621.mo7617();
    }

    @Override // p292.InterfaceC3635
    /* renamed from: ﾞʻ */
    public boolean mo7626(C2940 c2940) {
        return this.f14313.mo7626(c2940);
    }
}
