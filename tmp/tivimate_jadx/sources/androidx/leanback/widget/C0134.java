package androidx.leanback.widget;

import android.os.Handler;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.preference.EditTextPreference;
import p053.C1437;

/* renamed from: androidx.leanback.widget.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0134 implements TextView.OnEditorActionListener, InterfaceC0111 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f980;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f981;

    public /* synthetic */ C0134(int i, Object obj) {
        this.f981 = i;
        this.f980 = obj;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        switch (this.f981) {
            case 0:
                C0108 c0108 = (C0108) this.f980;
                if (i == 5 || i == 6) {
                    c0108.f911.m1591(c0108, textView);
                    return true;
                }
                if (i != 1) {
                    return false;
                }
                c0108.f911.m1592(c0108, textView);
                return true;
            case 1:
                SearchBar searchBar = (SearchBar) this.f980;
                Handler handler = searchBar.f738;
                if ((3 == i || i == 0) && searchBar.f719 != null) {
                    searchBar.m551();
                    handler.postDelayed(new RunnableC0110(this, 0), 500L);
                    return true;
                }
                if (1 == i && searchBar.f719 != null) {
                    searchBar.m551();
                    handler.postDelayed(new RunnableC0110(this, 1), 500L);
                    return true;
                }
                if (2 != i) {
                    return false;
                }
                searchBar.m551();
                handler.postDelayed(new RunnableC0110(this, 2), 500L);
                return true;
            default:
                C1437 c1437 = (C1437) this.f980;
                if (i != 6 && i != 2 && i != 3 && i != 5 && i != 4) {
                    return false;
                }
                ((InputMethodManager) c1437.m6803().getSystemService("input_method")).hideSoftInputFromWindow(textView.getWindowToken(), 0);
                ((EditTextPreference) c1437.m4204()).m819(textView.getText().toString());
                c1437.f11917.m6673();
                return true;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean m646(EditText editText, int i, KeyEvent keyEvent) {
        C0108 c0108 = (C0108) this.f980;
        if (i == 4 && keyEvent.getAction() == 1) {
            c0108.f911.m1592(c0108, editText);
            return true;
        }
        if (i != 66 || keyEvent.getAction() != 1) {
            return false;
        }
        c0108.f911.m1591(c0108, editText);
        return true;
    }
}
