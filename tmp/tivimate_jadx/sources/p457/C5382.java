package p457;

import android.os.Handler;
import android.os.Message;
import androidx.media3.exoplayer.ExoPlaybackException;
import p032.InterfaceC1171;
import p305.AbstractC3712;

/* renamed from: ﾞˏ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5382 implements Handler.Callback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Handler f20503;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC5389 f20504;

    public C5382(AbstractC5389 abstractC5389, InterfaceC1171 interfaceC1171) {
        this.f20504 = abstractC5389;
        Handler m7759 = AbstractC3712.m7759(this);
        this.f20503 = m7759;
        interfaceC1171.mo3587(this, m7759);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        int i = message.arg1;
        int i2 = message.arg2;
        String str = AbstractC3712.f14481;
        m10781(((i & 4294967295L) << 32) | (4294967295L & i2));
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10781(long j) {
        AbstractC5389 abstractC5389 = this.f20504;
        if (this != abstractC5389.f20542 || abstractC5389.f4496 == null) {
            return;
        }
        if (j == Long.MAX_VALUE) {
            abstractC5389.f4492 = true;
            return;
        }
        try {
            abstractC5389.m10797(j);
        } catch (ExoPlaybackException e) {
            abstractC5389.f4524 = e;
        }
    }
}
