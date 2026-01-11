package p136;

import android.view.ActionMode;
import android.view.SearchEvent;
import android.view.Window;

/* renamed from: ˉʿ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2224 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ActionMode m5227(Window.Callback callback, ActionMode.Callback callback2, int i) {
        return callback.onWindowStartingActionMode(callback2, i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m5228(Window.Callback callback, SearchEvent searchEvent) {
        return callback.onSearchRequested(searchEvent);
    }
}
