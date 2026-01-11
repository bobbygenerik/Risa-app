package androidx.leanback.widget;

import android.os.SystemClock;
import android.view.MotionEvent;

/* renamed from: androidx.leanback.widget.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0082 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f838;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ SearchBar f839;

    public /* synthetic */ RunnableC0082(SearchBar searchBar, int i) {
        this.f838 = i;
        this.f839 = searchBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f838) {
            case 0:
                SearchBar searchBar = this.f839;
                searchBar.setSearchQueryInternal(searchBar.f734.getText().toString());
                return;
            default:
                SearchBar searchBar2 = this.f839;
                searchBar2.f734.requestFocusFromTouch();
                searchBar2.f734.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, searchBar2.f734.getWidth(), searchBar2.f734.getHeight(), 0));
                searchBar2.f734.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, searchBar2.f734.getWidth(), searchBar2.f734.getHeight(), 0));
                return;
        }
    }
}
