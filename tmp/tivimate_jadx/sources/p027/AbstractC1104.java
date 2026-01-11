package p027;

import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0566;
import com.google.android.gms.internal.play_billing.C0570;
import com.google.android.gms.internal.play_billing.C0603;
import com.google.android.gms.internal.play_billing.C0627;
import com.google.android.gms.internal.play_billing.C0645;
import com.google.android.gms.internal.play_billing.C0651;
import com.google.android.gms.internal.play_billing.EnumC0583;

/* renamed from: ʼٴ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1104 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f4313 = 0;

    static {
        int i = InterfaceC1087.f4241;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C0651 m3491(int i, EnumC0583 enumC0583) {
        try {
            C0603 m2308 = C0651.m2308();
            m2308.m2174();
            C0651.m2310((C0651) m2308.f2387, i);
            if (!enumC0583.equals(EnumC0583.f2383)) {
                m2308.m2174();
                C0651.m2307((C0651) m2308.f2387, enumC0583);
            }
            return (C0651) m2308.m2176();
        } catch (Exception e) {
            AbstractC0542.m2091("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0627 m3492(int i, int i2, C1115 c1115, String str, EnumC0583 enumC0583) {
        try {
            C0566 m2140 = C0570.m2140();
            int i3 = c1115.f4368;
            m2140.m2174();
            C0570.m2143((C0570) m2140.f2387, i3);
            String str2 = c1115.f4366;
            m2140.m2174();
            C0570.m2139((C0570) m2140.f2387, str2);
            int i4 = c1115.f4367;
            if (i4 != 0) {
                m2140.m2174();
                C0570.m2138((C0570) m2140.f2387, i4);
            }
            if (i != 0) {
                m2140.m2174();
                C0570.m2142((C0570) m2140.f2387, i);
            }
            if (str != null) {
                m2140.m2174();
                C0570.m2141((C0570) m2140.f2387, str);
            }
            C0645 m2236 = C0627.m2236();
            m2236.m2291(m2140);
            m2236.m2174();
            C0627.m2237((C0627) m2236.f2387, i2);
            if (!enumC0583.equals(EnumC0583.f2383)) {
                m2236.m2174();
                C0627.m2235((C0627) m2236.f2387, enumC0583);
            }
            return (C0627) m2236.m2176();
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingLogger", "Unable to create logging payload", th);
            return null;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m3493(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String simpleName = exc.getClass().getSimpleName();
            String message = exc.getMessage();
            if (message == null) {
                message = "";
            }
            String str = simpleName + ":" + message;
            int i = AbstractC0542.f2317;
            return str.length() > 40 ? str.substring(0, 40) : str;
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingLogger", "Unable to get truncated exception info", th);
            return null;
        }
    }
}
