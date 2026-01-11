package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ـᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4155 extends AbstractC0725 {
    private static final C4155 DEFAULT_INSTANCE;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private int bitField0_;
    private C4163 params_;
    private int version_;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ـᵎ, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4155.class, abstractC0725);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C4169 m8464() {
        return (C4169) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C4155 m8465(AbstractC0744 abstractC0744, C0713 c0713) {
        return (C4155) AbstractC0725.m2557(DEFAULT_INSTANCE, abstractC0744, c0713);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static InterfaceC0717 m8466() {
        return DEFAULT_INSTANCE.m2568();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8467(C4155 c4155, C4163 c4163) {
        c4155.getClass();
        c4155.params_ = c4163;
        c4155.bitField0_ |= 1;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4163 m8468() {
        C4163 c4163 = this.params_;
        return c4163 == null ? C4163.m8489() : c4163;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"bitField0_", "version_", "params_"});
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
                synchronized (C4155.class) {
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
    public final int m8469() {
        return this.version_;
    }
}
