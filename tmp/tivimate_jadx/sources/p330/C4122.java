package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.C0726;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0746;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4122 extends AbstractC0725 {
    public static final int CONFIG_NAME_FIELD_NUMBER = 1;
    private static final C4122 DEFAULT_INSTANCE;
    public static final int ENTRY_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER;
    private String configName_ = "";
    private InterfaceC0746 entry_ = C0726.f3011;

    static {
        C4122 c4122 = new C4122();
        DEFAULT_INSTANCE = c4122;
        AbstractC0725.m2558(C4122.class, c4122);
    }

    /* JADX WARN: Type inference failed for: r5v13, types: [com.google.crypto.tink.shaded.protobuf.ˊˋ, java.lang.Object] */
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"configName_", "entry_", C4164.class});
            case 3:
                return new C4122();
            case 4:
                return new C4170(DEFAULT_INSTANCE, 2);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4122.class) {
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
