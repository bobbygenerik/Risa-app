package p256;

import android.graphics.Bitmap;
import androidx.leanback.widget.ˉˆ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0740;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.parse.ٴʼ;
import java.security.GeneralSecurityException;
import p017.AbstractC0993;
import p071.C1631;
import p095.InterfaceC1881;
import p218.C3018;
import p218.C3022;
import p223.C3056;
import p229.C3125;
import p245.C3258;
import p245.C3262;
import p245.C3266;
import p245.C3267;
import p245.C3269;
import p245.C3272;
import p245.C3273;
import p245.C3278;
import p245.C3284;
import p245.C3288;
import p273.AbstractC3485;
import p277.AbstractC3528;
import p330.C4110;
import p330.C4112;
import p330.C4115;
import p330.C4118;
import p330.C4120;
import p330.C4123;
import p330.C4124;
import p330.C4125;
import p330.C4127;
import p330.C4133;
import p330.C4138;
import p330.C4139;
import p330.C4143;
import p330.C4146;
import p330.C4152;
import p330.C4153;
import p330.C4157;
import p330.C4158;
import p330.C4161;
import p330.C4166;
import p330.C4168;
import p330.C4171;
import p330.C4172;
import p330.C4175;
import p330.C4179;
import p330.C4180;
import p330.EnumC4150;
import p330.EnumC4167;
import p372.C4523;
import p404.C4790;
import p404.C4799;
import p404.InterfaceC4781;
import p404.InterfaceC4785;
import p404.InterfaceC4794;
import p404.InterfaceC4812;
import p457.C5384;
import ˏˆ.ﹳٴ;
import ﹳˋ.ʽʽ;

