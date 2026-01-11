package androidx.lifecycle;

import kotlin.NoWhenBranchMatchedException;
import p223.C3056;
import p310.C3785;
import p310.InterfaceC3786;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: androidx.lifecycle.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class EnumC0174 {
    private static final /* synthetic */ InterfaceC3786 $ENTRIES;
    private static final /* synthetic */ EnumC0174[] $VALUES;
    public static final C0188 Companion;
    public static final EnumC0174 ON_ANY;
    public static final EnumC0174 ON_CREATE;
    public static final EnumC0174 ON_DESTROY;
    public static final EnumC0174 ON_PAUSE;
    public static final EnumC0174 ON_RESUME;
    public static final EnumC0174 ON_START;
    public static final EnumC0174 ON_STOP;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.lifecycle.ٴﹶ] */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.lifecycle.ˉʿ, java.lang.Enum] */
    static {
        ?? r0 = new Enum("ON_CREATE", 0);
        ON_CREATE = r0;
        ?? r1 = new Enum("ON_START", 1);
        ON_START = r1;
        ?? r3 = new Enum("ON_RESUME", 2);
        ON_RESUME = r3;
        ?? r5 = new Enum("ON_PAUSE", 3);
        ON_PAUSE = r5;
        ?? r7 = new Enum("ON_STOP", 4);
        ON_STOP = r7;
        ?? r9 = new Enum("ON_DESTROY", 5);
        ON_DESTROY = r9;
        ?? r11 = new Enum("ON_ANY", 6);
        ON_ANY = r11;
        EnumC0174[] enumC0174Arr = {r0, r1, r3, r5, r7, r9, r11};
        $VALUES = enumC0174Arr;
        $ENTRIES = new C3785(enumC0174Arr);
        Companion = new Object();
    }

    public static EnumC0174 valueOf(String str) {
        return (EnumC0174) Enum.valueOf(EnumC0174.class, str);
    }

    public static EnumC0174[] values() {
        return (EnumC0174[]) $VALUES.clone();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumC0199 m702() {
        switch (AbstractC0209.f1122[ordinal()]) {
            case 1:
            case 2:
                return EnumC0199.f1100;
            case 3:
            case 4:
                return EnumC0199.f1102;
            case 5:
                return EnumC0199.f1105;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return EnumC0199.f1101;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                throw new IllegalArgumentException(this + " has no target state");
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
