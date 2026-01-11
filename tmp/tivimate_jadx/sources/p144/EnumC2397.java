package p144;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ˉᴵ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC2397 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC2397[] f9259;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC2397 f9260;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC2397 f9261;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ˉᴵ.ˈ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ˉᴵ.ˈ] */
    static {
        ?? r0 = new Enum("CRASHLYTICS", 0);
        f9260 = r0;
        ?? r1 = new Enum("PERFORMANCE", 1);
        f9261 = r1;
        f9259 = new EnumC2397[]{r0, r1, new Enum("MATT_SAYS_HI", 2)};
    }

    public static EnumC2397 valueOf(String str) {
        return (EnumC2397) Enum.valueOf(EnumC2397.class, str);
    }

    public static EnumC2397[] values() {
        return (EnumC2397[]) f9259.clone();
    }
}
