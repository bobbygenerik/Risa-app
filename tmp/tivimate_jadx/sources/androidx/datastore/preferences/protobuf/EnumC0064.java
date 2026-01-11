package androidx.datastore.preferences.protobuf;

import p010.AbstractC0844;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: androidx.datastore.preferences.protobuf.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0064 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC0064 f508;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final EnumC0064[] f509;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC0064 f510;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0064[] f511;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f512;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0064 EF0;

    static {
        EnumC0005 enumC0005 = EnumC0005.f369;
        EnumC0064 enumC0064 = new EnumC0064("DOUBLE", 0, 0, 1, enumC0005);
        EnumC0005 enumC00052 = EnumC0005.f363;
        EnumC0064 enumC00642 = new EnumC0064("FLOAT", 1, 1, 1, enumC00052);
        EnumC0005 enumC00053 = EnumC0005.f361;
        EnumC0064 enumC00643 = new EnumC0064("INT64", 2, 2, 1, enumC00053);
        EnumC0064 enumC00644 = new EnumC0064("UINT64", 3, 3, 1, enumC00053);
        EnumC0005 enumC00054 = EnumC0005.f368;
        EnumC0064 enumC00645 = new EnumC0064("INT32", 4, 4, 1, enumC00054);
        EnumC0064 enumC00646 = new EnumC0064("FIXED64", 5, 5, 1, enumC00053);
        EnumC0064 enumC00647 = new EnumC0064("FIXED32", 6, 6, 1, enumC00054);
        EnumC0005 enumC00055 = EnumC0005.f365;
        EnumC0064 enumC00648 = new EnumC0064("BOOL", 7, 7, 1, enumC00055);
        EnumC0005 enumC00056 = EnumC0005.f367;
        EnumC0064 enumC00649 = new EnumC0064("STRING", 8, 8, 1, enumC00056);
        EnumC0005 enumC00057 = EnumC0005.f366;
        EnumC0064 enumC006410 = new EnumC0064("MESSAGE", 9, 9, 1, enumC00057);
        EnumC0005 enumC00058 = EnumC0005.f364;
        EnumC0064 enumC006411 = new EnumC0064("BYTES", 10, 10, 1, enumC00058);
        EnumC0064 enumC006412 = new EnumC0064("UINT32", 11, 11, 1, enumC00054);
        EnumC0005 enumC00059 = EnumC0005.f371;
        EnumC0064 enumC006413 = new EnumC0064("ENUM", 12, 12, 1, enumC00059);
        EnumC0064 enumC006414 = new EnumC0064("SFIXED32", 13, 13, 1, enumC00054);
        EnumC0064 enumC006415 = new EnumC0064("SFIXED64", 14, 14, 1, enumC00053);
        EnumC0064 enumC006416 = new EnumC0064("SINT32", 15, 15, 1, enumC00054);
        EnumC0064 enumC006417 = new EnumC0064("SINT64", 16, 16, 1, enumC00053);
        EnumC0064 enumC006418 = new EnumC0064("GROUP", 17, 17, 1, enumC00057);
        EnumC0064 enumC006419 = new EnumC0064("DOUBLE_LIST", 18, 18, 2, enumC0005);
        EnumC0064 enumC006420 = new EnumC0064("FLOAT_LIST", 19, 19, 2, enumC00052);
        EnumC0064 enumC006421 = new EnumC0064("INT64_LIST", 20, 20, 2, enumC00053);
        EnumC0064 enumC006422 = new EnumC0064("UINT64_LIST", 21, 21, 2, enumC00053);
        EnumC0064 enumC006423 = new EnumC0064("INT32_LIST", 22, 22, 2, enumC00054);
        EnumC0064 enumC006424 = new EnumC0064("FIXED64_LIST", 23, 23, 2, enumC00053);
        EnumC0064 enumC006425 = new EnumC0064("FIXED32_LIST", 24, 24, 2, enumC00054);
        EnumC0064 enumC006426 = new EnumC0064("BOOL_LIST", 25, 25, 2, enumC00055);
        EnumC0064 enumC006427 = new EnumC0064("STRING_LIST", 26, 26, 2, enumC00056);
        EnumC0064 enumC006428 = new EnumC0064("MESSAGE_LIST", 27, 27, 2, enumC00057);
        EnumC0064 enumC006429 = new EnumC0064("BYTES_LIST", 28, 28, 2, enumC00058);
        EnumC0064 enumC006430 = new EnumC0064("UINT32_LIST", 29, 29, 2, enumC00054);
        EnumC0064 enumC006431 = new EnumC0064("ENUM_LIST", 30, 30, 2, enumC00059);
        EnumC0064 enumC006432 = new EnumC0064("SFIXED32_LIST", 31, 31, 2, enumC00054);
        EnumC0064 enumC006433 = new EnumC0064("SFIXED64_LIST", 32, 32, 2, enumC00053);
        EnumC0064 enumC006434 = new EnumC0064("SINT32_LIST", 33, 33, 2, enumC00054);
        EnumC0064 enumC006435 = new EnumC0064("SINT64_LIST", 34, 34, 2, enumC00053);
        EnumC0064 enumC006436 = new EnumC0064("DOUBLE_LIST_PACKED", 35, 35, 3, enumC0005);
        f510 = enumC006436;
        EnumC0064 enumC006437 = new EnumC0064("FLOAT_LIST_PACKED", 36, 36, 3, enumC00052);
        EnumC0064 enumC006438 = new EnumC0064("INT64_LIST_PACKED", 37, 37, 3, enumC00053);
        EnumC0064 enumC006439 = new EnumC0064("UINT64_LIST_PACKED", 38, 38, 3, enumC00053);
        EnumC0064 enumC006440 = new EnumC0064("INT32_LIST_PACKED", 39, 39, 3, enumC00054);
        EnumC0064 enumC006441 = new EnumC0064("FIXED64_LIST_PACKED", 40, 40, 3, enumC00053);
        EnumC0064 enumC006442 = new EnumC0064("FIXED32_LIST_PACKED", 41, 41, 3, enumC00054);
        EnumC0064 enumC006443 = new EnumC0064("BOOL_LIST_PACKED", 42, 42, 3, enumC00055);
        EnumC0064 enumC006444 = new EnumC0064("UINT32_LIST_PACKED", 43, 43, 3, enumC00054);
        EnumC0064 enumC006445 = new EnumC0064("ENUM_LIST_PACKED", 44, 44, 3, enumC00059);
        EnumC0064 enumC006446 = new EnumC0064("SFIXED32_LIST_PACKED", 45, 45, 3, enumC00054);
        EnumC0064 enumC006447 = new EnumC0064("SFIXED64_LIST_PACKED", 46, 46, 3, enumC00053);
        EnumC0064 enumC006448 = new EnumC0064("SINT32_LIST_PACKED", 47, 47, 3, enumC00054);
        EnumC0064 enumC006449 = new EnumC0064("SINT64_LIST_PACKED", 48, 48, 3, enumC00053);
        f508 = enumC006449;
        f511 = new EnumC0064[]{enumC0064, enumC00642, enumC00643, enumC00644, enumC00645, enumC00646, enumC00647, enumC00648, enumC00649, enumC006410, enumC006411, enumC006412, enumC006413, enumC006414, enumC006415, enumC006416, enumC006417, enumC006418, enumC006419, enumC006420, enumC006421, enumC006422, enumC006423, enumC006424, enumC006425, enumC006426, enumC006427, enumC006428, enumC006429, enumC006430, enumC006431, enumC006432, enumC006433, enumC006434, enumC006435, enumC006436, enumC006437, enumC006438, enumC006439, enumC006440, enumC006441, enumC006442, enumC006443, enumC006444, enumC006445, enumC006446, enumC006447, enumC006448, enumC006449, new EnumC0064("GROUP_LIST", 49, 49, 2, enumC00057), new EnumC0064("MAP", 50, 50, 4, EnumC0005.f362)};
        EnumC0064[] values = values();
        f509 = new EnumC0064[values.length];
        for (EnumC0064 enumC006450 : values) {
            f509[enumC006450.f512] = enumC006450;
        }
    }

    public EnumC0064(String str, int i, int i2, int i3, EnumC0005 enumC0005) {
        this.f512 = i2;
        int m3018 = AbstractC0844.m3018(i3);
        if (m3018 == 1) {
            enumC0005.getClass();
        } else if (m3018 == 3) {
            enumC0005.getClass();
        }
        if (i3 == 1) {
            enumC0005.ordinal();
        }
    }

    public static EnumC0064 valueOf(String str) {
        return (EnumC0064) Enum.valueOf(EnumC0064.class, str);
    }

    public static EnumC0064[] values() {
        return (EnumC0064[]) f511.clone();
    }
}
