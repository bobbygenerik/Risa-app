package p229;

import android.graphics.Rect;
import android.transition.Transition;
import androidx.leanback.widget.C0117;
import p404.C4790;

/* renamed from: ˑʼ.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3112 extends Transition.EpicenterCallback {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f11846;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f11847;

    public /* synthetic */ C3112(int i, Object obj) {
        this.f11847 = i;
        this.f11846 = obj;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        switch (this.f11847) {
            case 0:
                return (Rect) this.f11846;
            case 1:
                Rect rect = (Rect) this.f11846;
                if (rect == null || rect.isEmpty()) {
                    return null;
                }
                return rect;
            default:
                C4790 c4790 = (C4790) this.f11846;
                int height = (int) ((((C0117) c4790.f18034).f936 * r0.f944.getHeight()) / 100.0f);
                Rect rect2 = (Rect) c4790.f18036;
                rect2.set(0, height, 0, height);
                return rect2;
        }
    }
}
