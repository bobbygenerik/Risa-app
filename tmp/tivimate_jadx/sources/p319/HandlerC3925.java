package p319;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.internal.measurement.HandlerC0337;

/* renamed from: ᴵˈ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class HandlerC3925 extends HandlerC0337 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C3930 f15192;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f15193;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3925(C3930 c3930, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper(), 3);
        this.f15192 = c3930;
        this.f15193 = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            String str = "Don't know how to handle this message: " + i;
            return;
        }
        int i2 = C3940.f15237;
        C3930 c3930 = this.f15192;
        Context context = this.f15193;
        int m8112 = c3930.m8112(context, i2);
        int i3 = AbstractC3932.f15210;
        if (m8112 == 1 || m8112 == 2 || m8112 == 3 || m8112 == 9) {
            Intent m8113 = c3930.m8113(m8112, context, "n");
            c3930.m8099(context, m8112, m8113 == null ? null : PendingIntent.getActivity(context, 0, m8113, 201326592));
        }
    }
}
