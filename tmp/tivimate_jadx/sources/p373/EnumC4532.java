package p373;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᵢˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC4532 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC4532 f16960;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC4532[] f16961;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ᵢˎ.ﹳٴ] */
    static {
        ?? r0 = new Enum("COROUTINE_SUSPENDED", 0);
        f16960 = r0;
        f16961 = new EnumC4532[]{r0, new Enum("UNDECIDED", 1), new Enum("RESUMED", 2)};
    }

    public static EnumC4532 valueOf(String str) {
        return (EnumC4532) Enum.valueOf(EnumC4532.class, str);
    }

    public static EnumC4532[] values() {
        return (EnumC4532[]) f16961.clone();
    }
}
