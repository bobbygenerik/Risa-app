package p279;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p363.AbstractActivityC4410;

/* renamed from: ٴʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3548 implements InterfaceC3558 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Set f13895 = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile boolean f13896;

    @Override // p279.InterfaceC3558
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo7496(AbstractActivityC4410 abstractActivityC4410) {
        if (!this.f13896 && this.f13895.add(abstractActivityC4410)) {
            View decorView = abstractActivityC4410.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new ViewTreeObserverOnDrawListenerC3544(this, decorView));
        }
    }
}
