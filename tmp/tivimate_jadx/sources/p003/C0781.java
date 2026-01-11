package p003;

import android.view.View;
import p179.AbstractC2673;

/* renamed from: ʻʿ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0781 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3264;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f3265;

    public /* synthetic */ C0781(int i, int i2) {
        this.f3265 = i;
        this.f3264 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m2876(AbstractC2673 abstractC2673) {
        View view = abstractC2673.f10176;
        this.f3265 = view.getLeft();
        this.f3264 = view.getTop();
        view.getRight();
        view.getBottom();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int m2877() {
        int i = this.f3264;
        if (i == 2) {
            return 10;
        }
        if (i == 5) {
            return 11;
        }
        if (i == 29) {
            return 12;
        }
        if (i == 42) {
            return 16;
        }
        if (i != 22) {
            return i != 23 ? 0 : 15;
        }
        return 1073741824;
    }
}
