package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4130 extends AbstractC0725 {
    private static final C4130 DEFAULT_INSTANCE;
    public static final int KEY_SIZE_FIELD_NUMBER = 1;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER;
    private int bitField0_;
    private int keySize_;
    private C4188 params_;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ˈ, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4130.class, abstractC0725);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8406(C4130 c4130, C4188 c4188) {
        c4130.getClass();
        c4130.params_ = c4188;
        c4130.bitField0_ |= 1;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C4117 m8407() {
        return (C4117) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C4130 m8408(AbstractC0744 abstractC0744, C0713 c0713) {
        return (C4130) AbstractC0725.m2557(DEFAULT_INSTANCE, abstractC0744, c0713);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8409(C4130 c4130, int i) {
        c4130.keySize_ = i;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4188 m8410() {
        C4188 c4188 = this.params_;
        return c4188 == null ? C4188.m8579() : c4188;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"bitField0_", "keySize_", "params_"});
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
                synchronized (C4130.class) {
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
    public final int m8411() {
        return this.keySize_;
    }
}
