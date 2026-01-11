package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4171 extends AbstractC0725 {
    private static final C4171 DEFAULT_INSTANCE;
    public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 3;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int outputPrefixType_;
    private String typeUrl_ = "";
    private AbstractC0744 value_ = AbstractC0744.f3063;

    static {
        C4171 c4171 = new C4171();
        DEFAULT_INSTANCE = c4171;
        AbstractC0725.m2558(C4171.class, c4171);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C4171 m8510() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8511(C4171 c4171, AbstractC0744 abstractC0744) {
        c4171.getClass();
        abstractC0744.getClass();
        c4171.value_ = abstractC0744;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static C4127 m8512(C4171 c4171) {
        AbstractC0701 m2563 = DEFAULT_INSTANCE.m2563();
        m2563.m2484(c4171);
        return (C4127) m2563;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C4127 m8513() {
        return (C4127) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static void m8514(C4171 c4171, EnumC4150 enumC4150) {
        c4171.getClass();
        c4171.outputPrefixType_ = enumC4150.m8458();
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static C4171 m8515(byte[] bArr, C0713 c0713) {
        return (C4171) AbstractC0725.m2555(DEFAULT_INSTANCE, bArr, c0713);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8516(C4171 c4171, String str) {
        c4171.getClass();
        str.getClass();
        c4171.typeUrl_ = str;
    }

    /* JADX WARN: Type inference failed for: r4v13, types: [com.google.crypto.tink.shaded.protobuf.ˊˋ, java.lang.Object] */
    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0725
    /* renamed from: ˆʾ */
    public final Object mo2566(int i) {
        InterfaceC0717 interfaceC0717;
        switch (AbstractC0844.m3018(i)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "outputPrefixType_"});
            case 3:
                return new C4171();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4171.class) {
                    try {
                        InterfaceC0717 interfaceC07173 = PARSER;
                        interfaceC0717 = interfaceC07173;
                        if (interfaceC07173 == null) {
                            ?? obj = new Object();
                            PARSER = obj;
                            interfaceC0717 = obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return interfaceC0717;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final EnumC4150 m8517() {
        EnumC4150 m8457 = EnumC4150.m8457(this.outputPrefixType_);
        return m8457 == null ? EnumC4150.f15577 : m8457;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AbstractC0744 m8518() {
        return this.value_;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String m8519() {
        return this.typeUrl_;
    }
}
