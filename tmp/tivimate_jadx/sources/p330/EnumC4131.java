package p330;

import com.google.crypto.tink.shaded.protobuf.InterfaceC0695;

/* renamed from: ᴵﹳ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC4131 implements InterfaceC0695 {
    f15571("UNKNOWN_HASH"),
    f15566("SHA1"),
    f15567("SHA384"),
    f15572("SHA256"),
    f15569("SHA512"),
    f15570("SHA224"),
    f15568("UNRECOGNIZED");


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f15574;

    EnumC4131(String str) {
        this.f15574 = r2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m8412() {
        if (this != f15568) {
            return this.f15574;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
