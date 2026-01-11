package p186;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p307.AbstractC3740;

/* renamed from: ˋᵔ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2811 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final ArrayList f10582 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public WeakReference f10583;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public SparseArray f10584;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public WeakHashMap f10585;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View m6249(View view) {
        int size;
        WeakHashMap weakHashMap = this.f10585;
        if (weakHashMap == null || !weakHashMap.containsKey(view)) {
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View m6249 = m6249(viewGroup.getChildAt(childCount));
                if (m6249 != null) {
                    return m6249;
                }
            }
        }
        ArrayList arrayList = (ArrayList) view.getTag(R.id.3lu);
        if (arrayList == null || arrayList.size() - 1 < 0) {
            return null;
        }
        throw AbstractC3740.m7931(size, arrayList);
    }
}
