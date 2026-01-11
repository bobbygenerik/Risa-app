package p290;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.parse.ٴʼ;
import j$.util.Objects;
import p007.InterfaceC0835;
import p070.C1629;
import p139.C2356;
import p283.C3569;
import p359.C4360;
import p359.InterfaceC4357;

/* renamed from: ٴᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3605 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f14101;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C1629 f14102;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Runnable f14103;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2356 f14104;

    public /* synthetic */ RunnableC3605(C1629 c1629, C2356 c2356, int i, Runnable runnable) {
        this.f14102 = c1629;
        this.f14104 = c2356;
        this.f14101 = i;
        this.f14103 = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2356 c2356 = this.f14104;
        int i = this.f14101;
        Runnable runnable = this.f14103;
        C1629 c1629 = this.f14102;
        InterfaceC0835 interfaceC0835 = (InterfaceC0835) c1629.f6489;
        try {
            try {
                InterfaceC4357 interfaceC4357 = (InterfaceC4357) c1629.f6482;
                Objects.requireNonNull(interfaceC4357);
                ((C4360) interfaceC0835).m8834(new C3569(3, interfaceC4357));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) ((Context) c1629.f6488).getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    ((C4360) interfaceC0835).m8834(new C3606(c1629, c2356, i));
                } else {
                    c1629.m4409(c2356, i);
                }
                runnable.run();
            } catch (SynchronizationException unused) {
                ((ٴʼ) c1629.f6483).ʻᵎ(c2356, i + 1, false);
                runnable.run();
            }
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }
}