/* renamed from: יٴ.ˈ */
/* loaded from: classes.dex */
public final /* synthetic */ class C3375 implements InterfaceC4794, InterfaceC4781, InterfaceC4812, InterfaceC4785, InterfaceC1881 {

    /* renamed from: ʾˋ */
    public final /* synthetic */ int f13189;

    /* renamed from: ᵎﹶ */
    public static /* bridge */ /* synthetic */ Bitmap.Config m7244() {
        return Bitmap.Config.RGBA_F16;
    }

    @Override // p095.InterfaceC1881
    public Object apply(Object obj) {
        return AbstractC0993.m3260(Integer.valueOf(((C4523) obj).f16918));
    }

    @Override // p404.InterfaceC4781
    /* renamed from: ʽ */
    public AbstractC3528 mo6960(C4790 c4790) {
        switch (this.f13189) {
            case 1:
                C4171 c4171 = (C4171) c4790.f18034;
                if (!c4171.m8519().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: " + c4171.m8519());
                }
                try {
                    C4179 m8542 = C4179.m8542(c4171.m8518(), C0713.m2526());
                    if (m8542.m8545() != 0) {
                        throw new GeneralSecurityException("Only version 0 parameters are accepted");
                    }
                    ﹳٴ m7101 = C3284.m7101();
                    m7101.ˈʿ(m8542.m8544());
                    m7101.ˆﾞ();
                    m7101.ˊˋ();
                    m7101.ᴵᵔ = AbstractC3378.m7259(c4171.m8517());
                    return m7101.ˉʿ();
                } catch (InvalidProtocolBufferException e) {
                    throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e);
                }
            case 5:
                C4171 c41712 = (C4171) c4790.f18034;
                if (!c41712.m8519().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: " + c41712.m8519());
                }
                try {
                    C4133 m8419 = C4133.m8419(c41712.m8518(), C0713.m2526());
                    if (m8419.m8422() != 0) {
                        throw new GeneralSecurityException("Only version 0 parameters are accepted");
                    }
                    C3125 m7092 = C3269.m7092();
                    m7092.m6826(m8419.m8421());
                    m7092.f11941 = AbstractC3380.m7261(c41712.m8517());
                    return m7092.m6828();
                } catch (InvalidProtocolBufferException e2) {
                    throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e2);
                }
            case 9:
                C4171 c41713 = (C4171) c4790.f18034;
                if (!c41713.m8519().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: " + c41713.m8519());
                }
                try {
                    C4175.m8526(c41713.m8518(), C0713.m2526());
                    return new C3272(AbstractC3371.m7232(c41713.m8517()));
                } catch (InvalidProtocolBufferException e3) {
                    throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e3);
                }
            case 13:
                C4171 c41714 = (C4171) c4790.f18034;
                if (!c41714.m8519().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: " + c41714.m8519());
                }
                try {
                    C4152 m8460 = C4152.m8460(c41714.m8518(), C0713.m2526());
                    if (m8460.m8463() != 0) {
                        throw new GeneralSecurityException("Only version 0 parameters are accepted");
                    }
                    return C3273.m7095(m8460.m8462().m8395(), AbstractC3377.m7256(c41714.m8517()));
                } catch (InvalidProtocolBufferException e4) {
                    throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e4);
                }
            case 17:
                C4171 c41715 = (C4171) c4790.f18034;
                if (!c41715.m8519().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: " + c41715.m8519());
                }
                try {
                    if (C4110.m8355(c41715.m8518(), C0713.m2526()).m8357() == 0) {
                        return new C3262(AbstractC3372.m7234(c41715.m8517()));
                    }
                    throw new GeneralSecurityException("Only version 0 parameters are accepted");
                } catch (InvalidProtocolBufferException e5) {
                    throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e5);
                }
            default:
                C4171 c41716 = (C4171) c4790.f18034;
                if (!c41716.m8519().equals("type.googleapis.com/google.crypto.tink.AesSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesSivParameters.parseParameters: " + c41716.m8519());
                }
                try {
                    C4138 m8432 = C4138.m8432(c41716.m8518(), C0713.m2526());
                    if (m8432.m8435() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C5384 m6545 = C3018.m6545();
                    m6545.m10782(m8432.m8434());
                    m6545.f20505 = AbstractC3485.m7412(c41716.m8517());
                    return m6545.m10783();
                } catch (InvalidProtocolBufferException e6) {
                    throw new GeneralSecurityException("Parsing AesSivParameters failed: ", e6);
                }
        }
    }

    @Override // p404.InterfaceC4785
    /* renamed from: ⁱˊ */
    public ʽʽ mo6961(C4799 c4799) {
        switch (this.f13189) {
            case 3:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
                }
                try {
                    C4124 m8387 = C4124.m8387((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8387.m8391() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    ﹳٴ m7101 = C3284.m7101();
                    m7101.ˈʿ(m8387.m8390().size());
                    m7101.ˆﾞ();
                    m7101.ˊˋ();
                    m7101.ᴵᵔ = AbstractC3378.m7259((EnumC4150) c4799.f18054);
                    C3284 c3284 = m7101.ˉʿ();
                    ᵢ.ﹳٴ r2 = new ᵢ.ﹳٴ(12, false);
                    r2.ʽʽ = null;
                    r2.ˈٴ = null;
                    r2.ᴵˊ = c3284;
                    r2.ʽʽ = new ˉˆ(13, C1631.m4412(m8387.m8390().m2696()));
                    r2.ˈٴ = (Integer) c4799.f18052;
                    return r2.ᵔᵢ();
                } catch (InvalidProtocolBufferException unused) {
                    throw new GeneralSecurityException("Parsing AesGcmKey failed");
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
                }
                try {
                    C4166 m8505 = C4166.m8505((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8505.m8509() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C3125 m7092 = C3269.m7092();
                    m7092.m6826(m8505.m8508().size());
                    m7092.f11941 = AbstractC3380.m7261((EnumC4150) c4799.f18054);
                    C3269 m6828 = m7092.m6828();
                    ٴʼ r22 = new ٴʼ(13, false);
                    r22.ʽʽ = null;
                    r22.ˈٴ = null;
                    r22.ᴵˊ = m6828;
                    r22.ʽʽ = new ˉˆ(13, C1631.m4412(m8505.m8508().m2696()));
                    r22.ˈٴ = (Integer) c4799.f18052;
                    return r22.ʽʽ();
                } catch (InvalidProtocolBufferException unused2) {
                    throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
                }
            case 11:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
                }
                try {
                    C4157 m8471 = C4157.m8471((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8471.m8475() == 0) {
                        return C3258.m7079(AbstractC3371.m7232((EnumC4150) c4799.f18054), new ˉˆ(13, C1631.m4412(m8471.m8474().m2696())), (Integer) c4799.f18052);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (InvalidProtocolBufferException unused3) {
                    throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
                }
            case 15:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
                }
                try {
                    C4115 m8376 = C4115.m8376((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8376.m8380() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    if (m8376.m8381().size() != 32) {
                        throw new GeneralSecurityException("Only 32 byte key size is accepted");
                    }
                    return C3267.m7087(C3273.m7095(m8376.m8379().m8395(), AbstractC3377.m7256((EnumC4150) c4799.f18054)), new ˉˆ(13, C1631.m4412(m8376.m8381().m2696())), (Integer) c4799.f18052);
                } catch (InvalidProtocolBufferException unused4) {
                    throw new GeneralSecurityException("Parsing XAesGcmKey failed");
                }
            case 19:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                    throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
                }
                try {
                    C4161 m8482 = C4161.m8482((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8482.m8486() == 0) {
                        return C3278.m7097(AbstractC3372.m7234((EnumC4150) c4799.f18054), new ˉˆ(13, C1631.m4412(m8482.m8485().m2696())), (Integer) c4799.f18052);
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                } catch (InvalidProtocolBufferException unused5) {
                    throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
                }
            default:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.AesSivKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesSivParameters.parseParameters");
                }
                try {
                    C4139 m8437 = C4139.m8437((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8437.m8441() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C5384 m6545 = C3018.m6545();
                    m6545.m10782(m8437.m8440().size());
                    m6545.f20505 = AbstractC3485.m7412((EnumC4150) c4799.f18054);
                    C3018 m10783 = m6545.m10783();
                    ٴʼ r23 = new ٴʼ(12, false);
                    r23.ʽʽ = null;
                    r23.ˈٴ = null;
                    r23.ᴵˊ = m10783;
                    r23.ʽʽ = new ˉˆ(13, C1631.m4412(m8437.m8440().m2696()));
                    r23.ˈٴ = (Integer) c4799.f18052;
                    return r23.ᴵˊ();
                } catch (InvalidProtocolBufferException unused6) {
                    throw new GeneralSecurityException("Parsing AesSivKey failed");
                }
        }
    }

    @Override // p404.InterfaceC4794
    /* renamed from: ﹳٴ */
    public C4790 mo6962(AbstractC3528 abstractC3528) {
        switch (this.f13189) {
            case 0:
                C3284 c3284 = (C3284) abstractC3528;
                AbstractC3378.m7258(c3284);
                C4127 m8513 = C4171.m8513();
                m8513.m8398("type.googleapis.com/google.crypto.tink.AesGcmKey");
                C4112 m8541 = C4179.m8541();
                int i = c3284.f12657;
                m8541.m2486();
                C4179.m8543((C4179) m8541.f2977, i);
                m8513.m8399(((C4179) m8541.m2485()).m2701());
                m8513.m8397(AbstractC3378.m7260(c3284.f12655));
                return C4790.m9554((C4171) m8513.m2485());
            case 4:
                C3269 c3269 = (C3269) abstractC3528;
                C4127 m85132 = C4171.m8513();
                m85132.m8398("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
                C4118 m8418 = C4133.m8418();
                int i2 = c3269.f12602;
                m8418.m2486();
                C4133.m8420((C4133) m8418.f2977, i2);
                m85132.m8399(((C4133) m8418.m2485()).m2701());
                m85132.m8397(AbstractC3380.m7262(c3269.f12601));
                return C4790.m9554((C4171) m85132.m2485());
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                C4127 m85133 = C4171.m8513();
                m85133.m8398("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
                m85133.m8399(C4175.m8527().m2701());
                m85133.m8397(AbstractC3371.m7233(((C3272) abstractC3528).f12610));
                return C4790.m9554((C4171) m85133.m2485());
            case 12:
                C3273 c3273 = (C3273) abstractC3528;
                C4127 m85134 = C4171.m8513();
                m85134.m8398("type.googleapis.com/google.crypto.tink.XAesGcmKey");
                C4143 m8459 = C4152.m8459();
                C4120 m8392 = C4125.m8392();
                int i3 = c3273.f12611;
                m8392.m2486();
                C4125.m8394((C4125) m8392.f2977, i3);
                C4125 c4125 = (C4125) m8392.m2485();
                m8459.m2486();
                C4152.m8461((C4152) m8459.f2977, c4125);
                m85134.m8399(((C4152) m8459.m2485()).m2701());
                m85134.m8397(AbstractC3377.m7257(c3273.f12612));
                return C4790.m9554((C4171) m85134.m2485());
            case 16:
                C4127 m85135 = C4171.m8513();
                m85135.m8398("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
                m85135.m8399(C4110.m8356().m2701());
                m85135.m8397(AbstractC3372.m7235(((C3262) abstractC3528).f12581));
                return C4790.m9554((C4171) m85135.m2485());
            default:
                C3018 c3018 = (C3018) abstractC3528;
                C4127 m85136 = C4171.m8513();
                m85136.m8398("type.googleapis.com/google.crypto.tink.AesSivKey");
                C4158 m8431 = C4138.m8431();
                int i4 = c3018.f11527;
                m8431.m2486();
                C4138.m8433((C4138) m8431.f2977, i4);
                m85136.m8399(((C4138) m8431.m2485()).m2701());
                m85136.m8397(AbstractC3485.m7413(c3018.f11526));
                return C4790.m9554((C4171) m85136.m2485());
        }
    }

    @Override // p404.InterfaceC4812
    /* renamed from: ﾞᴵ */
    public C4799 mo6963(ʽʽ r6) {
        switch (this.f13189) {
            case 2:
                C3266 c3266 = (C3266) r6;
                AbstractC3378.m7258(c3266.f12589);
                C4153 m8386 = C4124.m8386();
                byte[] m4413 = ((C1631) c3266.f12592.ᴵˊ).m4413();
                C0740 m2694 = AbstractC0744.m2694(m4413, 0, m4413.length);
                m8386.m2486();
                C4124.m8389((C4124) m8386.f2977, m2694);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.AesGcmKey", ((C4124) m8386.m2485()).m2701(), EnumC4167.f15584, AbstractC3378.m7260(c3266.f12589.f12655), c3266.f12591);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C3288 c3288 = (C3288) r6;
                C4123 m8504 = C4166.m8504();
                byte[] m44132 = ((C1631) c3288.f12664.ᴵˊ).m4413();
                C0740 m26942 = AbstractC0744.m2694(m44132, 0, m44132.length);
                m8504.m2486();
                C4166.m8507((C4166) m8504.f2977, m26942);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((C4166) m8504.m2485()).m2701(), EnumC4167.f15584, AbstractC3380.m7262(c3288.f12661.f12601), c3288.f12663);
            case 10:
                C3258 c3258 = (C3258) r6;
                C4172 m8470 = C4157.m8470();
                byte[] m44133 = ((C1631) c3258.f12537.ᴵˊ).m4413();
                C0740 m26943 = AbstractC0744.m2694(m44133, 0, m44133.length);
                m8470.m2486();
                C4157.m8473((C4157) m8470.f2977, m26943);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((C4157) m8470.m2485()).m2701(), EnumC4167.f15584, AbstractC3371.m7233(c3258.f12534.f12610), c3258.f12536);
            case 14:
                C3267 c3267 = (C3267) r6;
                C4146 m8377 = C4115.m8377();
                byte[] m44134 = ((C1631) c3267.f12596.ᴵˊ).m4413();
                C0740 m26944 = AbstractC0744.m2694(m44134, 0, m44134.length);
                m8377.m2486();
                C4115.m8375((C4115) m8377.f2977, m26944);
                C4120 m8392 = C4125.m8392();
                C3273 c3273 = c3267.f12593;
                int i = c3273.f12611;
                m8392.m2486();
                C4125.m8394((C4125) m8392.f2977, i);
                C4125 c4125 = (C4125) m8392.m2485();
                m8377.m2486();
                C4115.m8378((C4115) m8377.f2977, c4125);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.XAesGcmKey", ((C4115) m8377.m2485()).m2701(), EnumC4167.f15584, AbstractC3377.m7257(c3273.f12612), c3267.f12595);
            case 18:
                C3278 c3278 = (C3278) r6;
                C4180 m8481 = C4161.m8481();
                byte[] m44135 = ((C1631) c3278.f12638.ᴵˊ).m4413();
                C0740 m26945 = AbstractC0744.m2694(m44135, 0, m44135.length);
                m8481.m2486();
                C4161.m8484((C4161) m8481.f2977, m26945);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((C4161) m8481.m2485()).m2701(), EnumC4167.f15584, AbstractC3372.m7235(c3278.f12635.f12581), c3278.f12637);
            default:
                C3022 c3022 = (C3022) r6;
                C4168 m8436 = C4139.m8436();
                byte[] m44136 = ((C1631) c3022.f11535.ᴵˊ).m4413();
                C0740 m26946 = AbstractC0744.m2694(m44136, 0, m44136.length);
                m8436.m2486();
                C4139.m8439((C4139) m8436.f2977, m26946);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.AesSivKey", ((C4139) m8436.m2485()).m2701(), EnumC4167.f15584, AbstractC3485.m7413(c3022.f11532.f11526), c3022.f11534);
        }
    }
}
