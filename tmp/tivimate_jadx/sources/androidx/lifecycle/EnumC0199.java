package androidx.lifecycle;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: androidx.lifecycle.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0199 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final EnumC0199 f1100;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC0199 f1101;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final EnumC0199 f1102;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC0199[] f1103;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final EnumC0199 f1104;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final EnumC0199 f1105;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.ᵔʾ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.ᵔʾ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.lifecycle.ᵔʾ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.lifecycle.ᵔʾ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.lifecycle.ᵔʾ, java.lang.Enum] */
    static {
        ?? r0 = new Enum("DESTROYED", 0);
        f1101 = r0;
        ?? r1 = new Enum("INITIALIZED", 1);
        f1104 = r1;
        ?? r3 = new Enum("CREATED", 2);
        f1100 = r3;
        ?? r5 = new Enum("STARTED", 3);
        f1102 = r5;
        ?? r7 = new Enum("RESUMED", 4);
        f1105 = r7;
        f1103 = new EnumC0199[]{r0, r1, r3, r5, r7};
    }

    public static EnumC0199 valueOf(String str) {
        return (EnumC0199) Enum.valueOf(EnumC0199.class, str);
    }

    public static EnumC0199[] values() {
        return (EnumC0199[]) f1103.clone();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m733(EnumC0199 enumC0199) {
        return compareTo(enumC0199) >= 0;
    }
}
