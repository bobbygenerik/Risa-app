package p320;

import p310.C3785;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᴵˉ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3945 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC3945 f15243;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final EnumC3945 f15244;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ C3785 f15245;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final EnumC3945 f15246;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3945[] f15247;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final EnumC3945 f15248;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final char f15249;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final char f15250;

    static {
        EnumC3945 enumC3945 = new EnumC3945("OBJ", 0, '{', '}');
        f15243 = enumC3945;
        EnumC3945 enumC39452 = new EnumC3945("LIST", 1, '[', ']');
        f15244 = enumC39452;
        EnumC3945 enumC39453 = new EnumC3945("MAP", 2, '{', '}');
        f15248 = enumC39453;
        EnumC3945 enumC39454 = new EnumC3945("POLY_OBJ", 3, '[', ']');
        f15246 = enumC39454;
        EnumC3945[] enumC3945Arr = {enumC3945, enumC39452, enumC39453, enumC39454};
        f15247 = enumC3945Arr;
        f15245 = new C3785(enumC3945Arr);
    }

    public EnumC3945(String str, int i, char c, char c2) {
        this.f15249 = c;
        this.f15250 = c2;
    }

    public static EnumC3945 valueOf(String str) {
        return (EnumC3945) Enum.valueOf(EnumC3945.class, str);
    }

    public static EnumC3945[] values() {
        return (EnumC3945[]) f15247.clone();
    }
}
