package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4174 extends AbstractC0725 {
    private static final C4174 DEFAULT_INSTANCE;
    public static final int KEY_SIZE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 1;
    private static volatile InterfaceC0717 PARSER;
    private int bitField0_;
    private int keySize_;
    private C4116 params_;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ᵔʾ, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4174.class, abstractC0725);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8520(C4174 c4174, int i) {
        c4174.keySize_ = i;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static C4174 m8521() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C4135 m8522() {
        return (C4135) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8523(C4174 c4174, C4116 c4116) {
        c4174.getClass();
        c4174.params_ = c4116;
        c4174.bitField0_ |= 1;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m8524() {
        return this.keySize_;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"bitField0_", "params_", "keySize_"});
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
                synchronized (C4174.class) {
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
    public final C4116 m8525() {
        C4116 c4116 = this.params_;
        return c4116 == null ? C4116.m8383() : c4116;
    }
}
