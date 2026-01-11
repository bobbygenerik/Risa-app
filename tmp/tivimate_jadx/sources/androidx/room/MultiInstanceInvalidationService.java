package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.LinkedHashMap;
import p035.BinderC1248;
import p035.RemoteCallbackListC1225;

/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f1557;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final LinkedHashMap f1559 = new LinkedHashMap();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final RemoteCallbackListC1225 f1556 = new RemoteCallbackListC1225(this);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final BinderC1248 f1558 = new BinderC1248(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f1558;
    }
}
