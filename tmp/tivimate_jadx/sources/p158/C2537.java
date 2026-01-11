package p158;

import androidx.leanback.widget.ʻٴ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.lang.reflect.Constructor;
import java.security.GeneralSecurityException;
import java.util.concurrent.ScheduledExecutorService;
import p051.C1397;
import p071.C1631;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p094.InterfaceC1869;
import p095.InterfaceC1881;
import p171.InterfaceC2632;
import p212.C2990;
import p212.InterfaceC2986;
import p218.AbstractC3015;
import p218.C3022;
import p221.EnumC3043;
import p223.C3056;
import p230.AbstractC3143;
import p230.InterfaceC3149;
import p230.InterfaceC3165;
import p273.C3484;
import p277.InterfaceC3535;
import p330.EnumC4150;
import p404.AbstractC4793;
import p404.C4777;
import p404.C4799;
import p404.C4808;
import p404.InterfaceC4782;
import p429.C5082;
import ﹳˋ.ʽʽ;

/* renamed from: ˊˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C2537 implements InterfaceC1881, InterfaceC1869, InterfaceC1651, InterfaceC4782, InterfaceC2986, InterfaceC3149 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9634;

    public /* synthetic */ C2537(int i) {
        this.f9634 = i;
    }

    @Override // p095.InterfaceC1881
    public Object apply(Object obj) {
        C1397 c1397 = (C1397) obj;
        switch (this.f9634) {
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return Long.valueOf(c1397.f5476);
            default:
                return Long.valueOf(c1397.f5474);
        }
    }

    @Override // p074.InterfaceC1651
    /* renamed from: ˆʾ */
    public void mo2818(InterfaceC1650 interfaceC1650) {
    }

    @Override // p212.InterfaceC2986
    /* renamed from: ˈ */
    public Object mo2819(ʻٴ r1) {
        switch (this.f9634) {
            case 22:
                return (ScheduledExecutorService) ExecutorsRegistrar.f3090.get();
            case 23:
                return (ScheduledExecutorService) ExecutorsRegistrar.f3087.get();
            case 24:
                return (ScheduledExecutorService) ExecutorsRegistrar.f3089.get();
            default:
                C2990 c2990 = ExecutorsRegistrar.f3090;
                return EnumC3043.f11586;
        }
    }

    @Override // p230.InterfaceC3149
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo5681(InterfaceC3165 interfaceC3165, AbstractC3143 abstractC3143, boolean z) {
        switch (this.f9634) {
            case 26:
                interfaceC3165.mo6950(abstractC3143);
                return;
            case 27:
                interfaceC3165.mo6952(abstractC3143);
                return;
            case 28:
                interfaceC3165.mo6941(abstractC3143);
                return;
            default:
                interfaceC3165.mo6944();
                return;
        }
    }

    @Override // p404.InterfaceC4782
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object mo5682(ʽʽ r5) {
        byte[] m4413;
        switch (this.f9634) {
            case 20:
                C3022 c3022 = (C3022) r5;
                AbstractC3015.m6544(c3022.f11532);
                return new C5082(((C1631) c3022.f11535.ᴵˊ).m4413(), c3022.f11533);
            default:
                C4799 c4799 = ((C4777) r5).f18018;
                C4777.m9548(c4799);
                Integer num = (Integer) c4799.f18052;
                InterfaceC3535 interfaceC3535 = (InterfaceC3535) C4808.f18073.m9610(InterfaceC3535.class, (String) c4799.f18050).m9600((AbstractC0744) c4799.f18049);
                EnumC4150 enumC4150 = (EnumC4150) c4799.f18054;
                int ordinal = enumC4150.ordinal();
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            m4413 = AbstractC4793.f18041.m4413();
                        } else if (ordinal != 4) {
                            throw new GeneralSecurityException("unknown output prefix type " + enumC4150.m8458());
                        }
                    }
                    m4413 = AbstractC4793.m9577(num.intValue()).m4413();
                } else {
                    m4413 = AbstractC4793.m9576(num.intValue()).m4413();
                }
                return new C3484(interfaceC3535, enumC4150, m4413);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Constructor m5683() {
        switch (this.f9634) {
            case 4:
                if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                    return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(InterfaceC2632.class).getConstructor(Integer.TYPE);
                }
                return null;
            default:
                return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(InterfaceC2632.class).getConstructor(null);
        }
    }

    @Override // p094.InterfaceC1869
    /* renamed from: ﹳٴ */
    public boolean mo4355(int i, int i2, int i3, int i4, int i5) {
        if (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) {
            return true;
        }
        if (i2 == 77 && i3 == 76 && i4 == 76) {
            return i5 == 84 || i == 2;
        }
        return false;
    }
}
