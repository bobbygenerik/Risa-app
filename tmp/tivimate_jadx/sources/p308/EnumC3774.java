package p308;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ᐧٴ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC3774 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC3774 f14654;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC3774[] f14655;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3774 EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [ᐧٴ.ᵢˏ, java.lang.Enum, java.lang.Object] */
    static {
        Enum r0 = new Enum("NOT_SET", 0);
        ?? r1 = new Enum("EVENT_OVERRIDE", 1);
        f14654 = r1;
        f14655 = new EnumC3774[]{r0, r1};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, r0);
        sparseArray.put(5, r1);
    }

    public static EnumC3774 valueOf(String str) {
        return (EnumC3774) Enum.valueOf(EnumC3774.class, str);
    }

    public static EnumC3774[] values() {
        return (EnumC3774[]) f14655.clone();
    }
}
