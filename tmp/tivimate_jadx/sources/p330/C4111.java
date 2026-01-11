package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0747;
import com.google.crypto.tink.shaded.protobuf.C0706;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.google.crypto.tink.shaded.protobuf.C0726;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0746;
import java.io.ByteArrayInputStream;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4111 extends AbstractC0725 {
    private static final C4111 DEFAULT_INSTANCE;
    public static final int KEY_FIELD_NUMBER = 2;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private InterfaceC0746 key_ = C0726.f3011;
    private int primaryKeyId_;

    static {
        C4111 c4111 = new C4111();
        DEFAULT_INSTANCE = c4111;
        AbstractC0725.m2558(C4111.class, c4111);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8358(C4111 c4111, C4165 c4165) {
        c4111.getClass();
        InterfaceC0746 interfaceC0746 = c4111.key_;
        if (!((AbstractC0747) interfaceC0746).f3067) {
            int size = interfaceC0746.size();
            c4111.key_ = interfaceC0746.mo2576(size == 0 ? 10 : size * 2);
        }
        c4111.key_.add(c4165);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static C4111 m8359(byte[] bArr, C0713 c0713) {
        return (C4111) AbstractC0725.m2555(DEFAULT_INSTANCE, bArr, c0713);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static C4162 m8360() {
        return (C4162) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C4111 m8361(ByteArrayInputStream byteArrayInputStream, C0713 c0713) {
        AbstractC0725 m2554 = AbstractC0725.m2554(DEFAULT_INSTANCE, new C0706(byteArrayInputStream), c0713);
        AbstractC0725.m2561(m2554);
        return (C4111) m2554;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8362(C4111 c4111, int i) {
        c4111.primaryKeyId_ = i;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m8363() {
        return this.key_.size();
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "key_", C4165.class});
            case 3:
                return new C4111();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4111.class) {
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
    public final InterfaceC0746 m8364() {
        return this.key_;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4165 m8365(int i) {
        return (C4165) this.key_.get(i);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int m8366() {
        return this.primaryKeyId_;
    }
}
