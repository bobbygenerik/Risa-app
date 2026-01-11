package androidx.leanback.widget;

import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import p179.AbstractC2673;
import p179.C2713;
import p179.InterfaceC2706;

/* renamed from: androidx.leanback.widget.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0150 implements InterfaceC2706 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0145 f1016;

    public C0150(AbstractC0145 abstractC0145) {
        this.f1016 = abstractC0145;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m668(AbstractC2673 abstractC2673) {
        int i;
        GridLayoutManager gridLayoutManager = this.f1016.f1005;
        gridLayoutManager.getClass();
        int m6017 = abstractC2673.m6017();
        if (m6017 != -1) {
            C0121 c0121 = gridLayoutManager.f627;
            View view = abstractC2673.f10176;
            int i2 = c0121.f956;
            if (i2 != 1) {
                if ((i2 == 2 || i2 == 3) && ((C2713) c0121.f955) != null) {
                    String num = Integer.toString(m6017);
                    SparseArray<Parcelable> sparseArray = new SparseArray<>();
                    view.saveHierarchyState(sparseArray);
                    ((C2713) c0121.f955).m6095(num, sparseArray);
                    return;
                }
                return;
            }
            C2713 c2713 = (C2713) c0121.f955;
            if (c2713 != null) {
                synchronized (((ˋⁱ.ﾞᴵ) c2713.f10317)) {
                    i = c2713.f10314;
                }
                if (i != 0) {
                    ((C2713) c0121.f955).m6086(Integer.toString(m6017));
                }
            }
        }
    }
}
