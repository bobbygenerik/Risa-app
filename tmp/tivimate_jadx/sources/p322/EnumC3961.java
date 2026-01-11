package p322;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᴵˋ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3961 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC3961 f15273;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3961 f15274;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final EnumC3961 f15275;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final EnumC3961 f15276;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3961[] f15277;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC3961 f15278;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final EnumC3961 f15279;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ᴵˋ.ˈٴ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ᴵˋ.ˈٴ] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, ᴵˋ.ˈٴ] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, ᴵˋ.ˈٴ] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, ᴵˋ.ˈٴ] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, ᴵˋ.ˈٴ] */
    static {
        ?? r0 = new Enum("ENQUEUED", 0);
        f15274 = r0;
        ?? r1 = new Enum("RUNNING", 1);
        f15278 = r1;
        ?? r3 = new Enum("SUCCEEDED", 2);
        f15273 = r3;
        ?? r5 = new Enum("FAILED", 3);
        f15275 = r5;
        ?? r7 = new Enum("BLOCKED", 4);
        f15279 = r7;
        ?? r9 = new Enum("CANCELLED", 5);
        f15276 = r9;
        f15277 = new EnumC3961[]{r0, r1, r3, r5, r7, r9};
    }

    public static EnumC3961 valueOf(String str) {
        return (EnumC3961) Enum.valueOf(EnumC3961.class, str);
    }

    public static EnumC3961[] values() {
        return (EnumC3961[]) f15277.clone();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m8126() {
        return this == f15273 || this == f15275 || this == f15276;
    }
}
