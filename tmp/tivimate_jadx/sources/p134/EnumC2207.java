package p134;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ˉʼ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC2207 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC2207[] f8664;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC2207 f8665;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC2207 f8666;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ˉʼ.ˑﹳ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [ˉʼ.ˑﹳ, java.lang.Enum] */
    static {
        ?? r0 = new Enum("Synchronously", 0);
        f8665 = r0;
        ?? r1 = new Enum("Asynchronously", 1);
        f8666 = r1;
        f8664 = new EnumC2207[]{r0, r1};
    }

    public static EnumC2207 valueOf(String str) {
        return (EnumC2207) Enum.valueOf(EnumC2207.class, str);
    }

    public static EnumC2207[] values() {
        return (EnumC2207[]) f8664.clone();
    }
}
