package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4175 extends AbstractC0725 {
    private static final C4175 DEFAULT_INSTANCE;
    private static volatile InterfaceC0717 PARSER;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ᵔי, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4175.class, abstractC0725);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8526(AbstractC0744 abstractC0744, C0713 c0713) {
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static C4175 m8527() {
        return DEFAULT_INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r4v12, types: [com.google.crypto.tink.shaded.protobuf.ˊˋ, java.lang.Object] */
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0000", null);
            case 3:
                return new AbstractC0725();
            case 4:
                return new C4170(DEFAULT_INSTANCE, 0);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4175.class) {
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
}
