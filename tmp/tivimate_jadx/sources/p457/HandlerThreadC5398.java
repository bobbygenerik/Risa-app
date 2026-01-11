package p457;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.media3.common.util.GlUtil$GlException;
import java.util.Locale;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.RunnableC3728;

/* renamed from: ﾞˏ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class HandlerThreadC5398 extends HandlerThread implements Handler.Callback {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Error f20597;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public RunnableC3728 f20598;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public RuntimeException f20599;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Handler f20600;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C5409 f20601;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        try {
            if (i == 1) {
                try {
                    m10832(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                    return true;
                } catch (GlUtil$GlException e) {
                    AbstractC3731.m7863("PlaceholderSurface", "Failed to initialize placeholder surface", e);
                    this.f20599 = new IllegalStateException(e);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    AbstractC3731.m7863("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                    this.f20597 = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e3) {
                    AbstractC3731.m7863("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                    this.f20599 = e3;
                    synchronized (this) {
                        notify();
                    }
                }
            } else if (i == 2) {
                try {
                    m10831();
                    return true;
                } catch (Throwable th) {
                    try {
                        AbstractC3731.m7863("PlaceholderSurface", "Failed to release placeholder surface", th);
                        return true;
                    } finally {
                        quit();
                    }
                }
            }
            return true;
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10831() {
        this.f20598.getClass();
        RunnableC3728 runnableC3728 = this.f20598;
        runnableC3728.f14513.removeCallbacks(runnableC3728);
        try {
            SurfaceTexture surfaceTexture = runnableC3728.f14515;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, runnableC3728.f14516, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = runnableC3728.f14512;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = runnableC3728.f14512;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = runnableC3728.f14517;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(runnableC3728.f14512, runnableC3728.f14517);
            }
            EGLContext eGLContext = runnableC3728.f14514;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(runnableC3728.f14512, eGLContext);
            }
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay3 = runnableC3728.f14512;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(runnableC3728.f14512);
            }
            runnableC3728.f14512 = null;
            runnableC3728.f14514 = null;
            runnableC3728.f14517 = null;
            runnableC3728.f14515 = null;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10832(int i) {
        EGLSurface eglCreatePbufferSurface;
        this.f20598.getClass();
        RunnableC3728 runnableC3728 = this.f20598;
        int[] iArr = runnableC3728.f14516;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        AbstractC3731.m7869("eglGetDisplay failed", eglGetDisplay != null);
        int[] iArr2 = new int[2];
        AbstractC3731.m7869("eglInitialize failed", EGL14.eglInitialize(eglGetDisplay, iArr2, 0, iArr2, 1));
        runnableC3728.f14512 = eglGetDisplay;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr3 = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, RunnableC3728.f14511, 0, eGLConfigArr, 0, 1, iArr3, 0);
        boolean z = eglChooseConfig && iArr3[0] > 0 && eGLConfigArr[0] != null;
        Object[] objArr = {Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr3[0]), eGLConfigArr[0]};
        String str = AbstractC3712.f14481;
        AbstractC3731.m7869(String.format(Locale.US, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", objArr), z);
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eglCreateContext = EGL14.eglCreateContext(runnableC3728.f14512, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        AbstractC3731.m7869("eglCreateContext failed", eglCreateContext != null);
        runnableC3728.f14514 = eglCreateContext;
        EGLDisplay eGLDisplay = runnableC3728.f14512;
        if (i == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            AbstractC3731.m7869("eglCreatePbufferSurface failed", eglCreatePbufferSurface != null);
        }
        AbstractC3731.m7869("eglMakeCurrent failed", EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext));
        runnableC3728.f14517 = eglCreatePbufferSurface;
        GLES20.glGenTextures(1, iArr, 0);
        AbstractC3731.m7854();
        SurfaceTexture surfaceTexture = new SurfaceTexture(iArr[0]);
        runnableC3728.f14515 = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(runnableC3728);
        SurfaceTexture surfaceTexture2 = this.f20598.f14515;
        surfaceTexture2.getClass();
        this.f20601 = new C5409(this, surfaceTexture2, i != 0);
    }
}
