package androidx.leanback.widget;

import com.google.android.material.datepicker.C0678;
import java.util.ArrayList;
import java.util.List;
import p143.AbstractC2392;
import p275.AbstractC3519;
import p409.C4840;
import ˈˊ.ˉˆ;

/* renamed from: androidx.leanback.widget.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0114 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f922;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f923;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f924;

    public /* synthetic */ RunnableC0114(int i, int i2, Object obj) {
        this.f923 = i2;
        this.f922 = obj;
        this.f924 = i;
    }

    public RunnableC0114(List list, int i, Throwable th) {
        this.f923 = 2;
        ˉˆ.ﾞᴵ(list, "initCallbacks cannot be null");
        this.f922 = new ArrayList(list);
        this.f924 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f923) {
            case 0:
                SearchBar searchBar = (SearchBar) this.f922;
                searchBar.f741.play(searchBar.f724.get(this.f924), 1.0f, 1.0f, 1, 0, 1.0f);
                return;
            case 1:
                ((C0678) this.f922).f2767.mo656(this.f924);
                return;
            case 2:
                ArrayList arrayList = (ArrayList) this.f922;
                int size = arrayList.size();
                int i = 0;
                if (this.f924 != 1) {
                    while (i < size) {
                        ((AbstractC3519) arrayList.get(i)).mo5339();
                        i++;
                    }
                    return;
                } else {
                    while (i < size) {
                        ((AbstractC3519) arrayList.get(i)).mo5338();
                        i++;
                    }
                    return;
                }
            case 3:
                AbstractC2392 abstractC2392 = (AbstractC2392) ((ᐧﹳ.ʽ) this.f922).ᴵˊ;
                if (abstractC2392 != null) {
                    abstractC2392.mo5307(this.f924);
                    return;
                }
                return;
            default:
                ((C4840) this.f922).m9636(this.f924);
                return;
        }
    }
}
