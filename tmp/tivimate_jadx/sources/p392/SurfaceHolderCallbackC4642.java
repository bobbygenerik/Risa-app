package p392;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import p425.InterfaceC5046;
import p457.InterfaceC5385;

/* renamed from: ⁱי.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class SurfaceHolderCallbackC4642 implements InterfaceC5385, InterfaceC5046, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C4644 f17344;

    public SurfaceHolderCallbackC4642(C4644 c4644) {
        this.f17344 = c4644;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        C4644 c4644 = this.f17344;
        c4644.m9227(surface);
        c4644.f17355 = surface;
        c4644.m9229(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C4644 c4644 = this.f17344;
        c4644.m9227(null);
        c4644.m9229(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f17344.m9229(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.f17344.m9229(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        C4644 c4644 = this.f17344;
        if (c4644.f17359) {
            c4644.m9227(surfaceHolder.getSurface());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        C4644 c4644 = this.f17344;
        if (c4644.f17359) {
            c4644.m9227(null);
        }
        c4644.m9229(0, 0);
    }
}
