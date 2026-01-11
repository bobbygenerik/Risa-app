package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.parse.ٴʼ;
import p353.C4329;
import p353.InterfaceC4306;
import p353.InterfaceC4319;
import p353.MenuC4312;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements InterfaceC4306, InterfaceC4319, AdapterView.OnItemClickListener {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final int[] f51 = {R.attr.background, R.attr.divider};

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public MenuC4312 f52;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        ٴʼ r4 = ٴʼ.ʿᵢ(R.attr.listViewStyle, 0, context, attributeSet, f51);
        TypedArray typedArray = (TypedArray) r4.ᴵˊ;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(r4.ˑٴ(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(r4.ˑٴ(1));
        }
        r4.ᐧᴵ();
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo29((C4329) getAdapter().getItem(i));
    }

    @Override // p353.InterfaceC4306
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo29(C4329 c4329) {
        return this.f52.m8730(c4329, null, 0);
    }

    @Override // p353.InterfaceC4319
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo30(MenuC4312 menuC4312) {
        this.f52 = menuC4312;
    }
}
