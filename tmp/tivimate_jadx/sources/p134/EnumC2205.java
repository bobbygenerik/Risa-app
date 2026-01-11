package p134;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ˉʼ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC2205 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC2205[] f8661;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC2205 f8662;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC2205 f8663;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ˉʼ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ˉʼ.ˆʾ] */
    static {
        ?? r0 = new Enum("Strong", 0);
        f8662 = r0;
        ?? r1 = new Enum("Weak", 1);
        f8663 = r1;
        f8661 = new EnumC2205[]{r0, r1};
    }

    public static EnumC2205 valueOf(String str) {
        return (EnumC2205) Enum.valueOf(EnumC2205.class, str);
    }

    public static EnumC2205[] values() {
        return (EnumC2205[]) f8661.clone();
    }
}
