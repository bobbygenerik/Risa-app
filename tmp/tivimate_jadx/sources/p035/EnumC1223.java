package p035;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʼﾞ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1223 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1223[] f4732;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1223 f4733;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC1223 f4734;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʼﾞ.ˑٴ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ʼﾞ.ˑٴ] */
    static {
        ?? r0 = new Enum("DEFERRED", 0);
        f4733 = r0;
        ?? r1 = new Enum("IMMEDIATE", 1);
        f4734 = r1;
        f4732 = new EnumC1223[]{r0, r1, new Enum("EXCLUSIVE", 2)};
    }

    public static EnumC1223 valueOf(String str) {
        return (EnumC1223) Enum.valueOf(EnumC1223.class, str);
    }

    public static EnumC1223[] values() {
        return (EnumC1223[]) f4732.clone();
    }
}
