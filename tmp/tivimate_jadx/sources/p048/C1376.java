package p048;

import com.bumptech.glide.C0229;
import java.util.ArrayList;
import p208.C2942;
import p208.C2945;
import p208.InterfaceC2964;
import p292.C3632;
import p292.InterfaceC3631;

/* renamed from: ʽי.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1376 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f5411;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f5412;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0229 f5413;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2945 f5414;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f5415;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f5416;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f5417;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3632 f5418;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f5419;

    public C1376(C3632 c3632, ArrayList arrayList, int i, C0229 c0229, C2945 c2945, int i2, int i3, int i4) {
        this.f5418 = c3632;
        this.f5417 = arrayList;
        this.f5412 = i;
        this.f5413 = c0229;
        this.f5414 = c2945;
        this.f5419 = i2;
        this.f5415 = i3;
        this.f5416 = i4;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1376 m4064(C1376 c1376, int i, C0229 c0229, C2945 c2945, int i2) {
        if ((i2 & 1) != 0) {
            i = c1376.f5412;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            c0229 = c1376.f5413;
        }
        C0229 c02292 = c0229;
        if ((i2 & 4) != 0) {
            c2945 = c1376.f5414;
        }
        int i4 = c1376.f5419;
        int i5 = c1376.f5415;
        int i6 = c1376.f5416;
        return new C1376(c1376.f5418, c1376.f5417, i3, c02292, c2945, i4, i5, i6);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2942 m4065(C2945 c2945) {
        ArrayList arrayList = this.f5417;
        int size = arrayList.size();
        int i = this.f5412;
        if (i >= size) {
            throw new IllegalStateException("Check failed.");
        }
        this.f5411++;
        C0229 c0229 = this.f5413;
        if (c0229 != null) {
            if (!((InterfaceC3631) c0229.f1643).mo7422().mo7626(c2945.f11226)) {
                throw new IllegalStateException(("network interceptor " + arrayList.get(i - 1) + " must retain the same host and port").toString());
            }
            if (this.f5411 != 1) {
                throw new IllegalStateException(("network interceptor " + arrayList.get(i - 1) + " must call proceed() exactly once").toString());
            }
        }
        int i2 = i + 1;
        C1376 m4064 = m4064(this, i2, null, c2945, 58);
        InterfaceC2964 interfaceC2964 = (InterfaceC2964) arrayList.get(i);
        C2942 mo4069 = interfaceC2964.mo4069(m4064);
        if (mo4069 == null) {
            throw new NullPointerException("interceptor " + interfaceC2964 + " returned null");
        }
        if (c0229 == null || i2 >= arrayList.size() || m4064.f5411 == 1) {
            return mo4069;
        }
        throw new IllegalStateException(("network interceptor " + interfaceC2964 + " must call proceed() exactly once").toString());
    }
}
