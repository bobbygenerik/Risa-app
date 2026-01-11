package p457;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import androidx.media3.common.util.GlUtil$GlException;
import com.parse.ʽˑ;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p305.AbstractC3731;

/* renamed from: ﾞˏ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5408 implements GLSurfaceView.Renderer {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final String[] f20649 = {"y_tex", "u_tex", "v_tex"};

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final FloatBuffer f20650 = AbstractC3731.m7861(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C5396 f20652;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ʽˑ f20655;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int[] f20656 = new int[3];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int[] f20651 = new int[3];

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int[] f20653 = new int[3];

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int[] f20657 = new int[3];

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AtomicReference f20654 = new AtomicReference();

    public C5408(C5396 c5396) {
        this.f20652 = c5396;
        for (int i = 0; i < 3; i++) {
            int[] iArr = this.f20653;
            this.f20657[i] = -1;
            iArr[i] = -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        if (this.f20654.getAndSet(null) != null) {
            throw new ClassCastException();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int[] iArr = this.f20651;
        try {
            ʽˑ r9 = new ʽˑ("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.f20655 = r9;
            GLES20.glVertexAttribPointer(r9.ˊʻ("in_pos"), 2, 5126, false, 0, (Buffer) f20650);
            iArr[0] = this.f20655.ˊʻ("in_tc_y");
            iArr[1] = this.f20655.ˊʻ("in_tc_u");
            iArr[2] = this.f20655.ˊʻ("in_tc_v");
            GLES20.glGetUniformLocation(this.f20655.ᴵˊ, "mColorConversion");
            AbstractC3731.m7854();
            m10837();
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e) {
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10837() {
        int[] iArr = this.f20656;
        try {
            GLES20.glGenTextures(3, iArr, 0);
            for (int i = 0; i < 3; i++) {
                ʽˑ r3 = this.f20655;
                GLES20.glUniform1i(GLES20.glGetUniformLocation(r3.ᴵˊ, f20649[i]), i);
                GLES20.glActiveTexture(33984 + i);
                AbstractC3731.m7865(3553, iArr[i]);
            }
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e) {
        }
    }
}
