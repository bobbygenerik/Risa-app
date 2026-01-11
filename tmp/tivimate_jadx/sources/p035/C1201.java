package p035;

import android.os.RemoteException;
import java.util.Set;

/* renamed from: ʼﾞ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1201 extends AbstractC1200 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C1243 f4643;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1201(C1243 c1243, String[] strArr) {
        super(strArr);
        this.f4643 = c1243;
    }

    @Override // p035.AbstractC1200
    /* renamed from: ﹳٴ */
    public final void mo3732(Set set) {
        C1243 c1243 = this.f4643;
        if (c1243.f4827.get()) {
            return;
        }
        try {
            InterfaceC1238 interfaceC1238 = c1243.f4829;
            if (interfaceC1238 != null) {
                interfaceC1238.mo3834(c1243.f4833, (String[]) set.toArray(new String[0]));
            }
        } catch (RemoteException e) {
        }
    }
}
