package p308;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᐧٴ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3752 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3752 f14606;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3752[] f14607;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3752 EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ᐧٴ.ʾᵎ] */
    static {
        Enum r0 = new Enum("UNKNOWN", 0);
        ?? r1 = new Enum("ANDROID_FIREBASE", 1);
        f14606 = r1;
        f14607 = new EnumC3752[]{r0, r1};
    }

    public static EnumC3752 valueOf(String str) {
        return (EnumC3752) Enum.valueOf(EnumC3752.class, str);
    }

    public static EnumC3752[] values() {
        return (EnumC3752[]) f14607.clone();
    }
}
