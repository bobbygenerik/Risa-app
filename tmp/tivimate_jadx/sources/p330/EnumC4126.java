package p330;

import com.google.crypto.tink.shaded.protobuf.InterfaceC0695;

/* renamed from: ᴵﹳ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC4126 implements InterfaceC0695 {
    f15563("UNKNOWN_STATUS"),
    f15559("ENABLED"),
    f15560("DISABLED"),
    f15564("DESTROYED"),
    f15561("UNRECOGNIZED");


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f15565;

    EnumC4126(String str) {
        this.f15565 = r2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m8396() {
        if (this != f15561) {
            return this.f15565;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
