package p275;

import android.content.Context;
import android.net.ConnectivityManager;
import com.parse.ˊﾞ;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p087.InterfaceC1745;
import p296.AbstractC3659;
import ˉᵎ.ⁱˊ;

/* renamed from: ـﹶ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3525 implements InterfaceC3503, InterfaceC1745 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f13865;

    public C3525(Context context, int i) {
        switch (i) {
            case 1:
                this.f13865 = context;
                return;
            case 2:
                AbstractC3659.m7687(context);
                Context applicationContext = context.getApplicationContext();
                AbstractC3659.m7687(applicationContext);
                this.f13865 = applicationContext;
                return;
            default:
                this.f13865 = context.getApplicationContext();
                return;
        }
    }

    @Override // p087.InterfaceC1745
    public Object get() {
        return (ConnectivityManager) this.f13865.getSystemService("connectivity");
    }

    @Override // p275.InterfaceC3503
    /* renamed from: ﹳٴ */
    public void mo7447(ⁱˊ r9) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC3523(0, "EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new ˊﾞ(this, r9, threadPoolExecutor, 7));
    }
}
