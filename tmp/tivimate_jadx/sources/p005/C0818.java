package p005;

import android.graphics.drawable.Drawable;

/* renamed from: ʻˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0818 implements Drawable.Callback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3493 = 1;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f3494;

    public /* synthetic */ C0818() {
    }

    public C0818(C0833 c0833) {
        this.f3494 = c0833;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m2968(Drawable drawable) {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        switch (this.f3493) {
            case 0:
                ((C0833) this.f3494).invalidateSelf();
                return;
            default:
                return;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        switch (this.f3493) {
            case 0:
                ((C0833) this.f3494).scheduleSelf(runnable, j);
                return;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f3494;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j);
                    return;
                }
                return;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.f3493) {
            case 0:
                ((C0833) this.f3494).unscheduleSelf(runnable);
                return;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f3494;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                    return;
                }
                return;
        }
    }
}
