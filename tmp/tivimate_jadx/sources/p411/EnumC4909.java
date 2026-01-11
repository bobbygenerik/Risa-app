package p411;

import java.util.HashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: ﹳˎ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC4909 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ EnumC4909[] f18325;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final EnumC4909 f18326;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final HashMap f18327;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC4909 EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, ﹳˎ.ﾞᴵ] */
    static {
        Enum r0 = new Enum("X86_32", 0);
        Enum r1 = new Enum("X86_64", 1);
        Enum r3 = new Enum("ARM_UNKNOWN", 2);
        Enum r5 = new Enum("PPC", 3);
        Enum r7 = new Enum("PPC64", 4);
        Enum r9 = new Enum("ARMV6", 5);
        Enum r11 = new Enum("ARMV7", 6);
        ?? r13 = new Enum("UNKNOWN", 7);
        f18326 = r13;
        Enum r15 = new Enum("ARMV7S", 8);
        Enum r2 = new Enum("ARM64", 9);
        f18325 = new EnumC4909[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2};
        HashMap hashMap = new HashMap(4);
        f18327 = hashMap;
        hashMap.put("armeabi-v7a", r11);
        hashMap.put("armeabi", r9);
        hashMap.put("arm64-v8a", r2);
        hashMap.put("x86", r0);
    }

    public static EnumC4909 valueOf(String str) {
        return (EnumC4909) Enum.valueOf(EnumC4909.class, str);
    }

    public static EnumC4909[] values() {
        return (EnumC4909[]) f18325.clone();
    }
}
