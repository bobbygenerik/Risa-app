package p230;

import androidx.leanback.widget.ˉˆ;
import com.bumptech.glide.ʽ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0740;
import com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException;
import com.parse.ˑ;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import p017.AbstractC0993;
import p035.AbstractC1220;
import p062.C1560;
import p063.AbstractC1594;
import p071.C1631;
import p074.InterfaceC1650;
import p074.InterfaceC1651;
import p095.InterfaceC1881;
import p106.C1937;
import p223.C3056;
import p240.C3227;
import p240.C3231;
import p245.AbstractC3256;
import p245.AbstractC3257;
import p245.AbstractC3268;
import p245.C3253;
import p245.C3258;
import p245.C3259;
import p245.C3264;
import p245.C3266;
import p245.C3267;
import p245.C3270;
import p245.C3275;
import p245.C3276;
import p245.C3277;
import p245.C3278;
import p245.C3280;
import p245.C3281;
import p245.C3284;
import p245.C3288;
import p245.C3289;
import p256.AbstractC3383;
import p256.AbstractC3384;
import p256.C3381;
import p256.C3382;
import p256.C3386;
import p277.AbstractC3528;
import p277.AbstractC3533;
import p277.InterfaceC3536;
import p322.C3955;
import p322.C3966;
import p322.C3973;
import p322.C3977;
import p322.EnumC3961;
import p330.C4108;
import p330.C4109;
import p330.C4113;
import p330.C4114;
import p330.C4116;
import p330.C4127;
import p330.C4128;
import p330.C4135;
import p330.C4136;
import p330.C4140;
import p330.C4142;
import p330.C4144;
import p330.C4147;
import p330.C4148;
import p330.C4151;
import p330.C4155;
import p330.C4159;
import p330.C4160;
import p330.C4163;
import p330.C4169;
import p330.C4171;
import p330.C4173;
import p330.C4174;
import p330.C4177;
import p330.C4178;
import p330.C4182;
import p330.C4184;
import p330.C4185;
import p330.C4187;
import p330.EnumC4150;
import p330.EnumC4167;
import p372.C4523;
import p404.AbstractC4793;
import p404.C4777;
import p404.C4790;
import p404.C4799;
import p404.C4808;
import p404.InterfaceC4781;
import p404.InterfaceC4782;
import p404.InterfaceC4785;
import p404.InterfaceC4794;
import p404.InterfaceC4812;
import p416.InterfaceC4929;
import p429.C5085;
import p429.C5090;
import p429.C5092;
import p429.C5093;
import p429.C5095;
import p430.AbstractC5114;
import ˈˋ.ʾˊ;
import ˏˆ.ﹳٴ;
import ﹳˋ.ʽʽ;

