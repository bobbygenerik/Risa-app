package p218;

import androidx.leanback.widget.ˉˆ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.parse.ٴʼ;
import java.security.GeneralSecurityException;
import p223.C3056;
import p245.C3258;
import p245.C3259;
import p245.C3262;
import p245.C3264;
import p245.C3267;
import p245.C3269;
import p245.C3272;
import p245.C3273;
import p245.C3275;
import p245.C3276;
import p245.C3277;
import p245.C3278;
import p245.C3281;
import p245.C3284;
import p277.AbstractC3528;
import p330.C4127;
import p330.C4134;
import p330.C4137;
import p330.C4171;
import p330.EnumC4150;
import p330.EnumC4167;
import p404.AbstractC4804;
import p404.C4777;
import p404.C4784;
import p404.C4790;
import p404.C4799;
import p404.C4802;
import p404.C4808;
import p404.C4810;
import p404.C4811;
import p405.C4817;
import p405.C4829;
import ˏˆ.ﹳٴ;
import ˑי.ʽ;
import ﹳˋ.ʽʽ;

/* renamed from: ˏˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3021 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f11531;

    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, ˑי.ʽ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽʽ m6549(AbstractC3528 abstractC3528, Integer num) {
        switch (this.f11531) {
            case 0:
                C3018 c3018 = (C3018) abstractC3528;
                AbstractC3015.m6544(c3018);
                ٴʼ r0 = new ٴʼ(12, false);
                r0.ʽʽ = null;
                r0.ᴵˊ = c3018;
                r0.ˈٴ = num;
                r0.ʽʽ = ˉˆ.ʾᵎ(c3018.f11527);
                return r0.ᴵˊ();
            case 1:
                C3275 c3275 = (C3275) abstractC3528;
                int i = c3275.f12627;
                if (i != 16 && i != 32) {
                    throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
                }
                ﹳٴ r1 = new ﹳٴ(21, false);
                r1.ʽʽ = null;
                r1.ˈٴ = null;
                r1.ᴵˊ = c3275;
                r1.ᴵᵔ = num;
                r1.ʽʽ = ˉˆ.ʾᵎ(i);
                r1.ˈٴ = ˉˆ.ʾᵎ(c3275.f12626);
                return r1.ٴﹶ();
            case 2:
                C3281 c3281 = (C3281) abstractC3528;
                int i2 = c3281.f12649;
                if (i2 == 24) {
                    throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
                }
                ?? obj = new Object();
                ((ʽ) obj).ᴵˊ = null;
                ((ʽ) obj).ʾˋ = c3281;
                ((ʽ) obj).ʽʽ = num;
                ((ʽ) obj).ᴵˊ = ˉˆ.ʾᵎ(i2);
                return obj.ﹳᐧ();
            case 3:
                C3284 c3284 = (C3284) abstractC3528;
                int i3 = c3284.f12657;
                if (i3 == 24) {
                    throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
                }
                ᵢ.ﹳٴ r12 = new ᵢ.ﹳٴ(12, false);
                r12.ʽʽ = null;
                r12.ᴵˊ = c3284;
                r12.ˈٴ = num;
                r12.ʽʽ = ˉˆ.ʾᵎ(i3);
                return r12.ᵔᵢ();
            case 4:
                C3269 c3269 = (C3269) abstractC3528;
                ٴʼ r02 = new ٴʼ(13, false);
                r02.ʽʽ = null;
                r02.ᴵˊ = c3269;
                r02.ˈٴ = num;
                r02.ʽʽ = ˉˆ.ʾᵎ(c3269.f12602);
                return r02.ʽʽ();
            case 5:
                return C3258.m7079(((C3272) abstractC3528).f12610, ˉˆ.ʾᵎ(32), num);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return C3259.m7082((C3276) abstractC3528, num);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return C3264.m7084((C3277) abstractC3528, num);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return C3267.m7087((C3273) abstractC3528, ˉˆ.ʾᵎ(32), num);
            case 9:
                return C3278.m7097(((C3262) abstractC3528).f12581, ˉˆ.ʾᵎ(32), num);
            case 10:
                C4171 c4171 = (C4171) ((C4784) abstractC3528).f18028.f18034;
                C4808 c4808 = C4808.f18073;
                C4802 m9609 = c4808.m9609(c4171.m8519());
                if (!((Boolean) c4808.f18074.get(c4171.m8519())).booleanValue()) {
                    throw new GeneralSecurityException("Creating new keys is not allowed.");
                }
                AbstractC0744 m8518 = c4171.m8518();
                m9609.getClass();
                C4127 m8513 = C4171.m8513();
                m8513.m8398(m9609.f18063);
                m8513.m8399(m8518);
                m8513.m8397(EnumC4150.f15581);
                C4171 c41712 = (C4171) m8513.m2485();
                C4790 c4790 = new C4790(c41712, 0, AbstractC4804.m9603(c41712.m8519()));
                C4810 c4810 = C4810.f18077;
                C4799 c4799 = (C4799) c4810.m9614(C4811.f18079.m9619(c4810.m9616(c4790), null));
                C4134 m8425 = C4137.m8425();
                String str = (String) c4799.f18050;
                m8425.m2486();
                C4137.m8427((C4137) m8425.f2977, str);
                AbstractC0744 abstractC0744 = (AbstractC0744) c4799.f18049;
                m8425.m2486();
                C4137.m8424((C4137) m8425.f2977, abstractC0744);
                EnumC4167 enumC4167 = (EnumC4167) c4799.f18051;
                m8425.m2486();
                C4137.m8426((C4137) m8425.f2977, enumC4167);
                C4137 c4137 = (C4137) m8425.m2485();
                return new C4777(C4799.m9586(c4137.m8430(), c4137.m8429(), c4137.m8428(), c4171.m8517(), num));
            case 11:
                C4817 c4817 = (C4817) abstractC3528;
                int i4 = c4817.f18100;
                if (i4 != 32) {
                    throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
                }
                ٴʼ r13 = new ٴʼ(21, false);
                r13.ʽʽ = null;
                r13.ˈٴ = null;
                r13.ᴵˊ = c4817;
                r13.ʽʽ = ˉˆ.ʾᵎ(i4);
                r13.ˈٴ = num;
                return r13.ˈٴ();
            default:
                C4829 c4829 = (C4829) abstractC3528;
                ᵢ.ﹳٴ r03 = new ᵢ.ﹳٴ(21, false);
                r03.ʽʽ = null;
                r03.ˈٴ = null;
                r03.ᴵˊ = c4829;
                r03.ʽʽ = ˉˆ.ʾᵎ(c4829.f18128);
                r03.ˈٴ = num;
                return r03.ʼˎ();
        }
    }
}
