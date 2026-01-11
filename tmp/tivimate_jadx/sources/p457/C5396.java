package p457;

import android.content.Context;
import android.opengl.GLSurfaceView;
import p421.AbstractC4998;

/* renamed from: ﾞˏ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5396 extends GLSurfaceView implements InterfaceC5394 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f20591 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C5408 f20592;

    public C5396(Context context) {
        super(context, null);
        C5408 c5408 = new C5408(this);
        this.f20592 = c5408;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(c5408);
        setRenderMode(0);
    }

    @Deprecated
    public InterfaceC5394 getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    public void setOutputBuffer(AbstractC4998 abstractC4998) {
        C5408 c5408 = this.f20592;
        if (c5408.f20654.getAndSet(abstractC4998) != null) {
            throw new ClassCastException();
        }
        c5408.f20652.requestRender();
    }
}
