package p179;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.leanback.widget.ˉˆ;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;
import p158.C2535;
import p186.C2833;

/* renamed from: ˋˋ.ˎᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2702 extends C2833 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2711 f10285;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WeakHashMap f10286 = new WeakHashMap();

    public C2702(C2711 c2711) {
        this.f10285 = c2711;
    }

    @Override // p186.C2833
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo6071(View view, AccessibilityEvent accessibilityEvent) {
        C2833 c2833 = (C2833) this.f10286.get(view);
        if (c2833 != null) {
            c2833.mo6071(view, accessibilityEvent);
        } else {
            super.mo6071(view, accessibilityEvent);
        }
    }

    @Override // p186.C2833
    /* renamed from: ʽ */
    public final void mo2394(View view, AccessibilityEvent accessibilityEvent) {
        C2833 c2833 = (C2833) this.f10286.get(view);
        if (c2833 != null) {
            c2833.mo2394(view, accessibilityEvent);
        } else {
            super.mo2394(view, accessibilityEvent);
        }
    }

    @Override // p186.C2833
    /* renamed from: ˈ */
    public final void mo2395(View view, C2535 c2535) {
        AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
        C2711 c2711 = this.f10285;
        RecyclerView recyclerView = c2711.f10309;
        RecyclerView recyclerView2 = c2711.f10309;
        boolean m960 = recyclerView.m960();
        View.AccessibilityDelegate accessibilityDelegate = this.f10631;
        if (m960 || recyclerView2.getLayoutManager() == null) {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            return;
        }
        recyclerView2.getLayoutManager().m5985(view, c2535);
        C2833 c2833 = (C2833) this.f10286.get(view);
        if (c2833 != null) {
            c2833.mo2395(view, c2535);
        } else {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        }
    }

    @Override // p186.C2833
    /* renamed from: ˑﹳ */
    public final void mo3979(View view, AccessibilityEvent accessibilityEvent) {
        C2833 c2833 = (C2833) this.f10286.get(view);
        if (c2833 != null) {
            c2833.mo3979(view, accessibilityEvent);
        } else {
            super.mo3979(view, accessibilityEvent);
        }
    }

    @Override // p186.C2833
    /* renamed from: ᵎﹶ */
    public final boolean mo2396(View view, int i, Bundle bundle) {
        C2711 c2711 = this.f10285;
        RecyclerView recyclerView = c2711.f10309;
        RecyclerView recyclerView2 = c2711.f10309;
        if (recyclerView.m960() || recyclerView2.getLayoutManager() == null) {
            return super.mo2396(view, i, bundle);
        }
        C2833 c2833 = (C2833) this.f10286.get(view);
        if (c2833 != null) {
            if (c2833.mo2396(view, i, bundle)) {
                return true;
            }
        } else if (super.mo2396(view, i, bundle)) {
            return true;
        }
        C2666 c2666 = recyclerView2.getLayoutManager().f10154.f1464;
        return false;
    }

    @Override // p186.C2833
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo6072(View view, int i) {
        C2833 c2833 = (C2833) this.f10286.get(view);
        if (c2833 != null) {
            c2833.mo6072(view, i);
        } else {
            super.mo6072(view, i);
        }
    }

    @Override // p186.C2833
    /* renamed from: ⁱˊ */
    public final ˉˆ mo5476(View view) {
        C2833 c2833 = (C2833) this.f10286.get(view);
        return c2833 != null ? c2833.mo5476(view) : super.mo5476(view);
    }

    @Override // p186.C2833
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo6073(View view, AccessibilityEvent accessibilityEvent) {
        C2833 c2833 = (C2833) this.f10286.get(view);
        return c2833 != null ? c2833.mo6073(view, accessibilityEvent) : this.f10631.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // p186.C2833
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo6074(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C2833 c2833 = (C2833) this.f10286.get(viewGroup);
        return c2833 != null ? c2833.mo6074(viewGroup, view, accessibilityEvent) : this.f10631.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
}
