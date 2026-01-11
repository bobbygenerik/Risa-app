package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import p011.C0867;
import p011.C0875;
import p075.C1652;
import p158.C2526;
import p158.C2535;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p186.C2833;

/* renamed from: com.google.android.material.datepicker.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0661 extends C2833 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f2698;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ Object f2699;

    public /* synthetic */ C0661(int i, Object obj) {
        this.f2698 = i;
        this.f2699 = obj;
    }

    @Override // p186.C2833
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo2394(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f2698) {
            case 2:
                super.mo2394(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.f2699).f2791);
                return;
            default:
                super.mo2394(view, accessibilityEvent);
                return;
        }
    }

    @Override // p186.C2833
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo2395(View view, C2535 c2535) {
        int i = this.f2698;
        View.AccessibilityDelegate accessibilityDelegate = this.f10631;
        Object obj = this.f2699;
        switch (i) {
            case 0:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
                C0678 c0678 = (C0678) obj;
                c2535.m5675(new C2526(16, c0678.f2776.getVisibility() == 0 ? c0678.m6800(R.string.178) : c0678.m6800(R.string.17v)));
                return;
            case 1:
                C0875 c0875 = (C0875) obj;
                c0875.f3723.mo2395(view, c2535);
                RecyclerView recyclerView = c0875.f3725;
                recyclerView.getClass();
                AbstractC2673 m927 = RecyclerView.m927(view);
                r1 = m927 != null ? m927.m6017() : -1;
                AbstractC2727 adapter = recyclerView.getAdapter();
                if (adapter instanceof C0867) {
                    ((C0867) adapter).m3076(r1);
                    return;
                }
                return;
            case 2:
                AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                accessibilityNodeInfo.setCheckable(checkableImageButton.f2794);
                accessibilityNodeInfo.setChecked(checkableImageButton.f2791);
                return;
            case 3:
                AccessibilityNodeInfo accessibilityNodeInfo2 = c2535.f9633;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCheckable(((NavigationMenuItemView) obj).f2801);
                return;
            default:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, c2535.f9633);
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                int i2 = MaterialButtonToggleGroup.f2656;
                if (view instanceof MaterialButton) {
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        if (i3 < materialButtonToggleGroup.getChildCount()) {
                            if (materialButtonToggleGroup.getChildAt(i3) == view) {
                                r1 = i4;
                            } else {
                                if ((materialButtonToggleGroup.getChildAt(i3) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i3).getVisibility() != 8) {
                                    i4++;
                                }
                                i3++;
                            }
                        }
                    }
                }
                c2535.m5678(C1652.m4511(((MaterialButton) view).f2632, 0, 1, r1, 1));
                return;
        }
    }

    @Override // p186.C2833
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean mo2396(View view, int i, Bundle bundle) {
        switch (this.f2698) {
            case 1:
                return ((C0875) this.f2699).f3723.mo2396(view, i, bundle);
            default:
                return super.mo2396(view, i, bundle);
        }
    }
}
