package p186;

import android.os.Build;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p349.C4292;
import ʽⁱ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ˋᵔ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2820 extends WindowInsetsAnimation$Callback {

    /* renamed from: ʽ, reason: contains not printable characters */
    public ArrayList f10593;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final HashMap f10594;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public List f10595;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ᵎﹶ f10596;

    public C2820(ᵎﹶ r2) {
        super(0);
        this.f10594 = new HashMap();
        this.f10596 = r2;
    }

    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        this.f10596.יﹳ(m6261(windowInsetsAnimation));
        this.f10594.remove(windowInsetsAnimation);
    }

    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        this.f10596.ʽⁱ(m6261(windowInsetsAnimation));
    }

    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        ArrayList arrayList = this.f10593;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.f10593 = arrayList2;
            this.f10595 = DesugarCollections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
            C2783 m6261 = m6261(windowInsetsAnimation);
            m6261.f10541.mo6191(windowInsetsAnimation.getFraction());
            this.f10593.add(m6261);
        }
        return this.f10596.ʾﾞ(C2816.m6253(null, windowInsets), this.f10595).m6258();
    }

    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        ⁱי r2 = this.f10596.ⁱˉ(m6261(windowInsetsAnimation), new ⁱי(bounds));
        r2.getClass();
        AbstractC2790.m6201();
        return AbstractC2790.m6203(((C4292) r2.ᴵˊ).m8695(), ((C4292) r2.ʽʽ).m8695());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2783 m6261(WindowInsetsAnimation windowInsetsAnimation) {
        C2783 c2783 = (C2783) this.f10594.get(windowInsetsAnimation);
        if (c2783 == null) {
            c2783 = new C2783(0, null, 0L);
            if (Build.VERSION.SDK_INT >= 30) {
                c2783.f10541 = new C2793(windowInsetsAnimation);
            }
            this.f10594.put(windowInsetsAnimation, c2783);
        }
        return c2783;
    }
}
