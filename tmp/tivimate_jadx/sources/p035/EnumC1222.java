package p035;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʼﾞ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1222 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC1222 f4728;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1222 f4729;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1222[] f4730;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC1222 f4731;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʼﾞ.ˏי] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ʼﾞ.ˏי] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, ʼﾞ.ˏי] */
    static {
        ?? r0 = new Enum("NO_OP", 0);
        f4729 = r0;
        ?? r1 = new Enum("ADD", 1);
        f4731 = r1;
        ?? r3 = new Enum("REMOVE", 2);
        f4728 = r3;
        f4730 = new EnumC1222[]{r0, r1, r3};
    }

    public static EnumC1222 valueOf(String str) {
        return (EnumC1222) Enum.valueOf(EnumC1222.class, str);
    }

    public static EnumC1222[] values() {
        return (EnumC1222[]) f4730.clone();
    }
}
