package p447;

import android.os.RemoteException;
import j$.util.Objects;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˊﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5266 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f19882;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19883;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5217 f19884;

    public RunnableC5266(C5240 c5240, C5217 c5217) {
        this.f19883 = 4;
        this.f19884 = c5217;
        Objects.requireNonNull(c5240);
        this.f19882 = c5240;
    }

    public /* synthetic */ RunnableC5266(C5240 c5240, C5217 c5217, int i) {
        this.f19883 = i;
        this.f19884 = c5217;
        this.f19882 = c5240;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19883) {
            case 0:
                C5240 c5240 = this.f19882;
                InterfaceC5260 interfaceC5260 = c5240.f19693;
                C5322 c5322 = (C5322) ((ᵎﹶ) c5240).ʾˋ;
                if (interfaceC5260 == null) {
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20343.m10217("Failed to reset data on the service: not connected to service");
                    return;
                } else {
                    try {
                        interfaceC5260.mo10238(this.f19884);
                    } catch (RemoteException e) {
                        C5344 c53442 = c5322.f20193;
                        C5322.m10556(c53442);
                        c53442.f20343.m10216(e, "Failed to reset data on the service: remote exception");
                    }
                    c5240.m10297();
                    return;
                }
            case 1:
                C5240 c52402 = this.f19882;
                InterfaceC5260 interfaceC52602 = c52402.f19693;
                C5322 c53222 = (C5322) ((ᵎﹶ) c52402).ʾˋ;
                if (interfaceC52602 == null) {
                    C5344 c53443 = c53222.f20193;
                    C5322.m10556(c53443);
                    c53443.f20343.m10217("Discarding data. Failed to send app launch");
                    return;
                }
                try {
                    C5217 c5217 = this.f19884;
                    C5327 c5327 = c53222.f20189;
                    C5254 c5254 = AbstractC5321.f20136;
                    if (c5327.m10577(null, c5254)) {
                        c52402.m10294(interfaceC52602, null, c5217);
                    }
                    interfaceC52602.mo10221(c5217);
                    c53222.m10565().m10364();
                    c53222.f20189.m10577(null, c5254);
                    c52402.m10294(interfaceC52602, null, c5217);
                    c52402.m10297();
                    return;
                } catch (RemoteException e2) {
                    C5344 c53444 = c53222.f20193;
                    C5322.m10556(c53444);
                    c53444.f20343.m10216(e2, "Failed to send app launch to the service");
                    return;
                }
            case 2:
                C5240 c52403 = this.f19882;
                InterfaceC5260 interfaceC52603 = c52403.f19693;
                C5322 c53223 = (C5322) ((ᵎﹶ) c52403).ʾˋ;
                if (interfaceC52603 == null) {
                    C5344 c53445 = c53223.f20193;
                    C5322.m10556(c53445);
                    c53445.f20348.m10217("Failed to send app backgrounded");
                    return;
                }
                try {
                    interfaceC52603.mo10235(this.f19884);
                    c52403.m10297();
                    return;
                } catch (RemoteException e3) {
                    C5344 c53446 = c53223.f20193;
                    C5322.m10556(c53446);
                    c53446.f20343.m10216(e3, "Failed to send app backgrounded to the service");
                    return;
                }
            case 3:
                C5240 c52404 = this.f19882;
                InterfaceC5260 interfaceC52604 = c52404.f19693;
                C5322 c53224 = (C5322) ((ᵎﹶ) c52404).ʾˋ;
                if (interfaceC52604 == null) {
                    C5344 c53447 = c53224.f20193;
                    C5322.m10556(c53447);
                    c53447.f20343.m10217("Failed to send measurementEnabled to service");
                    return;
                }
                try {
                    interfaceC52604.mo10227(this.f19884);
                    c52404.m10297();
                    return;
                } catch (RemoteException e4) {
                    C5344 c53448 = c53224.f20193;
                    C5322.m10556(c53448);
                    c53448.f20343.m10216(e4, "Failed to send measurementEnabled to the service");
                    return;
                }
            default:
                C5240 c52405 = this.f19882;
                InterfaceC5260 interfaceC52605 = c52405.f19693;
                C5322 c53225 = (C5322) ((ᵎﹶ) c52405).ʾˋ;
                if (interfaceC52605 == null) {
                    C5344 c53449 = c53225.f20193;
                    C5322.m10556(c53449);
                    c53449.f20343.m10217("Failed to send consent settings to service");
                    return;
                }
                try {
                    interfaceC52605.mo10240(this.f19884);
                    c52405.m10297();
                    return;
                } catch (RemoteException e5) {
                    C5344 c534410 = c53225.f20193;
                    C5322.m10556(c534410);
                    c534410.f20343.m10216(e5, "Failed to send consent settings to the service");
                    return;
                }
        }
    }
}
