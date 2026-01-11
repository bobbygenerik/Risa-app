package p279;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.util.Log;
import java.util.concurrent.Executor;
import p059.C1520;
import p319.C3934;

/* renamed from: ٴʽ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3556 implements InterfaceC3546 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Executor f13902 = AsyncTask.SERIAL_EXECUTOR;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3934 f13903;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile boolean f13904;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public volatile boolean f13905;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3551 f13906;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f13907;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1520 f13908 = new C1520(2, this);

    public C3556(Context context, C3934 c3934, C3551 c3551) {
        this.f13907 = context.getApplicationContext();
        this.f13903 = c3934;
        this.f13906 = c3551;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m7499() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f13903.get()).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            return Log.isLoggable("ConnectivityMonitor", 5) ? true : true;
        }
    }

    @Override // p279.InterfaceC3546
    /* renamed from: ⁱˊ */
    public final boolean mo7494() {
        f13902.execute(new RunnableC3553(this, 0));
        return true;
    }

    @Override // p279.InterfaceC3546
    /* renamed from: ﹳٴ */
    public final void mo7495() {
        f13902.execute(new RunnableC3553(this, 1));
    }
}
