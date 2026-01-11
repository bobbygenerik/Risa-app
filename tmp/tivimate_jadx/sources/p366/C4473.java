package p366;

import android.content.res.Configuration;
import androidx.leanback.widget.ʻٴ;
import androidx.media3.exoplayer.ExoPlaybackException;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.Set;
import p003.C0779;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p035.AbstractC1220;
import p055.C1447;
import p055.C1483;
import p055.InterfaceC1487;
import p086.C1737;
import p095.InterfaceC1881;
import p171.InterfaceC2632;
import p212.InterfaceC2986;
import p220.C3029;
import p220.InterfaceC3035;
import p252.C3309;
import p266.AbstractC3458;
import p266.C3460;
import p266.InterfaceC3452;
import p266.InterfaceC3462;
import p305.C3721;
import p305.InterfaceC3718;
import p305.InterfaceC3725;
import p305.InterfaceC3734;
import p330.EnumC4150;
import p388.C4625;
import p395.C4715;
import p395.InterfaceC4726;
import p404.AbstractC4793;
import p404.C4777;
import p404.C4799;
import p404.InterfaceC4782;
import p404.InterfaceC4812;
import p405.C4824;
import p405.C4827;
import p411.C4905;
import p414.C4916;
import p414.C4917;
import p420.C4974;
import p420.C4989;
import p420.InterfaceC4945;
import p429.C5090;
import ﹳˋ.ʽʽ;
import ﹳי.ʽ;

/* renamed from: ᵔﹶ.ˉʿ */
/* loaded from: classes.dex */
public final /* synthetic */ class C4473 implements InterfaceC3452, InterfaceC1881, InterfaceC3718, InterfaceC3725, InterfaceC3734, InterfaceC4726, InterfaceC4812, InterfaceC4782, InterfaceC3035, InterfaceC2986 {

    /* renamed from: ʾˋ */
    public final /* synthetic */ int f16747;

    public /* synthetic */ C4473(int i) {
        this.f16747 = i;
    }

    public /* synthetic */ C4473(int i, Object obj) {
        this.f16747 = i;
    }

    /* renamed from: ʽ */
    public static /* bridge */ /* synthetic */ int m9029(Configuration configuration) {
        return configuration.fontWeightAdjustment;
    }

    @Override // p305.InterfaceC3734
    public void accept(Object obj) {
        switch (this.f16747) {
            case 15:
                ((C4715) obj).m9458();
                return;
            default:
                ((C4989) obj).f18635.mo9031();
                return;
        }
    }

    @Override // p095.InterfaceC1881
    public Object apply(Object obj) {
        switch (this.f16747) {
            case 9:
                return Integer.valueOf(((C4625) obj).f17280);
            case 10:
                return new C0779((C3721) obj);
            case 27:
                return ((InterfaceC2632) obj).mo2902().getClass().getSimpleName();
            default:
                return AbstractC0993.m3264(AbstractC1004.m3280(((InterfaceC4945) obj).mo5131().f18386, new C4974(0)));
        }
    }

    @Override // p266.InterfaceC3452
    /* renamed from: ˆʾ */
    public InterfaceC3462 mo624() {
        switch (this.f16747) {
            case 1:
                return new AbstractC3458(false);
            case 2:
                return new AbstractC3458(true);
            case 3:
                return new C3460();
            default:
                return new C1737();
        }
    }

    @Override // p212.InterfaceC2986
    /* renamed from: ˈ */
    public Object mo2819(ʻٴ r5) {
        Set set = r5.ʾᵎ(C4917.class);
        ʽ r1 = ʽ.ᴵˊ;
        if (r1 == null) {
            synchronized (ʽ.class) {
                try {
                    r1 = ʽ.ᴵˊ;
                    if (r1 == null) {
                        r1 = new ʽ(0);
                        ʽ.ᴵˊ = r1;
                    }
                } finally {
                }
            }
        }
        return new C4916(set, r1);
    }

    @Override // p305.InterfaceC3725
    /* renamed from: ˑﹳ */
    public void mo2820(Object obj, C1447 c1447) {
        ((InterfaceC1487) obj).mo2850(new C1483(c1447));
    }

    @Override // p220.InterfaceC3035
    /* renamed from: ᵎﹶ */
    public Object mo5197(C3029 c3029) {
        boolean z;
        if (c3029.m6567()) {
            C4905 c4905 = (C4905) c3029.m6565();
            String str = "Crashlytics report successfully enqueued to DataTransport: " + c4905.f18306;
            C3309 c3309 = C3309.f12735;
            c3309.m7123(str);
            File file = c4905.f18305;
            z = true;
            if (file.delete()) {
                c3309.m7123("Deleted report file: " + file.getPath());
            } else {
                c3309.m7122("Crashlytics could not delete report file: " + file.getPath(), null);
            }
        } else {
            c3029.m6563();
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @Override // p404.InterfaceC4782
    /* renamed from: ᵔᵢ */
    public Object mo5682(ʽʽ r5) {
        switch (this.f16747) {
            case 20:
                if (((C4827) r5).f18118.f18100 != 32) {
                    throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
                }
                Object obj = new Object();
                if (AbstractC1220.m3779(1)) {
                    return obj;
                }
                throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
            case 21:
                C4827 c4827 = (C4827) r5;
                if (c4827.f18118.f18100 == 32) {
                    return new C5090(c4827);
                }
                throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
            case 22:
                Object obj2 = new Object();
                if (AbstractC1220.m3783(2)) {
                    return obj2;
                }
                throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
            case 23:
                return new C5090((C4824) r5);
            default:
                C4799 c4799 = ((C4777) r5).f18018;
                C4777.m9548(c4799);
                Integer num = (Integer) c4799.f18052;
                int ordinal = ((EnumC4150) c4799.f18054).ordinal();
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            AbstractC4793.f18041.m4413();
                        } else if (ordinal != 4) {
                            throw new GeneralSecurityException("unknown output prefix type");
                        }
                    }
                    AbstractC4793.m9577(num.intValue()).m4413();
                } else {
                    AbstractC4793.m9576(num.intValue()).m4413();
                }
                return new Object();
        }
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ */
    public void mo2801(Object obj) {
        InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj;
        switch (this.f16747) {
            case 11:
                interfaceC1487.mo2839(new ExoPlaybackException(2, new RuntimeException("Player release timed out."), 1003));
                return;
            default:
                interfaceC1487.mo2857();
                return;
        }
    }

    @Override // p395.InterfaceC4726
    /* renamed from: ﹳٴ */
    public void mo9031() {
    }

    @Override // p404.InterfaceC4812
    /* renamed from: ﾞᴵ */
    public C4799 mo6963(ʽʽ r1) {
        C4799 c4799 = ((C4777) r1).f18018;
        C4777.m9548(c4799);
        return c4799;
    }
}
