package p031;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʼᵔ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1137 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1137 f4400;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1137[] f4401;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1137 EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ʼᵔ.ʼˎ] */
    static {
        Enum r0 = new Enum("SRGB", 0);
        ?? r1 = new Enum("DISPLAY_P3", 1);
        f4400 = r1;
        f4401 = new EnumC1137[]{r0, r1};
    }

    public static EnumC1137 valueOf(String str) {
        return (EnumC1137) Enum.valueOf(EnumC1137.class, str);
    }

    public static EnumC1137[] values() {
        return (EnumC1137[]) f4401.clone();
    }
}
