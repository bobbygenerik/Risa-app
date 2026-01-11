package p306;

import android.graphics.Color;
import p137.AbstractC2305;
import p223.C3056;
import p305.AbstractC3731;
import ˈˊ.ˉˆ;

/* renamed from: ᐧˏ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3736 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f14543;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Integer f14544;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f14545;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Integer f14546;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f14547;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f14548;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f14549;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f14550;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14551;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f14552;

    public C3736(String str, int i, Integer num, Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.f14551 = str;
        this.f14550 = i;
        this.f14544 = num;
        this.f14546 = num2;
        this.f14547 = f;
        this.f14552 = z;
        this.f14548 = z2;
        this.f14549 = z3;
        this.f14543 = z4;
        this.f14545 = i2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Integer m7909(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            AbstractC3731.m7849(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(ˉˆ.ᵔᵢ(((parseLong >> 24) & 255) ^ 255), ˉˆ.ᵔᵢ(parseLong & 255), ˉˆ.ᵔᵢ((parseLong >> 8) & 255), ˉˆ.ᵔᵢ((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            AbstractC3731.m7859("SsaStyle", "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m7910(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e) {
            AbstractC3731.m7859("SsaStyle", "Failed to parse boolean value: '" + str + "'", e);
            return false;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m7911(String str) {
        boolean z;
        try {
            int parseInt = Integer.parseInt(str.trim());
            switch (parseInt) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                case 9:
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        AbstractC2305.m5359("Ignoring unknown alignment: ", str, "SsaStyle");
        return -1;
    }
}
