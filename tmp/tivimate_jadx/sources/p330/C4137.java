package p330;

import com.google.crypto.tink.shaded.protobuf.AbstractC0701;
import com.google.crypto.tink.shaded.protobuf.AbstractC0725;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0748;
import com.google.crypto.tink.shaded.protobuf.InterfaceC0717;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ᴵﹳ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4137 extends AbstractC0725 {
    private static final C4137 DEFAULT_INSTANCE;
    public static final int KEY_MATERIAL_TYPE_FIELD_NUMBER = 3;
    private static volatile InterfaceC0717 PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private int keyMaterialType_;
    private String typeUrl_ = "";
    private AbstractC0744 value_ = AbstractC0744.f3063;

    static {
        C4137 c4137 = new C4137();
        DEFAULT_INSTANCE = c4137;
        AbstractC0725.m2558(C4137.class, c4137);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C4137 m8423() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static void m8424(C4137 c4137, AbstractC0744 abstractC0744) {
        c4137.getClass();
        abstractC0744.getClass();
        c4137.value_ = abstractC0744;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C4134 m8425() {
        return (C4134) DEFAULT_INSTANCE.m2563();
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static void m8426(C4137 c4137, EnumC4167 enumC4167) {
        c4137.getClass();
        if (enumC4167 == EnumC4167.f15588) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        c4137.keyMaterialType_ = enumC4167.f15591;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m8427(C4137 c4137, String str) {
        c4137.getClass();
        str.getClass();
        c4137.typeUrl_ = str;
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
                return new C0748(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"typeUrl_", "value_", "keyMaterialType_"});
            case 3:
                return new C4137();
            case 4:
                return new AbstractC0701(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                InterfaceC0717 interfaceC07172 = PARSER;
                if (interfaceC07172 != null) {
                    return interfaceC07172;
                }
                synchronized (C4137.class) {
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
    public final EnumC4167 m8428() {
        int i = this.keyMaterialType_;
        EnumC4167 enumC4167 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : EnumC4167.f15587 : EnumC4167.f15590 : EnumC4167.f15585 : EnumC4167.f15584 : EnumC4167.f15589;
        return enumC4167 == null ? EnumC4167.f15588 : enumC4167;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AbstractC0744 m8429() {
        return this.value_;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String m8430() {
        return this.typeUrl_;
    }
}
