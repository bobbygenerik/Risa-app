package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0706;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0740;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import java.io.ByteArrayInputStream;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4176 extends AbstractC0725 {
    private static final C4176 DEFAULT_INSTANCE;
    public static final int ENCRYPTED_KEYSET_FIELD_NUMBER = 2;
    public static final int KEYSET_INFO_FIELD_NUMBER = 3;
    private static volatile InterfaceC0717 PARSER;
    private int bitField0_;
    private AbstractC0744 encryptedKeyset_ = AbstractC0744.f3063;
    private C4186 keysetInfo_;

    static {
        C4176 c4176 = new C4176();
        DEFAULT_INSTANCE = c4176;
        AbstractC0725.m2558(C4176.class, c4176);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C4129 m8528() {
        return (C4129) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8529(C4176 c4176, C4186 c4186) {
        c4176.getClass();
        c4176.keysetInfo_ = c4186;
        c4176.bitField0_ |= 1;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static C4176 m8530(ByteArrayInputStream byteArrayInputStream, C0713 c0713) {
        AbstractC0725 m2554 = AbstractC0725.m2554(DEFAULT_INSTANCE, new C0706(byteArrayInputStream), c0713);
        AbstractC0725.m2561(m2554);
        return (C4176) m2554;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8531(C4176 c4176, C0740 c0740) {
        c4176.getClass();
        c4176.encryptedKeyset_ = c0740;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003ဉ\u0000", new Object[]{"bitField0_", "encryptedKeyset_", "keysetInfo_"});
            case 3:
                return new C4176();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4176.class) {
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
    public final AbstractC0744 m8532() {
        return this.encryptedKeyset_;
    }
}
