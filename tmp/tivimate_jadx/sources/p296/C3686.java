package p296;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p319.C3936;

/* renamed from: ٴﾞ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3686 extends AbstractC3662 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final IBinder f14426;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC3675 f14427;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3686(AbstractC3675 abstractC3675, int i, IBinder iBinder, Bundle bundle) {
        super(abstractC3675, i, bundle);
        this.f14427 = abstractC3675;
        this.f14426 = iBinder;
    }

    @Override // p296.AbstractC3662
    /* renamed from: ⁱˊ */
    public final boolean mo7690() {
        IBinder iBinder = this.f14426;
        try {
            AbstractC3659.m7687(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            AbstractC3675 abstractC3675 = this.f14427;
            if (!abstractC3675.mo4839().equals(interfaceDescriptor)) {
                String str = "service descriptor mismatch: " + abstractC3675.mo4839() + " vs. " + interfaceDescriptor;
                return false;
            }
            IInterface mo4840 = abstractC3675.mo4840(iBinder);
            if (mo4840 == null || !(AbstractC3675.m7701(abstractC3675, 2, 4, mo4840) || AbstractC3675.m7701(abstractC3675, 3, 4, mo4840))) {
                return false;
            }
            abstractC3675.f14381 = null;
            InterfaceC3687 interfaceC3687 = abstractC3675.f14380;
            if (interfaceC3687 == null) {
                return true;
            }
            interfaceC3687.mo7726();
            return true;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // p296.AbstractC3662
    /* renamed from: ﹳٴ */
    public final void mo7691(C3936 c3936) {
        InterfaceC3663 interfaceC3663 = this.f14427.f14374;
        if (interfaceC3663 != null) {
            interfaceC3663.mo7692(c3936);
        }
        System.currentTimeMillis();
    }
}
