package p269;

import android.graphics.RectF;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p186.C2783;
import p186.C2816;
import p307.AbstractC3740;
import p349.C4292;
import ʽⁱ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ـˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3473 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3474 f13636;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HashMap f13637 = new HashMap();

    public C3473(C3474 c3474) {
        this.f13636 = c3474;
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final void m7394(C2783 c2783) {
        ArrayList arrayList = this.f13636.f13641;
        if ((c2783.f10541.mo6190() & 519) != 0) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((C3476) arrayList.get(size)).f13645++;
            }
        }
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final C2816 m7395(C2816 c2816, List list) {
        ArrayList arrayList = this.f13636.f13641;
        RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
        for (int size = list.size() - 1; size >= 0; size--) {
            C2783 c2783 = (C2783) list.get(size);
            Integer num = (Integer) this.f13637.get(c2783);
            if (num != null) {
                int intValue = num.intValue();
                float mo6193 = c2783.f10541.mo6193();
                if ((intValue & 1) != 0) {
                    rectF.left = mo6193;
                }
                if ((intValue & 2) != 0) {
                    rectF.top = mo6193;
                }
                if ((intValue & 4) != 0) {
                    rectF.right = mo6193;
                }
                if ((intValue & 8) != 0) {
                    rectF.bottom = mo6193;
                }
            }
        }
        C4292.m8693(c2816.f10589.mo6167(519), c2816.f10589.mo6167(64));
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList2 = ((C3476) arrayList.get(size2)).f13648;
            int size3 = arrayList2.size() - 1;
            if (size3 >= 0) {
                throw AbstractC3740.m7931(size3, arrayList2);
            }
        }
        return c2816;
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m7396(C2783 c2783) {
        ArrayList arrayList = this.f13636.f13641;
        if ((c2783.f10541.mo6190() & 519) != 0) {
            this.f13637.remove(c2783);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C3476 c3476 = (C3476) arrayList.get(size);
                int i = c3476.f13645;
                boolean z = i > 0;
                int i2 = i - 1;
                c3476.f13645 = i2;
                if (z && i2 == 0) {
                    ArrayList arrayList2 = c3476.f13648;
                    int size2 = arrayList2.size() - 1;
                    if (size2 >= 0) {
                        throw AbstractC3740.m7931(size2, arrayList2);
                    }
                }
            }
        }
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final ⁱי m7397(C2783 c2783, ⁱי r7) {
        if ((c2783.f10541.mo6190() & 519) != 0) {
            C4292 c4292 = (C4292) r7.ʽʽ;
            C4292 c42922 = (C4292) r7.ᴵˊ;
            int i = c4292.f15891 != c42922.f15891 ? 1 : 0;
            if (c4292.f15890 != c42922.f15890) {
                i |= 2;
            }
            if (c4292.f15888 != c42922.f15888) {
                i |= 4;
            }
            if (c4292.f15889 != c42922.f15889) {
                i |= 8;
            }
            this.f13637.put(c2783, Integer.valueOf(i));
        }
        return r7;
    }
}
