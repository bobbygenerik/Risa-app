package androidx.datastore.preferences.protobuf;

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
/* renamed from: androidx.datastore.preferences.protobuf.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class EnumC0042 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0066 f436;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C0065 f437;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0042[] f438;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0002 f439;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final EnumC0050 f440;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f441;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0042 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0042 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0042 EF2;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.datastore.preferences.protobuf.ٴﹳ, androidx.datastore.preferences.protobuf.ʻˋ] */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.datastore.preferences.protobuf.ﹶᐧ, androidx.datastore.preferences.protobuf.ٴﹳ] */
    /* JADX WARN: Type inference failed for: r6v3, types: [androidx.datastore.preferences.protobuf.ﹳﹳ, androidx.datastore.preferences.protobuf.ٴﹳ] */
    static {
        EnumC0042 enumC0042 = new EnumC0042("DOUBLE", 0, EnumC0050.f457, 1);
        EnumC0042 enumC00422 = new EnumC0042("FLOAT", 1, EnumC0050.f455, 5);
        EnumC0050 enumC0050 = EnumC0050.f462;
        EnumC0042 enumC00423 = new EnumC0042("INT64", 2, enumC0050, 0);
        EnumC0042 enumC00424 = new EnumC0042("UINT64", 3, enumC0050, 0);
        EnumC0050 enumC00502 = EnumC0050.f456;
        EnumC0042 enumC00425 = new EnumC0042("INT32", 4, enumC00502, 0);
        EnumC0042 enumC00426 = new EnumC0042("FIXED64", 5, enumC0050, 1);
        EnumC0042 enumC00427 = new EnumC0042("FIXED32", 6, enumC00502, 5);
        EnumC0042 enumC00428 = new EnumC0042("BOOL", 7, EnumC0050.f463, 0);
        ?? enumC00429 = new EnumC0042("STRING", 8, EnumC0050.f459, 2);
        f436 = enumC00429;
        EnumC0050 enumC00503 = EnumC0050.f464;
        ?? enumC004210 = new EnumC0042("GROUP", 9, enumC00503, 3);
        f437 = enumC004210;
        ?? enumC004211 = new EnumC0042("MESSAGE", 10, enumC00503, 2);
        f439 = enumC004211;
        f438 = new EnumC0042[]{enumC0042, enumC00422, enumC00423, enumC00424, enumC00425, enumC00426, enumC00427, enumC00428, enumC00429, enumC004210, enumC004211, new EnumC0042("BYTES", 11, EnumC0050.f461, 2), new EnumC0042("UINT32", 12, enumC00502, 0), new EnumC0042("ENUM", 13, EnumC0050.f458, 0), new EnumC0042("SFIXED32", 14, enumC00502, 5), new EnumC0042("SFIXED64", 15, enumC0050, 1), new EnumC0042("SINT32", 16, enumC00502, 0), new EnumC0042("SINT64", 17, enumC0050, 0)};
    }

    public EnumC0042(String str, int i, EnumC0050 enumC0050, int i2) {
        this.f440 = enumC0050;
        this.f441 = i2;
    }

    public static EnumC0042 valueOf(String str) {
        return (EnumC0042) Enum.valueOf(EnumC0042.class, str);
    }

    public static EnumC0042[] values() {
        return (EnumC0042[]) f438.clone();
    }
}
