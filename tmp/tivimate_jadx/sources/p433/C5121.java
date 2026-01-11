package p433;

import java.util.ArrayList;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import ˈˊ.ˉˆ;
import ˋⁱ.ﾞᴵ;

/* renamed from: ﹶˎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5121 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f19250 = {8, 13, 11, 2, 0, 1, 7};

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f19251;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ﾞᴵ f19252 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f19253;

    /* JADX WARN: Type inference failed for: r1v1, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    public C5121(int i) {
        this.f19253 = i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m10065(int i, ArrayList arrayList) {
        if (ˉˆ.ʽﹳ(f19250, i, 0, 7) == -1 || arrayList.contains(Integer.valueOf(i))) {
            return;
        }
        arrayList.add(Integer.valueOf(i));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1495 m10066(C1495 c1495) {
        if (!this.f19251 || !this.f19252.ﹳٴ(c1495)) {
            return c1495;
        }
        C1490 m4300 = c1495.m4300();
        String str = c1495.f5924;
        m4300.f5861 = AbstractC1464.m4251("application/x-media3-cues");
        m4300.f5874 = this.f19252.ᵎﹶ(c1495);
        StringBuilder sb = new StringBuilder();
        sb.append(c1495.f5930);
        sb.append(str != null ? " ".concat(str) : "");
        m4300.f5857 = sb.toString();
        m4300.f5885 = Long.MAX_VALUE;
        return new C1495(m4300);
    }
}
