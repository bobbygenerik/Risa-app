package p179;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import p158.C2535;
import p186.C2833;

/* renamed from: ˋˋ.יﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2711 extends C2833 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final RecyclerView f10309;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2702 f10310;

    public C2711(RecyclerView recyclerView) {
        this.f10309 = recyclerView;
        C2833 mo3082 = mo3082();
        if (mo3082 == null || !(mo3082 instanceof C2702)) {
            this.f10310 = new C2702(this);
        } else {
            this.f10310 = (C2702) mo3082;
        }
    }

    @Override // p186.C2833
    /* renamed from: ʽ */
    public final void mo2394(View view, AccessibilityEvent accessibilityEvent) {
        super.mo2394(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f10309.m960()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().mo908(accessibilityEvent);
        }
    }

    /* renamed from: ˆʾ */
    public C2833 mo3082() {
        return this.f10310;
    }

    @Override // p186.C2833
    /* renamed from: ˈ */
    public final void mo2395(View view, C2535 c2535) {
        this.f10631.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
        RecyclerView recyclerView = this.f10309;
        if (recyclerView.m960() || recyclerView.getLayoutManager() == null) {
            return;
        }
        AbstractC2669 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.f10154;
        layoutManager.mo503(recyclerView2.f1464, recyclerView2.f1516, c2535);
    }

    @Override // p186.C2833
    /* renamed from: ᵎﹶ */
    public final boolean mo2396(View view, int i, Bundle bundle) {
        if (super.mo2396(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f10309;
        if (recyclerView.m960() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().mo872(i, bundle);
    }
}
