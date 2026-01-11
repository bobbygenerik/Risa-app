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

/* renamed from: ᴵﹳ.ᐧˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4161 extends AbstractC0725 {
    private static final C4161 DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private AbstractC0744 keyValue_ = AbstractC0744.f3063;
    private int version_;

    static {
        C4161 c4161 = new C4161();
        DEFAULT_INSTANCE = c4161;
        AbstractC0725.m2558(C4161.class, c4161);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C4180 m8481() {
        return (C4180) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C4161 m8482(AbstractC0744 abstractC0744, C0713 c0713) {
        return (C4161) AbstractC0725.m2557(DEFAULT_INSTANCE, abstractC0744, c0713);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static InterfaceC0717 m8483() {
        return DEFAULT_INSTANCE.m2568();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8484(C4161 c4161, C0740 c0740) {
        c4161.getClass();
        c4161.keyValue_ = c0740;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0744 m8485() {
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"version_", "keyValue_"});
            case 3:
                return new C4161();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4161.class) {
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
    public final int m8486() {
        return this.version_;
    }
}
