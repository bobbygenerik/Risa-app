package p305;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;

/* renamed from: ᐧˎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3728 implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final int[] f14511 = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public EGLDisplay f14512;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Handler f14513;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public EGLContext f14514;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public SurfaceTexture f14515;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int[] f14516 = new int[1];

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public EGLSurface f14517;

    public RunnableC3728(Handler handler) {
        this.f14513 = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f14513.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f14515;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
