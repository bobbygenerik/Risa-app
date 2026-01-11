package p230;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;

/* renamed from: ˑʿ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC3144 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public AbstractC3143 f12056;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ViewGroup f12057;

    /* JADX WARN: Removed duplicated region for block: B:116:0x01f7 A[EDGE_INSN: B:116:0x01f7->B:117:0x01f7 BREAK  A[LOOP:1: B:17:0x0086->B:29:0x01ed], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008b  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onPreDraw() {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p230.ViewTreeObserverOnPreDrawListenerC3144.onPreDraw():boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f12057;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        AbstractC3180.f12135.remove(viewGroup);
        ArrayList arrayList = (ArrayList) AbstractC3180.m6995().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((AbstractC3143) obj).mo6918(viewGroup);
            }
        }
        this.f12056.m6920(true);
    }
}
