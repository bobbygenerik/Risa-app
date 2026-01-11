package p447;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.InterfaceC0462;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˊˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5262 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ String f19862;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19863 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C5217 f19864;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f19865;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ Object f19866;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ String f19867;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ boolean f19868;

    public RunnableC5262(C5240 c5240, String str, String str2, C5217 c5217, boolean z, InterfaceC0462 interfaceC0462) {
        this.f19867 = str;
        this.f19862 = str2;
        this.f19864 = c5217;
        this.f19868 = z;
        this.f19866 = interfaceC0462;
        this.f19865 = c5240;
    }

    public RunnableC5262(C5240 c5240, AtomicReference atomicReference, String str, String str2, C5217 c5217, boolean z) {
        this.f19866 = atomicReference;
        this.f19867 = str;
        this.f19862 = str2;
        this.f19864 = c5217;
        this.f19868 = z;
        this.f19865 = c5240;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C5339 c5339;
        InterfaceC5260 interfaceC5260;
        C5322 c5322;
        AtomicReference atomicReference;
        C5240 c5240;
        InterfaceC5260 interfaceC52602;
        switch (this.f19863) {
            case 0:
                String str = this.f19862;
                String str2 = this.f19867;
                InterfaceC0462 interfaceC0462 = (InterfaceC0462) this.f19866;
                C5240 c52402 = this.f19865;
                Bundle bundle = new Bundle();
                try {
                    try {
                        interfaceC5260 = c52402.f19693;
                        c5322 = (C5322) ((ᵎﹶ) c52402).ʾˋ;
                    } catch (RemoteException e) {
                        e = e;
                    }
                    if (interfaceC5260 == null) {
                        C5344 c5344 = c5322.f20193;
                        C5322.m10556(c5344);
                        c5344.f20343.m10214(str2, str, "Failed to get user properties; not connected to service");
                        c5339 = c5322.f20208;
                        C5322.m10560(c5339);
                        c5339.m10703(interfaceC0462, bundle);
                        return;
                    }
                    List<C5241> mo10232 = interfaceC5260.mo10232(str2, str, this.f19868, this.f19864);
                    Bundle bundle2 = new Bundle();
                    if (mo10232 != null) {
                        for (C5241 c5241 : mo10232) {
                            String str3 = c5241.f19706;
                            String str4 = c5241.f19705;
                            if (str3 != null) {
                                bundle2.putString(str4, str3);
                            } else {
                                Long l = c5241.f19702;
                                if (l != null) {
                                    bundle2.putLong(str4, l.longValue());
                                } else {
                                    Double d = c5241.f19704;
                                    if (d != null) {
                                        bundle2.putDouble(str4, d.doubleValue());
                                    }
                                }
                            }
                        }
                    }
                    try {
                        c52402.m10297();
                        C5339 c53392 = c5322.f20208;
                        C5322.m10560(c53392);
                        c53392.m10703(interfaceC0462, bundle2);
                        return;
                    } catch (RemoteException e2) {
                        e = e2;
                        bundle = bundle2;
                        C5344 c53442 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20193;
                        C5322.m10556(c53442);
                        c53442.f20343.m10214(str2, e, "Failed to get user properties; remote exception");
                        c5339 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20208;
                        C5322.m10560(c5339);
                        c5339.m10703(interfaceC0462, bundle);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        bundle = bundle2;
                        C5339 c53393 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20208;
                        C5322.m10560(c53393);
                        c53393.m10703(interfaceC0462, bundle);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            default:
                AtomicReference atomicReference2 = (AtomicReference) this.f19866;
                synchronized (atomicReference2) {
                    try {
                        try {
                            c5240 = this.f19865;
                            interfaceC52602 = c5240.f19693;
                        } catch (RemoteException e3) {
                            C5344 c53443 = ((C5322) ((ᵎﹶ) this.f19865).ʾˋ).f20193;
                            C5322.m10556(c53443);
                            c53443.f20343.m10215("(legacy) Failed to get user properties; remote exception", null, this.f19867, e3);
                            ((AtomicReference) this.f19866).set(Collections.EMPTY_LIST);
                            atomicReference = (AtomicReference) this.f19866;
                        }
                        if (interfaceC52602 == null) {
                            C5344 c53444 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
                            C5322.m10556(c53444);
                            c53444.f20343.m10215("(legacy) Failed to get user properties; not connected to service", null, this.f19867, this.f19862);
                            atomicReference2.set(Collections.EMPTY_LIST);
                            atomicReference2.notify();
                            return;
                        }
                        if (TextUtils.isEmpty(null)) {
                            atomicReference2.set(interfaceC52602.mo10232(this.f19867, this.f19862, this.f19868, this.f19864));
                        } else {
                            atomicReference2.set(interfaceC52602.mo10224(null, this.f19867, this.f19862, this.f19868));
                        }
                        c5240.m10297();
                        atomicReference = (AtomicReference) this.f19866;
                        atomicReference.notify();
                        return;
                    } catch (Throwable th3) {
                        ((AtomicReference) this.f19866).notify();
                        throw th3;
                    }
                }
        }
    }
}
