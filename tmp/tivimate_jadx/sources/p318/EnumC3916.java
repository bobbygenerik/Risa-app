package p318;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᴵˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3916 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC3916 f15178;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3916 f15179;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3916[] f15180;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC3916 f15181;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵˆ.ʽ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [ᴵˆ.ʽ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [ᴵˆ.ʽ, java.lang.Enum] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        f15179 = r0;
        ?? r1 = new Enum("VERY_LOW", 1);
        f15181 = r1;
        ?? r3 = new Enum("HIGHEST", 2);
        f15178 = r3;
        f15180 = new EnumC3916[]{r0, r1, r3};
    }

    public static EnumC3916 valueOf(String str) {
        return (EnumC3916) Enum.valueOf(EnumC3916.class, str);
    }

    public static EnumC3916[] values() {
        return (EnumC3916[]) f15180.clone();
    }
}
