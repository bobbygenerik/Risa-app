package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4165 extends AbstractC0725 {
    private static final C4165 DEFAULT_INSTANCE;
    public static final int KEY_DATA_FIELD_NUMBER = 1;
    public static final int KEY_ID_FIELD_NUMBER = 3;
    public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int STATUS_FIELD_NUMBER = 2;
    private int bitField0_;
    private C4137 keyData_;
    private int keyId_;
    private int outputPrefixType_;
    private int status_;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵﹳ.ᴵʼ, com.google.crypto.tink.shaded.protobuf.ـˆ] */
    static {
        ?? abstractC0725 = new AbstractC0725();
        DEFAULT_INSTANCE = abstractC0725;
        AbstractC0725.m2558(C4165.class, abstractC0725);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static void m8494(C4165 c4165, int i) {
        c4165.keyId_ = i;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8495(C4165 c4165, EnumC4150 enumC4150) {
        c4165.getClass();
        c4165.outputPrefixType_ = enumC4150.m8458();
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static void m8496(C4165 c4165, EnumC4126 enumC4126) {
        c4165.getClass();
        c4165.status_ = enumC4126.m8396();
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static C4145 m8497() {
        return (C4145) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8498(C4165 c4165, C4137 c4137) {
        c4165.getClass();
        c4165.keyData_ = c4137;
        c4165.bitField0_ |= 1;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"bitField0_", "keyData_", "status_", "keyId_", "outputPrefixType_"});
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
                synchronized (C4165.class) {
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
    public final C4137 m8499() {
        C4137 c4137 = this.keyData_;
        return c4137 == null ? C4137.m8423() : c4137;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean m8500() {
        return (this.bitField0_ & 1) != 0;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final EnumC4150 m8501() {
        EnumC4150 m8457 = EnumC4150.m8457(this.outputPrefixType_);
        return m8457 == null ? EnumC4150.f15577 : m8457;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final EnumC4126 m8502() {
        int i = this.status_;
        EnumC4126 enumC4126 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : EnumC4126.f15564 : EnumC4126.f15560 : EnumC4126.f15559 : EnumC4126.f15563;
        return enumC4126 == null ? EnumC4126.f15561 : enumC4126;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int m8503() {
        return this.keyId_;
    }
}
