package p151;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.AbstractC0168;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.FragmentC0170;
import androidx.lifecycle.InterfaceC0162;
import p121.AbstractC2026;
import p186.InterfaceC2814;

/* renamed from: ˊʻ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractActivityC2438 extends Activity implements InterfaceC0162, InterfaceC2814 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0184 f9395 = new C0184(this);

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (AbstractC2026.m5035(keyEvent, decorView)) {
            return true;
        }
        return AbstractC2026.m5038(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (AbstractC2026.m5035(keyEvent, getWindow().getDecorView())) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = FragmentC0170.f1058;
        AbstractC0168.m695(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C0184 c0184 = this.f9395;
        c0184.m709("setCurrentState");
        c0184.m711(EnumC0199.f1100);
        super.onSaveInstanceState(bundle);
    }

    @Override // p186.InterfaceC2814
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo5554(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
