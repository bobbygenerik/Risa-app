package p319;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p296.AbstractC3659;

/* renamed from: ᴵˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ServiceConnectionC3937 implements ServiceConnection {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f15227 = false;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final LinkedBlockingQueue f15228 = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f15228.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final IBinder m8111() {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        AbstractC3659.m7682("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f15227) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f15227 = true;
        IBinder iBinder = (IBinder) this.f15228.poll(10000L, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }
}
