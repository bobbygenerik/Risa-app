package p243;

import java.util.ArrayDeque;
import p171.InterfaceC2622;
import ˉˆ.ʿ;

/* renamed from: ˑﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3245 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public ʿ f12492;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12493;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f12494;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f12497;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f12496 = new byte[8];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayDeque f12495 = new ArrayDeque();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3244 f12491 = new C3244();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m7076(InterfaceC2622 interfaceC2622, int i) {
        interfaceC2622.readFully(this.f12496, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (r0[i2] & 255);
        }
        return j;
    }
}
