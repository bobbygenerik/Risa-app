package p157;

import android.opengl.GLES20;
import androidx.media3.common.util.GlUtil$GlException;
import com.parse.ʽˑ;
import p004.C0815;

/* renamed from: ˊˊ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2518 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final float[] f9589 = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final float[] f9590 = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final float[] f9591 = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: ʽ, reason: contains not printable characters */
    public ʽˑ f9592;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f9593;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f9594;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f9595;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f9596;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C0815 f9597;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f9598;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f9599;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m5644(C2523 c2523) {
        C2516 c2516 = c2523.f9614;
        C2516 c25162 = c2523.f9613;
        C0815[] c0815Arr = c2516.f9576;
        if (c0815Arr.length == 1 && c0815Arr[0].f3477 == 0) {
            C0815[] c0815Arr2 = c25162.f9576;
            if (c0815Arr2.length == 1 && c0815Arr2[0].f3477 == 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5645() {
        try {
            ʽˑ r0 = new ʽˑ("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f9592 = r0;
            this.f9593 = GLES20.glGetUniformLocation(r0.ᴵˊ, "uMvpMatrix");
            this.f9594 = GLES20.glGetUniformLocation(this.f9592.ᴵˊ, "uTexMatrix");
            this.f9599 = this.f9592.ˊʻ("aPosition");
            this.f9595 = this.f9592.ˊʻ("aTexCoords");
            this.f9596 = GLES20.glGetUniformLocation(this.f9592.ᴵˊ, "uTexture");
        } catch (GlUtil$GlException e) {
        }
    }
}
