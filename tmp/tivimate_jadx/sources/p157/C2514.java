package p157;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p003.RunnableC0786;

/* renamed from: ˊˊ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2514 implements GLSurfaceView.Renderer, InterfaceC2513 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2512 f9559;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final float[] f9560;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public float f9561;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final float[] f9562;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public float f9564;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final float[] f9566;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final /* synthetic */ C2517 f9567;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final float[] f9565 = new float[16];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final float[] f9558 = new float[16];

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final float[] f9568 = new float[16];

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final float[] f9563 = new float[16];

    public C2514(C2517 c2517, C2512 c2512) {
        this.f9567 = c2517;
        float[] fArr = new float[16];
        this.f9560 = fArr;
        float[] fArr2 = new float[16];
        this.f9566 = fArr2;
        float[] fArr3 = new float[16];
        this.f9562 = fArr3;
        this.f9559 = c2512;
        Matrix.setIdentityM(fArr, 0);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.setIdentityM(fArr3, 0);
        this.f9561 = 3.1415927f;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            Matrix.multiplyMM(this.f9563, 0, this.f9560, 0, this.f9562, 0);
            Matrix.multiplyMM(this.f9568, 0, this.f9566, 0, this.f9563, 0);
        }
        Matrix.multiplyMM(this.f9558, 0, this.f9565, 0, this.f9568, 0);
        this.f9559.m5640(this.f9558);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
        float f = i / i2;
        Matrix.perspectiveM(this.f9565, 0, f > 1.0f ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f)) * 2.0d) : 90.0f, f, 0.1f, 100.0f);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        C2517 c2517 = this.f9567;
        c2517.f9586.post(new RunnableC0786(c2517, 15, this.f9559.m5639()));
    }

    @Override // p157.InterfaceC2513
    /* renamed from: ﹳٴ */
    public final synchronized void mo5642(float[] fArr, float f) {
        float[] fArr2 = this.f9560;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        float f2 = -f;
        this.f9561 = f2;
        Matrix.setRotateM(this.f9566, 0, -this.f9564, (float) Math.cos(f2), (float) Math.sin(this.f9561), 0.0f);
    }
}
