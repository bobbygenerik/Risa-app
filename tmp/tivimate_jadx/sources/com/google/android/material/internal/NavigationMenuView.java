package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import p353.InterfaceC4319;
import p353.MenuC4312;

/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements InterfaceC4319 {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // p353.InterfaceC4319
    /* renamed from: ⁱˊ */
    public final void mo30(MenuC4312 menuC4312) {
    }
}
