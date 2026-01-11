package p072;

import java.util.ArrayList;
import p018.AbstractC1019;
import p018.C1018;

/* renamed from: ʾᵎ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1632 extends C1635 {

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public C1635[] f6497 = new C1635[4];

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public int f6498 = 0;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public void mo4414() {
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m4415(int i, ArrayList arrayList, C1018 c1018) {
        for (int i2 = 0; i2 < this.f6498; i2++) {
            C1635 c1635 = this.f6497[i2];
            ArrayList arrayList2 = c1018.f4033;
            if (!arrayList2.contains(c1635)) {
                arrayList2.add(c1635);
            }
        }
        for (int i3 = 0; i3 < this.f6498; i3++) {
            AbstractC1019.m3339(this.f6497[i3], i, arrayList, c1018);
        }
    }
}
