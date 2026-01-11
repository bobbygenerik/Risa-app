package androidx.core.view.insets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.List;
import p269.C3474;
import p269.C3476;
import p307.AbstractC3740;

/* loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Object f319 = new Object();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f320;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C3476 f321;

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        this.f320 = new ArrayList();
    }

    private C3474 getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.45u);
        if (tag instanceof C3474) {
            return (C3474) tag;
        }
        C3474 c3474 = new C3474(viewGroup);
        viewGroup.setTag(R.id.45u, c3474);
        return c3474;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != f319) {
            C3476 c3476 = this.f321;
            int childCount = getChildCount() - (c3476 != null ? c3476.f13648.size() : 0);
            if (i > childCount || i < 0) {
                i = childCount;
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f321 != null) {
            m120();
        }
        m121();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m120();
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.45u);
        if (tag instanceof C3474) {
            C3474 c3474 = (C3474) tag;
            if (c3474.f13641.isEmpty()) {
                c3474.f13642.post(new RunnableC0197(28, c3474));
                viewGroup.setTag(R.id.45u, null);
            }
        }
    }

    public void setProtections(List<Object> list) {
        ArrayList arrayList = this.f320;
        arrayList.clear();
        arrayList.addAll(list);
        if (isAttachedToWindow()) {
            m120();
            m121();
            requestApplyInsets();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m120() {
        if (this.f321 != null) {
            removeViews(getChildCount() - this.f321.f13648.size(), this.f321.f13648.size());
            if (this.f321.f13648.size() > 0) {
                throw AbstractC3740.m7931(0, this.f321.f13648);
            }
            C3476 c3476 = this.f321;
            ArrayList arrayList = c3476.f13648;
            if (!c3476.f13646) {
                c3476.f13646 = true;
                c3476.f13647.f13641.remove(c3476);
                int size = arrayList.size() - 1;
                if (size >= 0) {
                    throw AbstractC3740.m7931(size, arrayList);
                }
                arrayList.clear();
            }
            this.f321 = null;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m121() {
        ArrayList arrayList = this.f320;
        if (arrayList.isEmpty()) {
            return;
        }
        this.f321 = new C3476(getOrInstallSystemBarStateMonitor(), arrayList);
        getChildCount();
        if (this.f321.f13648.size() <= 0) {
            return;
        }
        if (this.f321.f13648.get(0) != null) {
            throw new ClassCastException();
        }
        getContext();
        throw null;
    }
}
