package p136;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import p186.C2798;
import p186.InterfaceC2796;

/* renamed from: ˉʿ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2220 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Interpolator f8700;

    /* renamed from: ˈ, reason: contains not printable characters */
    public InterfaceC2796 f8701;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f8702;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f8703 = -1;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2218 f8705 = new C2218(this);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f8704 = new ArrayList();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5208() {
        View view;
        if (this.f8702) {
            return;
        }
        ArrayList arrayList = this.f8704;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C2798 c2798 = (C2798) obj;
            long j = this.f8703;
            if (j >= 0) {
                c2798.m6226(j);
            }
            Interpolator interpolator = this.f8700;
            if (interpolator != null && (view = (View) c2798.f10550.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f8701 != null) {
                c2798.m6227(this.f8705);
            }
            View view2 = (View) c2798.f10550.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f8702 = true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5209() {
        if (this.f8702) {
            ArrayList arrayList = this.f8704;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((C2798) obj).m6229();
            }
            this.f8702 = false;
        }
    }
}
