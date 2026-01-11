package p392;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.bumptech.glide.C0229;
import p283.RunnableC3568;
import p305.C3711;

/* renamed from: ⁱי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4696 extends BroadcastReceiver {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C0229 f17734;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3711 f17735;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SurfaceHolderCallbackC4642 f17736;

    public C4696(C0229 c0229, C3711 c3711, SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642) {
        this.f17734 = c0229;
        this.f17735 = c3711;
        this.f17736 = surfaceHolderCallbackC4642;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f17735.m7750(new RunnableC3568(9, this));
        }
    }
}
