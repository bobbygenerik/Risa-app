package p447;

import android.os.RemoteException;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˎـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC5275 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19906;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f19907;

    public /* synthetic */ RunnableC5275(C5240 c5240, int i) {
        this.f19906 = i;
        this.f19907 = c5240;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19906) {
            case 0:
                this.f19907.m10307();
                return;
            case 1:
                C5240 c5240 = this.f19907;
                C5322 c5322 = (C5322) ((ᵎﹶ) c5240).ʾˋ;
                InterfaceC5260 interfaceC5260 = c5240.f19693;
                if (interfaceC5260 == null) {
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20343.m10217("Failed to send Dma consent settings to service");
                    return;
                }
                try {
                    interfaceC5260.mo10243(c5240.m10302(false));
                    c5240.m10297();
                    return;
                } catch (RemoteException e) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20343.m10216(e, "Failed to send Dma consent settings to the service");
                    return;
                }
            default:
                C5240 c52402 = this.f19907;
                C5322 c53222 = (C5322) ((ᵎﹶ) c52402).ʾˋ;
                InterfaceC5260 interfaceC52602 = c52402.f19693;
                if (interfaceC52602 == null) {
                    C5344 c53443 = c53222.f20193;
                    C5322.m10556(c53443);
                    c53443.f20343.m10217("Failed to send storage consent settings to service");
                    return;
                }
                try {
                    interfaceC52602.mo10218(c52402.m10302(false));
                    c52402.m10297();
                    return;
                } catch (RemoteException e2) {
                    C5344 c53444 = c53222.f20193;
                    C5322.m10556(c53444);
                    c53444.f20343.m10216(e2, "Failed to send storage consent settings to the service");
                    return;
                }
        }
    }
}
