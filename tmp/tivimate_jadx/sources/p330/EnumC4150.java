package p330;

import com.google.crypto.tink.shaded.protobuf.InterfaceC0695;

/* renamed from: ᴵﹳ.י, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC4150 implements InterfaceC0695 {
    f15580("UNKNOWN_PREFIX"),
    f15575("TINK"),
    f15576("LEGACY"),
    f15581("RAW"),
    f15578("CRUNCHY"),
    f15579("WITH_ID_REQUIREMENT"),
    f15577("UNRECOGNIZED");


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f15583;

    EnumC4150(String str) {
        this.f15583 = r2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static EnumC4150 m8457(int i) {
        if (i == 0) {
            return f15580;
        }
        if (i == 1) {
            return f15575;
        }
        if (i == 2) {
            return f15576;
        }
        if (i == 3) {
            return f15581;
        }
        if (i == 4) {
            return f15578;
        }
        if (i != 5) {
            return null;
        }
        return f15579;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m8458() {
        if (this != f15577) {
            return this.f15583;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
