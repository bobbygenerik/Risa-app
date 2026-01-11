package p031;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ʼᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC1146 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC1146 f4410;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC1146 f4411;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC1146[] f4412;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC1146 f4413;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ʼᵔ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, ʼᵔ.ﹳٴ] */
    static {
        ?? r0 = new Enum("PREFER_ARGB_8888", 0);
        f4411 = r0;
        ?? r1 = new Enum("PREFER_RGB_565", 1);
        f4413 = r1;
        f4412 = new EnumC1146[]{r0, r1};
        f4410 = r0;
    }

    public static EnumC1146 valueOf(String str) {
        return (EnumC1146) Enum.valueOf(EnumC1146.class, str);
    }

    public static EnumC1146[] values() {
        return (EnumC1146[]) f4412.clone();
    }
}
