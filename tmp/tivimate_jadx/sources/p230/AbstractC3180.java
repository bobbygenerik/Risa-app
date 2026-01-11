package p230;

import android.view.ViewGroup;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p255.C3359;
import p255.C3368;

/* renamed from: ˑʿ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3180 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3182 f12137 = new C3182();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final ThreadLocal f12136 = new ThreadLocal();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final ArrayList f12135 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m6994(ViewGroup viewGroup, AbstractC3143 abstractC3143) {
        ArrayList arrayList = (ArrayList) m6995().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((AbstractC3143) obj).mo6909(viewGroup);
            }
        }
        if (abstractC3143 != null) {
            abstractC3143.m6903(viewGroup, true);
        }
        if (viewGroup.getTag(R.id.6t1) != null) {
            throw new ClassCastException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [יـ.ﹳᐧ, יـ.ˑﹳ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C3359 m6995() {
        C3359 c3359;
        ThreadLocal threadLocal = f12136;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (c3359 = (C3359) weakReference.get()) != null) {
            return c3359;
        }
        ?? c3368 = new C3368(0);
        threadLocal.set(new WeakReference(c3368));
        return c3368;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [ˑʿ.ʼʼ, android.view.ViewTreeObserver$OnPreDrawListener, java.lang.Object, android.view.View$OnAttachStateChangeListener] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6996(ViewGroup viewGroup, AbstractC3143 abstractC3143) {
        ArrayList arrayList = f12135;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (abstractC3143 == null) {
            abstractC3143 = f12137;
        }
        AbstractC3143 clone = abstractC3143.clone();
        m6994(viewGroup, clone);
        viewGroup.setTag(R.id.6t1, null);
        ?? obj = new Object();
        obj.f12056 = clone;
        obj.f12057 = viewGroup;
        viewGroup.addOnAttachStateChangeListener(obj);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(obj);
    }
}
