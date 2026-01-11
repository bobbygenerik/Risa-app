package p308;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᐧٴ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3764 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3764 f14641;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3764[] f14642;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, ᐧٴ.ٴʼ, java.lang.Object] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        f14641 = r0;
        Enum r1 = new Enum("UNMETERED_ONLY", 1);
        Enum r3 = new Enum("UNMETERED_OR_DAILY", 2);
        Enum r5 = new Enum("FAST_IF_RADIO_AWAKE", 3);
        Enum r7 = new Enum("NEVER", 4);
        Enum r9 = new Enum("UNRECOGNIZED", 5);
        f14642 = new EnumC3764[]{r0, r1, r3, r5, r7, r9};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, r0);
        sparseArray.put(1, r1);
        sparseArray.put(2, r3);
        sparseArray.put(3, r5);
        sparseArray.put(4, r7);
        sparseArray.put(-1, r9);
    }

    public static EnumC3764 valueOf(String str) {
        return (EnumC3764) Enum.valueOf(EnumC3764.class, str);
    }

    public static EnumC3764[] values() {
        return (EnumC3764[]) f14642.clone();
    }
}
