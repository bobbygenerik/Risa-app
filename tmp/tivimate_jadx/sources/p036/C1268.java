package p036;

import android.window.BackEvent;

/* renamed from: ʽ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1268 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1268 f4924 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m3854(BackEvent backEvent) {
        return backEvent.getSwipeEdge();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float m3855(BackEvent backEvent) {
        return backEvent.getTouchX();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float m3856(BackEvent backEvent) {
        return backEvent.getTouchY();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float m3857(BackEvent backEvent) {
        return backEvent.getProgress();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final BackEvent m3858(float f, float f2, float f3, int i) {
        return new BackEvent(f, f2, f3, i);
    }
}
