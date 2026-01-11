package p312;

import android.view.AttachedSurfaceControl;
import android.view.SurfaceControl;
import android.view.SurfaceView;
import android.window.SurfaceSyncGroup;
import p305.AbstractC3731;
import ʿˋ.ˉٴ;

/* renamed from: ᐧⁱ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3869 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public SurfaceSyncGroup f15054;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ void m8067(C3869 c3869, SurfaceView surfaceView, RunnableC3847 runnableC3847) {
        c3869.getClass();
        AttachedSurfaceControl rootSurfaceControl = surfaceView.getRootSurfaceControl();
        if (rootSurfaceControl == null) {
            return;
        }
        SurfaceSyncGroup surfaceSyncGroup = new SurfaceSyncGroup("exo-sync-b-334901521");
        c3869.f15054 = surfaceSyncGroup;
        AbstractC3731.m7857(surfaceSyncGroup.add(rootSurfaceControl, (Runnable) new ˉٴ(2)));
        runnableC3847.run();
        rootSurfaceControl.applyTransactionOnDraw(new SurfaceControl.Transaction());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8068() {
        SurfaceSyncGroup surfaceSyncGroup = this.f15054;
        if (surfaceSyncGroup != null) {
            surfaceSyncGroup.markSyncReady();
            this.f15054 = null;
        }
    }
}
