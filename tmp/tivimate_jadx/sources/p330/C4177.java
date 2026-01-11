package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4177 extends AbstractC0725 {
    public static final int AES_CTR_KEY_FIELD_NUMBER = 2;
    private static final C4177 DEFAULT_INSTANCE;
    public static final int HMAC_KEY_FIELD_NUMBER = 3;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private C4187 aesCtrKey_;
    private int bitField0_;
    private C4142 hmacKey_;
    private int version_;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ᵔᵢ, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4177.class, abstractC0725);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8533(C4177 c4177, C4142 c4142) {
        c4177.getClass();
        c4177.hmacKey_ = c4142;
        c4177.bitField0_ |= 2;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static C4177 m8534(AbstractC0744 abstractC0744, C0713 c0713) {
        return (C4177) AbstractC0725.m2557(DEFAULT_INSTANCE, abstractC0744, c0713);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static InterfaceC0717 m8535() {
        return DEFAULT_INSTANCE.m2568();
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C4173 m8536() {
        return (C4173) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8537(C4177 c4177, C4187 c4187) {
        c4177.getClass();
        c4177.aesCtrKey_ = c4187;
        c4177.bitField0_ |= 1;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4142 m8538() {
        C4142 c4142 = this.hmacKey_;
        return c4142 == null ? C4142.m8446() : c4142;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"bitField0_", "version_", "aesCtrKey_", "hmacKey_"});
            case 3:
                return new AbstractC0725();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4177.class) {
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
    public final int m8539() {
        return this.version_;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4187 m8540() {
        C4187 c4187 = this.aesCtrKey_;
        return c4187 == null ? C4187.m8573() : c4187;
    }
}
