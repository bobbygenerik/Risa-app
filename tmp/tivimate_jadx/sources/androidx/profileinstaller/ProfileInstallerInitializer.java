package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.view.Choreographer;
import java.util.Collections;
import java.util.List;
import p000.ChoreographerFrameCallbackC0764;
import p166.InterfaceC2601;
import ـˎ.ˈ;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements InterfaceC2601 {
    @Override // p166.InterfaceC2601
    /* renamed from: ⁱˊ */
    public final Object mo412(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new ˈ(3);
        }
        Choreographer.getInstance().postFrameCallback(new ChoreographerFrameCallbackC0764(this, context.getApplicationContext()));
        return new ˈ(3);
    }

    @Override // p166.InterfaceC2601
    /* renamed from: ﹳٴ */
    public final List mo413() {
        return Collections.EMPTY_LIST;
    }
}
