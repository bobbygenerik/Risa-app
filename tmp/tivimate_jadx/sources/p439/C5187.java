package p439;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
import p364.C4447;
import ᵢ.ﹳٴ;

/* renamed from: ﹶᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5187 implements KeyListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4447 f19501;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final KeyListener f19502;

    public C5187(KeyListener keyListener) {
        C4447 c4447 = new C4447(8);
        this.f19502 = keyListener;
        this.f19501 = c4447;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i) {
        this.f19502.clearMetaKeyState(view, editable, i);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f19502.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        boolean z;
        this.f19501.getClass();
        if (i != 67 ? i != 112 ? false : ﹳٴ.ٴﹶ(editable, keyEvent, true) : ﹳٴ.ٴﹶ(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z = true;
        } else {
            z = false;
        }
        return z || this.f19502.onKeyDown(view, editable, i, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f19502.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.f19502.onKeyUp(view, editable, i, keyEvent);
    }
}
