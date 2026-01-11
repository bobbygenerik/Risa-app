package com.google.android.gms.internal.measurement;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: com.google.android.gms.internal.measurement.ˈʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0319 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC0319 f1961;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final EnumC0319 f1962;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0319[] f1963;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final EnumC0407 f1964;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f1965;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0319 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0319 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0319 EF2;

    static {
        EnumC0319 enumC0319 = new EnumC0319("DOUBLE", 0, EnumC0407.f2138, 1);
        EnumC0319 enumC03192 = new EnumC0319("FLOAT", 1, EnumC0407.f2136, 5);
        EnumC0407 enumC0407 = EnumC0407.f2143;
        EnumC0319 enumC03193 = new EnumC0319("INT64", 2, enumC0407, 0);
        EnumC0319 enumC03194 = new EnumC0319("UINT64", 3, enumC0407, 0);
        EnumC0407 enumC04072 = EnumC0407.f2137;
        EnumC0319 enumC03195 = new EnumC0319("INT32", 4, enumC04072, 0);
        EnumC0319 enumC03196 = new EnumC0319("FIXED64", 5, enumC0407, 1);
        EnumC0319 enumC03197 = new EnumC0319("FIXED32", 6, enumC04072, 5);
        EnumC0319 enumC03198 = new EnumC0319("BOOL", 7, EnumC0407.f2144, 0);
        EnumC0319 enumC03199 = new EnumC0319("STRING", 8, EnumC0407.f2140, 2);
        f1961 = enumC03199;
        EnumC0407 enumC04073 = EnumC0407.f2145;
        EnumC0319 enumC031910 = new EnumC0319("GROUP", 9, enumC04073, 3);
        f1962 = enumC031910;
        f1963 = new EnumC0319[]{enumC0319, enumC03192, enumC03193, enumC03194, enumC03195, enumC03196, enumC03197, enumC03198, enumC03199, enumC031910, new EnumC0319("MESSAGE", 10, enumC04073, 2), new EnumC0319("BYTES", 11, EnumC0407.f2142, 2), new EnumC0319("UINT32", 12, enumC04072, 0), new EnumC0319("ENUM", 13, EnumC0407.f2139, 0), new EnumC0319("SFIXED32", 14, enumC04072, 5), new EnumC0319("SFIXED64", 15, enumC0407, 1), new EnumC0319("SINT32", 16, enumC04072, 0), new EnumC0319("SINT64", 17, enumC0407, 0)};
    }

    public EnumC0319(String str, int i, EnumC0407 enumC0407, int i2) {
        this.f1964 = enumC0407;
        this.f1965 = i2;
    }

    public static EnumC0319[] values() {
        return (EnumC0319[]) f1963.clone();
    }
}
