package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0740;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4187 extends AbstractC0725 {
    private static final C4187 DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private int bitField0_;
    private AbstractC0744 keyValue_ = AbstractC0744.f3063;
    private C4116 params_;
    private int version_;

    static {
        C4187 c4187 = new C4187();
        DEFAULT_INSTANCE = c4187;
        AbstractC0725.m2558(C4187.class, c4187);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8571(C4187 c4187, C0740 c0740) {
        c4187.getClass();
        c4187.keyValue_ = c0740;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static C4160 m8572() {
        return (C4160) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static C4187 m8573() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8574(C4187 c4187, C4116 c4116) {
        c4187.getClass();
        c4187.params_ = c4116;
        c4187.bitField0_ |= 1;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC0744 m8575() {
        return this.keyValue_;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"bitField0_", "version_", "params_", "keyValue_"});
            case 3:
                return new C4187();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4187.class) {
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
    public final C4116 m8576() {
        C4116 c4116 = this.params_;
        return c4116 == null ? C4116.m8383() : c4116;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int m8577() {
        return this.version_;
    }
}