/* renamed from: ˑʿ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3162 implements InterfaceC3149, InterfaceC1881, InterfaceC4929, InterfaceC4782, InterfaceC4794, InterfaceC4781, InterfaceC4812, InterfaceC4785, InterfaceC1651 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12091;

    public /* synthetic */ C3162(int i) {
        this.f12091 = i;
    }

    @Override // p095.InterfaceC1881
    public Object apply(Object obj) {
        Iterator it;
        C3955 c3955;
        C3955 c39552;
        int i;
        C3966 c3966;
        EnumC3961 enumC3961;
        long j;
        int i2;
        long j2;
        int i3;
        boolean z;
        switch (this.f12091) {
            case 1:
                return AbstractC0993.m3260(Integer.valueOf(((C4523) obj).f16918));
            default:
                List list = (List) obj;
                if (list == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList(AbstractC5114.m10060(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    C3227 c3227 = (C3227) it2.next();
                    List list2 = c3227.f12306;
                    EnumC3961 enumC39612 = c3227.f12307;
                    C3977 c3977 = !list2.isEmpty() ? (C3977) list2.get(0) : C3977.f15328;
                    UUID fromString = UUID.fromString(c3227.f12308);
                    HashSet hashSet = new HashSet(c3227.f12295);
                    C3977 c39772 = c3227.f12296;
                    int i4 = c3227.f12305;
                    int i5 = c3227.f12299;
                    C3966 c39662 = c3227.f12303;
                    ArrayList arrayList2 = arrayList;
                    long j3 = c3227.f12298;
                    long j4 = c3227.f12301;
                    if (j4 != 0) {
                        it = it2;
                        c3955 = new C3955(j4, c3227.f12310);
                    } else {
                        it = it2;
                        c3955 = null;
                    }
                    EnumC3961 enumC39613 = EnumC3961.f15274;
                    if (enumC39612 == enumC39613) {
                        String str = C3231.f12319;
                        if (enumC39612 != enumC39613 || i4 <= 0) {
                            i3 = i5;
                            i2 = i4;
                            z = false;
                        } else {
                            i3 = i5;
                            i2 = i4;
                            z = true;
                        }
                        c39552 = c3955;
                        c3966 = c39662;
                        i = i3;
                        enumC3961 = enumC39612;
                        j2 = ʾˊ.ˑﹳ(z, i2, c3227.f12294, c3227.f12297, c3227.f12302, c3227.f12309, j4 != 0, j3, c3227.f12310, j4, c3227.f12304);
                        j = j3;
                    } else {
                        c39552 = c3955;
                        i = i5;
                        c3966 = c39662;
                        enumC3961 = enumC39612;
                        j = j3;
                        i2 = i4;
                        j2 = Long.MAX_VALUE;
                    }
                    arrayList2.add(new C3973(fromString, enumC3961, hashSet, c39772, c3977, i2, i, c3966, j, c39552, j2, c3227.f12300));
                    arrayList = arrayList2;
                    it2 = it;
                }
                return arrayList;
        }
    }

    @Override // p404.InterfaceC4781
    /* renamed from: ʽ, reason: contains not printable characters */
    public AbstractC3528 mo6960(C4790 c4790) {
        switch (this.f12091) {
            case 12:
                C4171 c4171 = (C4171) c4790.f18034;
                if (c4171.m8519().equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    try {
                        return new C3276(C4159.m8478(c4171.m8518(), C0713.m2526()).m8480(), AbstractC3257.m7077(c4171.m8517()));
                    } catch (InvalidProtocolBufferException e) {
                        throw new GeneralSecurityException("Parsing KmsAeadKeyFormat failed: ", e);
                    }
                }
                throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: " + c4171.m8519());
            case 16:
                C4171 c41712 = (C4171) c4790.f18034;
                if (!c41712.m8519().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: " + c41712.m8519());
                }
                try {
                    return AbstractC3268.m7091(C4163.m8488(c41712.m8518(), C0713.m2526()), c41712.m8517());
                } catch (InvalidProtocolBufferException e2) {
                    throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
                }
            case 23:
                C4171 c41713 = (C4171) c4790.f18034;
                if (!c41713.m8519().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: " + c41713.m8519());
                }
                try {
                    C4128 m8402 = C4128.m8402(c41713.m8518(), C0713.m2526());
                    if (m8402.m8404().m8374() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    C4799 m7096 = C3275.m7096();
                    m7096.m9591(m8402.m8405().m8524());
                    m7096.m9598(m8402.m8404().m8372());
                    m7096.m9599(m8402.m8405().m8525().m8385());
                    m7096.m9596(m8402.m8404().m8373().m8559());
                    m7096.f18051 = AbstractC3384.m7270(m8402.m8404().m8373().m8558());
                    m7096.f18054 = AbstractC3384.m7269(c41713.m8517());
                    return m7096.m9597();
                } catch (InvalidProtocolBufferException e3) {
                    throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e3);
                }
            default:
                C4171 c41714 = (C4171) c4790.f18034;
                if (!c41714.m8519().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: " + c41714.m8519());
                }
                try {
                    C4144 m8453 = C4144.m8453(c41714.m8518(), C0713.m2526());
                    ﹳٴ m7100 = C3281.m7100();
                    m7100.ˈʿ(m8453.m8456());
                    m7100.ᵔٴ(m8453.m8455().m8354());
                    m7100.ˊˋ();
                    m7100.ᴵᵔ = AbstractC3383.m7265(c41714.m8517());
                    return m7100.ﾞʻ();
                } catch (InvalidProtocolBufferException e4) {
                    throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e4);
                }
        }
    }

    @Override // p074.InterfaceC1651
    /* renamed from: ˆʾ */
    public void mo2818(InterfaceC1650 interfaceC1650) {
        interfaceC1650.get().getClass();
        throw new ClassCastException();
    }

    @Override // p230.InterfaceC3149
    /* renamed from: ˑﹳ */
    public void mo5681(InterfaceC3165 interfaceC3165, AbstractC3143 abstractC3143, boolean z) {
        interfaceC3165.mo6943();
    }

    @Override // p404.InterfaceC4782
    /* renamed from: ᵔᵢ */
    public Object mo5682(ʽʽ r10) {
        byte[] m4413;
        switch (this.f12091) {
            case 3:
                C4799 c4799 = ((C4777) r10).f18018;
                C4777.m9548(c4799);
                Integer num = (Integer) c4799.f18052;
                InterfaceC3536 interfaceC3536 = (InterfaceC3536) C4808.f18073.m9610(InterfaceC3536.class, (String) c4799.f18050).m9600((AbstractC0744) c4799.f18049);
                EnumC4150 enumC4150 = (EnumC4150) c4799.f18054;
                int ordinal = enumC4150.ordinal();
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            m4413 = AbstractC4793.f18041.m4413();
                        } else if (ordinal != 4) {
                            throw new GeneralSecurityException("unknown output prefix type " + enumC4150);
                        }
                    }
                    m4413 = AbstractC4793.m9577(num.intValue()).m4413();
                } else {
                    m4413 = AbstractC4793.m9576(num.intValue()).m4413();
                }
                return new C3270(interfaceC3536, m4413);
            case 4:
                C3280 c3280 = (C3280) r10;
                byte[] m44132 = ((C1631) c3280.f12645.ᴵˊ).m4413();
                C3275 c3275 = c3280.f12641;
                C5093 c5093 = new C5093(c3275.f12623, m44132);
                C5085 c5085 = new C5085("HMAC" + c3275.f12628, new SecretKeySpec(((C1631) c3280.f12643.ᴵˊ).m4413(), "HMAC"));
                int i = c3275.f12624;
                return new C5095(c5093, new C5090(c5085, i), i, c3280.f12644.m4413());
            case 5:
                C3289 c3289 = (C3289) r10;
                ˑ r0 = C5092.f19188;
                if (!AbstractC1220.m3779(1)) {
                    throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
                }
                C3281 c3281 = c3289.f12665;
                if (c3281.f12646 == 16) {
                    return new C5092(c3281.f12648, ((C1631) c3289.f12668.ᴵˊ).m4413(), c3289.f12666.m4413());
                }
                throw new GeneralSecurityException("AesEaxJce only supports 16 byte tag size, not " + c3281.f12646);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C3266 c3266 = (C3266) r10;
                C3284 c3284 = c3266.f12589;
                int i2 = c3284.f12656;
                int i3 = c3284.f12654;
                if (i2 != 12) {
                    throw new GeneralSecurityException("Expected IV Size 12, got " + c3284.f12656);
                }
                if (i3 == 16) {
                    return new C3270(((C1631) c3266.f12592.ᴵˊ).m4413(), c3266.f12590);
                }
                throw new GeneralSecurityException("Expected tag Size 16, got " + i3);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C3288 c3288 = (C3288) r10;
                ˑ r02 = AbstractC1594.f6212;
                C1560 c1560 = new C1560(2);
                byte[] bArr = C3386.f13223;
                if (C3386.m7272(C1560.m4350())) {
                    return new C3386(((C1631) c3288.f12664.ᴵˊ).m4413(), c3288.f12662.m4413(), c1560);
                }
                throw new IllegalStateException("Cipher does not implement AES GCM SIV.");
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                C3258 c3258 = (C3258) r10;
                return C3382.f13211.get() != null ? new C3382(((C1631) c3258.f12537.ᴵˊ).m4413(), c3258.f12535.m4413()) : new C3270(4, ((C1631) c3258.f12537.ᴵˊ).m4413(), c3258.f12535.m4413());
            case 9:
                C3259 c3259 = (C3259) r10;
                return new C3270(AbstractC3533.m7492(c3259.f12538.f12630).m4894(c3259.f12538.f12630), c3259.f12540.m4413());
            case 10:
                C3264 c3264 = (C3264) r10;
                C3277 c3277 = c3264.f12583;
                String str = c3277.f12633;
                AbstractC3256 abstractC3256 = c3277.f12632;
                C1937 m4894 = AbstractC3533.m7492(str).m4894(str);
                byte[] bArr2 = C3253.f12515;
                try {
                    return new C3270(new C3253(C4171.m8515(ʽ.ʾᵎ(abstractC3256), C0713.m2526()), m4894), c3264.f12585.m4413());
                } catch (InvalidProtocolBufferException e) {
                    throw new GeneralSecurityException(e);
                }
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            default:
                C3278 c3278 = (C3278) r10;
                return ((Cipher) C3382.f13211.get()) != null ? new C3270(2, ((C1631) c3278.f12638.ᴵˊ).m4413(), c3278.f12636.m4413()) : new C3270(5, ((C1631) c3278.f12638.ᴵˊ).m4413(), c3278.f12636.m4413());
            case 19:
                C3267 c3267 = (C3267) r10;
                int i4 = c3267.f12593.f12611;
                if (i4 < 8 || i4 > 12) {
                    throw new GeneralSecurityException("invalid salt size");
                }
                return new C3381(((C1631) c3267.f12596.ᴵˊ).m4413(), c3267.f12594, c3267.f12593.f12611);
        }
    }

    /* JADX WARN: Type inference failed for: r2v36, types: [java.lang.Object, ˑי.ʽ] */
    @Override // p404.InterfaceC4785
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ʽʽ mo6961(C4799 c4799) {
        switch (this.f12091) {
            case 14:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
                }
                try {
                    C4108 m8346 = C4108.m8346((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8346.m8350() == 0) {
                        return C3259.m7082(new C3276(m8346.m8349().m8480(), AbstractC3257.m7077((EnumC4150) c4799.f18054)), (Integer) c4799.f18052);
                    }
                    throw new GeneralSecurityException("KmsAeadKey are only accepted with version 0, got " + m8346);
                } catch (InvalidProtocolBufferException e) {
                    throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e);
                }
            case 18:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
                }
                try {
                    C4155 m8465 = C4155.m8465((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8465.m8469() == 0) {
                        return C3264.m7084(AbstractC3268.m7091(m8465.m8468(), (EnumC4150) c4799.f18054), (Integer) c4799.f18052);
                    }
                    throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got " + m8465);
                } catch (InvalidProtocolBufferException e2) {
                    throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e2);
                }
            case 25:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
                }
                try {
                    C4177 m8534 = C4177.m8534((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8534.m8539() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    if (m8534.m8540().m8577() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
                    }
                    if (m8534.m8538().m8450() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
                    }
                    C4799 m7096 = C3275.m7096();
                    m7096.m9591(m8534.m8540().m8575().size());
                    m7096.m9598(m8534.m8538().m8448().size());
                    m7096.m9599(m8534.m8540().m8576().m8385());
                    m7096.m9596(m8534.m8538().m8449().m8559());
                    m7096.f18051 = AbstractC3384.m7270(m8534.m8538().m8449().m8558());
                    m7096.f18054 = AbstractC3384.m7269((EnumC4150) c4799.f18054);
                    C3275 m9597 = m7096.m9597();
                    ﹳٴ r2 = new ﹳٴ(21, false);
                    r2.ʽʽ = null;
                    r2.ˈٴ = null;
                    r2.ᴵᵔ = null;
                    r2.ᴵˊ = m9597;
                    r2.ʽʽ = new ˉˆ(13, C1631.m4412(m8534.m8540().m8575().m2696()));
                    r2.ˈٴ = new ˉˆ(13, C1631.m4412(m8534.m8538().m8448().m2696()));
                    r2.ᴵᵔ = (Integer) c4799.f18052;
                    return r2.ٴﹶ();
                } catch (InvalidProtocolBufferException unused) {
                    throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
                }
            default:
                if (!((String) c4799.f18050).equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                    throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
                }
                try {
                    C4184 m8561 = C4184.m8561((AbstractC0744) c4799.f18049, C0713.m2526());
                    if (m8561.m8566() != 0) {
                        throw new GeneralSecurityException("Only version 0 keys are accepted");
                    }
                    ﹳٴ m7100 = C3281.m7100();
                    m7100.ˈʿ(m8561.m8567().size());
                    m7100.ᵔٴ(m8561.m8565().m8354());
                    m7100.ˊˋ();
                    m7100.ᴵᵔ = AbstractC3383.m7265((EnumC4150) c4799.f18054);
                    C3281 c3281 = m7100.ﾞʻ();
                    ?? obj = new Object();
                    ((ˑי.ʽ) obj).ᴵˊ = null;
                    ((ˑי.ʽ) obj).ʽʽ = null;
                    ((ˑי.ʽ) obj).ʾˋ = c3281;
                    ((ˑי.ʽ) obj).ᴵˊ = new ˉˆ(13, C1631.m4412(m8561.m8567().m2696()));
                    ((ˑי.ʽ) obj).ʽʽ = (Integer) c4799.f18052;
                    return obj.ﹳᐧ();
                } catch (InvalidProtocolBufferException unused2) {
                    throw new GeneralSecurityException("Parsing AesEaxcKey failed");
                }
        }
    }

    @Override // p404.InterfaceC4794
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C4790 mo6962(AbstractC3528 abstractC3528) {
        switch (this.f12091) {
            case 11:
                C3276 c3276 = (C3276) abstractC3528;
                C4127 m8513 = C4171.m8513();
                m8513.m8398("type.googleapis.com/google.crypto.tink.KmsAeadKey");
                C4147 m8476 = C4159.m8476();
                String str = c3276.f12630;
                m8476.m2486();
                C4159.m8479((C4159) m8476.f2977, str);
                m8513.m8399(((C4159) m8476.m2485()).m2701());
                m8513.m8397(AbstractC3257.m7078(c3276.f12629));
                return C4790.m9554((C4171) m8513.m2485());
            case 15:
                C3277 c3277 = (C3277) abstractC3528;
                C4127 m85132 = C4171.m8513();
                m85132.m8398("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
                m85132.m8399(AbstractC3268.m7090(c3277).m2701());
                m85132.m8397(AbstractC3268.m7089(c3277.f12634));
                return C4790.m9554((C4171) m85132.m2485());
            case 22:
                C3275 c3275 = (C3275) abstractC3528;
                C4127 m85133 = C4171.m8513();
                m85133.m8398("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
                C4114 m8401 = C4128.m8401();
                C4135 m8522 = C4174.m8522();
                C4136 m8382 = C4116.m8382();
                int i = c3275.f12623;
                m8382.m2486();
                C4116.m8384((C4116) m8382.f2977, i);
                C4116 c4116 = (C4116) m8382.m2485();
                m8522.m2486();
                C4174.m8523((C4174) m8522.f2977, c4116);
                int i2 = c3275.f12627;
                m8522.m2486();
                C4174.m8520((C4174) m8522.f2977, i2);
                C4174 c4174 = (C4174) m8522.m2485();
                m8401.m2486();
                C4128.m8403((C4128) m8401.f2977, c4174);
                C4140 m8368 = C4113.m8368();
                C4182 m7271 = AbstractC3384.m7271(c3275);
                m8368.m2486();
                C4113.m8371((C4113) m8368.f2977, m7271);
                int i3 = c3275.f12626;
                m8368.m2486();
                C4113.m8367((C4113) m8368.f2977, i3);
                C4113 c4113 = (C4113) m8368.m2485();
                m8401.m2486();
                C4128.m8400((C4128) m8401.f2977, c4113);
                m85133.m8399(((C4128) m8401.m2485()).m2701());
                m85133.m8397(AbstractC3384.m7268(c3275.f12625));
                return C4790.m9554((C4171) m85133.m2485());
            default:
                C3281 c3281 = (C3281) abstractC3528;
                C4127 m85134 = C4171.m8513();
                m85134.m8398("type.googleapis.com/google.crypto.tink.AesEaxKey");
                C4151 m8452 = C4144.m8452();
                C4109 m7267 = AbstractC3383.m7267(c3281);
                m8452.m2486();
                C4144.m8454((C4144) m8452.f2977, m7267);
                int i4 = c3281.f12649;
                m8452.m2486();
                C4144.m8451((C4144) m8452.f2977, i4);
                m85134.m8399(((C4144) m8452.m2485()).m2701());
                m85134.m8397(AbstractC3383.m7266(c3281.f12647));
                return C4790.m9554((C4171) m85134.m2485());
        }
    }

    @Override // p404.InterfaceC4812
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C4799 mo6963(ʽʽ r7) {
        switch (this.f12091) {
            case 13:
                C3259 c3259 = (C3259) r7;
                C4185 m8345 = C4108.m8345();
                C4147 m8476 = C4159.m8476();
                String str = c3259.f12538.f12630;
                m8476.m2486();
                C4159.m8479((C4159) m8476.f2977, str);
                C4159 c4159 = (C4159) m8476.m2485();
                m8345.m2486();
                C4108.m8348((C4108) m8345.f2977, c4159);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.KmsAeadKey", ((C4108) m8345.m2485()).m2701(), EnumC4167.f15587, AbstractC3257.m7078(c3259.f12538.f12629), c3259.f12539);
            case 17:
                C3264 c3264 = (C3264) r7;
                C4169 m8464 = C4155.m8464();
                C4163 m7090 = AbstractC3268.m7090(c3264.f12583);
                m8464.m2486();
                C4155.m8467((C4155) m8464.f2977, m7090);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((C4155) m8464.m2485()).m2701(), EnumC4167.f15587, AbstractC3268.m7089(c3264.f12583.f12634), c3264.f12584);
            case 24:
                C3280 c3280 = (C3280) r7;
                C4173 m8536 = C4177.m8536();
                C4160 m8572 = C4187.m8572();
                C4136 m8382 = C4116.m8382();
                int i = c3280.f12641.f12623;
                m8382.m2486();
                C4116.m8384((C4116) m8382.f2977, i);
                C4116 c4116 = (C4116) m8382.m2485();
                m8572.m2486();
                C4187.m8574((C4187) m8572.f2977, c4116);
                byte[] m4413 = ((C1631) c3280.f12645.ᴵˊ).m4413();
                C0740 m2694 = AbstractC0744.m2694(m4413, 0, m4413.length);
                m8572.m2486();
                C4187.m8571((C4187) m8572.f2977, m2694);
                C4187 c4187 = (C4187) m8572.m2485();
                m8536.m2486();
                C4177.m8537((C4177) m8536.f2977, c4187);
                C4148 m8444 = C4142.m8444();
                C3275 c3275 = c3280.f12641;
                C4182 m7271 = AbstractC3384.m7271(c3275);
                m8444.m2486();
                C4142.m8447((C4142) m8444.f2977, m7271);
                byte[] m44132 = ((C1631) c3280.f12643.ᴵˊ).m4413();
                C0740 m26942 = AbstractC0744.m2694(m44132, 0, m44132.length);
                m8444.m2486();
                C4142.m8442((C4142) m8444.f2977, m26942);
                C4142 c4142 = (C4142) m8444.m2485();
                m8536.m2486();
                C4177.m8533((C4177) m8536.f2977, c4142);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((C4177) m8536.m2485()).m2701(), EnumC4167.f15584, AbstractC3384.m7268(c3275.f12625), c3280.f12642);
            default:
                C3289 c3289 = (C3289) r7;
                C4178 m8563 = C4184.m8563();
                C4109 m7267 = AbstractC3383.m7267(c3289.f12665);
                m8563.m2486();
                C4184.m8564((C4184) m8563.f2977, m7267);
                byte[] m44133 = ((C1631) c3289.f12668.ᴵˊ).m4413();
                C0740 m26943 = AbstractC0744.m2694(m44133, 0, m44133.length);
                m8563.m2486();
                C4184.m8560((C4184) m8563.f2977, m26943);
                return C4799.m9586("type.googleapis.com/google.crypto.tink.AesEaxKey", ((C4184) m8563.m2485()).m2701(), EnumC4167.f15584, AbstractC3383.m7266(c3289.f12665.f12647), c3289.f12667);
        }
    }
}
