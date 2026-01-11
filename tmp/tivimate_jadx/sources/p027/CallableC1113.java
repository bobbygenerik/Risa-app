package p027;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.text.TextUtils;
import ar.tvplayer.core.data.api.parse.ˈ;
import ar.tvplayer.core.domain.ʻٴ;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0639;
import com.google.android.gms.internal.play_billing.InterfaceC0532;
import j$.util.Objects;
import java.util.concurrent.Callable;
import ﹳי.ʽ;

/* renamed from: ʼٴ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC1113 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f4362;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ Object f4363;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C1111 f4364;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4365;

    public /* synthetic */ CallableC1113(C1111 c1111, Object obj, Object obj2, int i) {
        this.f4365 = i;
        this.f4364 = c1111;
        this.f4362 = obj;
        this.f4363 = obj2;
    }

    public CallableC1113(C1111 c1111, InterfaceC1094 interfaceC1094, String str) {
        this.f4365 = 2;
        this.f4362 = interfaceC1094;
        this.f4363 = str;
        Objects.requireNonNull(c1111);
        this.f4364 = c1111;
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x0089, code lost:
    
        r0 = r2.m3504(p027.AbstractC1093.f4262, 107, "Service has been reset to null", r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016d A[SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object m3523() {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p027.CallableC1113.m3523():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00b2, code lost:
    
        r0 = r2.m3503(p027.AbstractC1093.f4262, 107, "Service has been reset to null.", r5);
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object m3524() {
        /*
            Method dump skipped, instructions count: 710
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p027.CallableC1113.m3524():java.lang.Object");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final Object m3525() {
        InterfaceC0532 interfaceC0532;
        C1111 c1111 = this.f4364;
        ˈ r1 = (ˈ) this.f4362;
        ʽ r2 = (ʽ) this.f4363;
        try {
            if (!c1111.m3517()) {
                c1111.m3519(2, 3, AbstractC1093.f4262);
                boolean z = ʻٴ.ﹳٴ;
                return null;
            }
            if (TextUtils.isEmpty((String) r2.ʾˋ)) {
                AbstractC0542.m2097("BillingClient", "Please provide a valid purchase token.");
                c1111.m3519(26, 3, AbstractC1093.f4268);
                boolean z2 = ʻٴ.ﹳٴ;
                return null;
            }
            if (!c1111.f4342) {
                c1111.m3519(27, 3, AbstractC1093.f4273);
                boolean z3 = ʻٴ.ﹳٴ;
                return null;
            }
            synchronized (c1111.f4351) {
                interfaceC0532 = c1111.f4339;
            }
            if (interfaceC0532 == null) {
                c1111.m3514(r1, AbstractC1093.f4262, 107, null);
                return null;
            }
            String packageName = c1111.f4338.getPackageName();
            String str = (String) r2.ʾˋ;
            String str2 = c1111.f4330;
            String str3 = c1111.f4336;
            long longValue = c1111.f4350.longValue();
            int i = AbstractC0542.f2317;
            Bundle bundle = new Bundle();
            AbstractC0542.m2098(longValue, bundle, str2, str3);
            Bundle m2249 = ((C0639) interfaceC0532).m2249(packageName, str, bundle);
            AbstractC1093.m3479(AbstractC0542.m2099("BillingClient", m2249), AbstractC0542.m2100("BillingClient", m2249));
            boolean z4 = ʻٴ.ﹳٴ;
            return null;
        } catch (DeadObjectException e) {
            c1111.m3514(r1, AbstractC1093.f4262, 28, e);
            return null;
        } catch (Exception e2) {
            c1111.m3514(r1, AbstractC1093.f4270, 28, e2);
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle m2092;
        InterfaceC0532 interfaceC0532;
        switch (this.f4365) {
            case 0:
                return m3525();
            case 1:
                return m3524();
            case 2:
                return m3523();
            default:
                C1111 c1111 = this.f4364;
                String str = (String) this.f4362;
                String str2 = (String) this.f4363;
                try {
                    synchronized (c1111.f4351) {
                        interfaceC0532 = c1111.f4339;
                    }
                    if (interfaceC0532 == null) {
                        return AbstractC0542.m2092(AbstractC1093.f4262, 107);
                    }
                    return ((C0639) interfaceC0532).m2248(c1111.f4338.getPackageName(), str, str2);
                } catch (DeadObjectException e) {
                    C1115 c1115 = AbstractC1093.f4262;
                    String m3493 = AbstractC1104.m3493(e);
                    m2092 = AbstractC0542.m2092(c1115, 5);
                    if (m3493 != null) {
                        m2092.putString("ADDITIONAL_LOG_DETAILS", m3493);
                    }
                    return m2092;
                } catch (Exception e2) {
                    C1115 c11152 = AbstractC1093.f4270;
                    String m34932 = AbstractC1104.m3493(e2);
                    m2092 = AbstractC0542.m2092(c11152, 5);
                    if (m34932 != null) {
                        m2092.putString("ADDITIONAL_LOG_DETAILS", m34932);
                    }
                    return m2092;
                }
        }
    }
}
