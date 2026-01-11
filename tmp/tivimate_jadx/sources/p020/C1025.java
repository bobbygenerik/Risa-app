package p020;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import ʻʿ.ˈ;
import ﹳי.ʽ;

/* renamed from: ʼˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1025 extends InputConnectionWrapper {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ ˈ f4059;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1025(InputConnection inputConnection, ˈ r2) {
        super(inputConnection, false);
        this.f4059 = r2;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        ʽ r0 = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            r0 = new ʽ(new C1027(inputContentInfo));
        }
        if (this.f4059.ᵔʾ(r0, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
