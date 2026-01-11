package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4128 extends AbstractC0725 {
    public static final int AES_CTR_KEY_FORMAT_FIELD_NUMBER = 1;
    private static final C4128 DEFAULT_INSTANCE;
    public static final int HMAC_KEY_FORMAT_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER;
    private C4174 aesCtrKeyFormat_;
    private int bitField0_;
    private C4113 hmacKeyFormat_;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ˆʾ, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4128.class, abstractC0725);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8400(C4128 c4128, C4113 c4113) {
        c4128.getClass();
        c4128.hmacKeyFormat_ = c4113;
        c4128.bitField0_ |= 2;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C4114 m8401() {
        return (C4114) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C4128 m8402(AbstractC0744 abstractC0744, C0713 c0713) {
        return (C4128) AbstractC0725.m2557(DEFAULT_INSTANCE, abstractC0744, c0713);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8403(C4128 c4128, C4174 c4174) {
        c4128.getClass();
        c4128.aesCtrKeyFormat_ = c4174;
        c4128.bitField0_ |= 1;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4113 m8404() {
        C4113 c4113 = this.hmacKeyFormat_;
        return c4113 == null ? C4113.m8370() : c4113;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"bitField0_", "aesCtrKeyFormat_", "hmacKeyFormat_"});
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
                synchronized (C4128.class) {
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

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4174 m8405() {
        C4174 c4174 = this.aesCtrKeyFormat_;
        return c4174 == null ? C4174.m8521() : c4174;
    }
}
