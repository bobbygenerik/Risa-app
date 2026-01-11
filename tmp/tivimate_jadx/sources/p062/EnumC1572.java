package p062;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʾˈ.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1572 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1572[] f6140;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1572 f6141;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC1572 f6142;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʾˈ.ᐧﾞ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ʾˈ.ᐧﾞ] */
    static {
        ?? r0 = new Enum("GENERAL", 0);
        f6141 = r0;
        ?? r1 = new Enum("FALLBACK", 1);
        f6142 = r1;
        f6140 = new EnumC1572[]{r0, r1};
    }

    public static EnumC1572 valueOf(String str) {
        return (EnumC1572) Enum.valueOf(EnumC1572.class, str);
    }

    public static EnumC1572[] values() {
        return (EnumC1572[]) f6140.clone();
    }
}
