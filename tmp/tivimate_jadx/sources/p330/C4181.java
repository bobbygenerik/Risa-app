package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0740;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4181 extends AbstractC0725 {
    private static final C4181 DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 3;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private int bitField0_;
    private AbstractC0744 keyValue_ = AbstractC0744.f3063;
    private C4188 params_;
    private int version_;

    static {
        C4181 c4181 = new C4181();
        DEFAULT_INSTANCE = c4181;
        AbstractC0725.m2558(C4181.class, c4181);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8546(C4181 c4181, C4188 c4188) {
        c4181.getClass();
        c4181.params_ = c4188;
        c4181.bitField0_ |= 1;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static C4181 m8547(AbstractC0744 abstractC0744, C0713 c0713) {
        return (C4181) AbstractC0725.m2557(DEFAULT_INSTANCE, abstractC0744, c0713);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static InterfaceC0717 m8548() {
        return DEFAULT_INSTANCE.m2568();
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C4183 m8549() {
        return (C4183) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8550(C4181 c4181, C0740 c0740) {
        c4181.getClass();
        c4181.keyValue_ = c0740;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4188 m8551() {
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"bitField0_", "version_", "keyValue_", "params_"});
            case 3:
                return new C4181();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4181.class) {
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
    public final int m8552() {
        return this.version_;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AbstractC0744 m8553() {
        return this.keyValue_;
    }
}
