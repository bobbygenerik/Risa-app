package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0747;
import com.google.crypto.tink.shaded.protobuf.C0726;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0746;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4186 extends AbstractC0725 {
    private static final C4186 DEFAULT_INSTANCE;
    public static final int KEY_INFO_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private InterfaceC0746 keyInfo_ = C0726.f3011;
    private int primaryKeyId_;

    static {
        C4186 c4186 = new C4186();
        DEFAULT_INSTANCE = c4186;
        AbstractC0725.m2558(C4186.class, c4186);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8568(C4186 c4186, C4132 c4132) {
        c4186.getClass();
        InterfaceC0746 interfaceC0746 = c4186.keyInfo_;
        if (!((AbstractC0747) interfaceC0746).f3067) {
            int size = interfaceC0746.size();
            c4186.keyInfo_ = interfaceC0746.mo2576(size == 0 ? 10 : size * 2);
        }
        c4186.keyInfo_.add(c4132);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static C4141 m8569() {
        return (C4141) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8570(C4186 c4186, int i) {
        c4186.primaryKeyId_ = i;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "keyInfo_", C4132.class});
            case 3:
                return new C4186();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4186.class) {
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
