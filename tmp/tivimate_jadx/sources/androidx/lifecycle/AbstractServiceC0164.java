package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;

/* renamed from: androidx.lifecycle.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractServiceC0164 extends Service implements InterfaceC0162 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ˑי.ʽ f1051;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˑי.ʽ] */
    public AbstractServiceC0164() {
        ?? obj = new Object();
        ((ˑי.ʽ) obj).ʾˋ = new C0184(this);
        ((ˑי.ʽ) obj).ᴵˊ = new Handler(Looper.getMainLooper());
        this.f1051 = obj;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        this.f1051.ʾˋ(EnumC0174.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f1051.ʾˋ(EnumC0174.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        EnumC0174 enumC0174 = EnumC0174.ON_STOP;
        ˑי.ʽ r1 = this.f1051;
        r1.ʾˋ(enumC0174);
        r1.ʾˋ(EnumC0174.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        this.f1051.ʾˋ(EnumC0174.ON_START);
        super.onStart(intent, i);
    }

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        return (C0184) this.f1051.ʾˋ;
    }
}
