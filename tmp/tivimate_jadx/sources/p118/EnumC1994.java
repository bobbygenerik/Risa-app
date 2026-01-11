package p118;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ˈʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1994 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1994 f7852;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1994[] f7853;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ˈʾ.ʽ] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        f7852 = r0;
        f7853 = new EnumC1994[]{r0, new Enum("SIGNED", 1), new Enum("FIXED", 2)};
    }

    public static EnumC1994 valueOf(String str) {
        return (EnumC1994) Enum.valueOf(EnumC1994.class, str);
    }

    public static EnumC1994[] values() {
        return (EnumC1994[]) f7853.clone();
    }
}
