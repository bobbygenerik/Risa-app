package p341;

import android.os.Bundle;
import android.util.Log;
import com.parse.ٴʼ;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p097.C1895;
import p097.InterfaceC1896;
import p107.C1939;
import p107.InterfaceC1940;
import p192.InterfaceC2878;
import p229.C3125;
import p252.C3309;
import p275.C3526;
import p411.C4895;
import ˉˆ.ʿ;
import ˊⁱ.ˑﹳ;
import ˋⁱ.ﾞᴵ;

/* renamed from: ᵎˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C4265 implements InterfaceC1896, InterfaceC2878, InterfaceC1651 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C3526 f15839;

    public /* synthetic */ C4265(C3526 c3526) {
        this.f15839 = c3526;
    }

    @Override // p074.InterfaceC1651
    /* renamed from: ˆʾ */
    public void mo2818(InterfaceC1650 interfaceC1650) {
        C3526 c3526 = this.f15839;
        C3309 c3309 = C3309.f12735;
        c3309.m7123("AnalyticsConnector now available.");
        InterfaceC1940 interfaceC1940 = (InterfaceC1940) interfaceC1650.get();
        ʿ r2 = new ʿ(13, interfaceC1940);
        C3125 c3125 = new C3125(15, false);
        C1939 c1939 = (C1939) interfaceC1940;
        ﾞᴵ m4898 = c1939.m4898("clx", c3125);
        if (m4898 == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            m4898 = c1939.m4898("crash", c3125);
            if (m4898 != null) {
            }
        }
        if (m4898 == null) {
            c3309.m7122("Could not register Firebase Analytics listener; a listener is already registered.", null);
            return;
        }
        c3309.m7123("Registered Firebase Analytics listener.");
        ˑﹳ r9 = new ˑﹳ(4, false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ٴʼ r1 = new ٴʼ(r2);
        synchronized (c3526) {
            try {
                ArrayList arrayList = (ArrayList) c3526.f13866;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    r9.ﾞᴵ((C4895) obj);
                }
                c3125.f11941 = r9;
                c3125.f11943 = r1;
                c3526.f13867 = r9;
                c3526.f13868 = r1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p192.InterfaceC2878
    /* renamed from: ˊʻ */
    public void mo6380(Bundle bundle) {
        ((InterfaceC2878) this.f15839.f13868).mo6380(bundle);
    }

    @Override // p097.InterfaceC1896
    /* renamed from: ﾞᴵ */
    public void mo4837(C4895 c4895) {
        C3526 c3526 = this.f15839;
        synchronized (c3526) {
            try {
                if (((InterfaceC1896) c3526.f13867) instanceof C1895) {
                    ((ArrayList) c3526.f13866).add(c4895);
                }
                ((InterfaceC1896) c3526.f13867).mo4837(c4895);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
