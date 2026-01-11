package p447;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.InterfaceC0462;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC5282 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C5217 f19922;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19923 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f19924;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ Object f19925;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ String f19926;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f19927;

    public /* synthetic */ RunnableC5282(BinderC5223 binderC5223, C5217 c5217, Bundle bundle, InterfaceC5305 interfaceC5305, String str) {
        this.f19924 = binderC5223;
        this.f19922 = c5217;
        this.f19927 = bundle;
        this.f19925 = interfaceC5305;
        this.f19926 = str;
    }

    public RunnableC5282(C5240 c5240, String str, String str2, C5217 c5217, InterfaceC0462 interfaceC0462) {
        this.f19926 = str;
        this.f19924 = str2;
        this.f19922 = c5217;
        this.f19927 = interfaceC0462;
        this.f19925 = c5240;
    }

    public RunnableC5282(C5240 c5240, AtomicReference atomicReference, String str, String str2, C5217 c5217) {
        this.f19924 = atomicReference;
        this.f19926 = str;
        this.f19927 = str2;
        this.f19922 = c5217;
        this.f19925 = c5240;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        C5240 c5240;
        InterfaceC5260 interfaceC5260;
        C5339 c5339;
        InterfaceC5260 interfaceC52602;
        switch (this.f19923) {
            case 0:
                BinderC5223 binderC5223 = (BinderC5223) this.f19924;
                C5217 c5217 = this.f19922;
                Bundle bundle = (Bundle) this.f19927;
                InterfaceC5305 interfaceC5305 = (InterfaceC5305) this.f19925;
                String str = this.f19926;
                C5337 c5337 = binderC5223.f19646;
                c5337.m10649();
                try {
                    interfaceC5305.mo10455(c5337.m10626(bundle, c5217));
                    return;
                } catch (RemoteException e) {
                    c5337.mo10494().f20343.m10214(str, e, "Failed to return trigger URIs for app");
                    return;
                }
            case 1:
                AtomicReference atomicReference2 = (AtomicReference) this.f19924;
                synchronized (atomicReference2) {
                    try {
                        try {
                            c5240 = (C5240) this.f19925;
                            interfaceC5260 = c5240.f19693;
                        } catch (RemoteException e2) {
                            C5344 c5344 = ((C5322) ((ᵎﹶ) ((C5240) this.f19925)).ʾˋ).f20193;
                            C5322.m10556(c5344);
                            c5344.f20343.m10215("(legacy) Failed to get conditional properties; remote exception", null, this.f19926, e2);
                            ((AtomicReference) this.f19924).set(Collections.EMPTY_LIST);
                            atomicReference = (AtomicReference) this.f19924;
                        }
                        if (interfaceC5260 == null) {
                            C5344 c53442 = ((C5322) ((ᵎﹶ) c5240).ʾˋ).f20193;
                            C5322.m10556(c53442);
                            c53442.f20343.m10215("(legacy) Failed to get conditional properties; not connected to service", null, this.f19926, (String) this.f19927);
                            atomicReference2.set(Collections.EMPTY_LIST);
                            atomicReference2.notify();
                            return;
                        }
                        if (TextUtils.isEmpty(null)) {
                            atomicReference2.set(interfaceC5260.mo10220(this.f19926, (String) this.f19927, this.f19922));
                        } else {
                            atomicReference2.set(interfaceC5260.mo10219(null, this.f19926, (String) this.f19927));
                        }
                        c5240.m10297();
                        atomicReference = (AtomicReference) this.f19924;
                        atomicReference.notify();
                        return;
                    } catch (Throwable th) {
                        ((AtomicReference) this.f19924).notify();
                        throw th;
                    }
                }
            default:
                InterfaceC0462 interfaceC0462 = (InterfaceC0462) this.f19927;
                String str2 = (String) this.f19924;
                String str3 = this.f19926;
                C5240 c52402 = (C5240) this.f19925;
                ArrayList arrayList = new ArrayList();
                try {
                    try {
                        interfaceC52602 = c52402.f19693;
                    } catch (Throwable th2) {
                        C5339 c53392 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20208;
                        C5322.m10560(c53392);
                        c53392.m10681(interfaceC0462, arrayList);
                        throw th2;
                    }
                } catch (RemoteException e3) {
                    C5344 c53443 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20193;
                    C5322.m10556(c53443);
                    c53443.f20343.m10215("Failed to get conditional properties; remote exception", str3, str2, e3);
                }
                if (interfaceC52602 != null) {
                    arrayList = C5339.m10670(interfaceC52602.mo10220(str3, str2, this.f19922));
                    c52402.m10297();
                    c5339 = ((C5322) ((ᵎﹶ) c52402).ʾˋ).f20208;
                    C5322.m10560(c5339);
                    c5339.m10681(interfaceC0462, arrayList);
                    return;
                }
                C5322 c5322 = (C5322) ((ᵎﹶ) c52402).ʾˋ;
                C5344 c53444 = c5322.f20193;
                C5322.m10556(c53444);
                c53444.f20343.m10214(str3, str2, "Failed to get conditional properties; not connected to service");
                c5339 = c5322.f20208;
                C5322.m10560(c5339);
                c5339.m10681(interfaceC0462, arrayList);
                return;
        }
    }
}
