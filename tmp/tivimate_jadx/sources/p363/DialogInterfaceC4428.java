package p363;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import ar.tvplayer.tv.R;
import java.util.WeakHashMap;
import p035.ExecutorC1212;
import p036.DialogC1270;
import p121.AbstractC2026;
import p136.C2220;
import p137.C2295;
import p186.AbstractC2789;
import p186.AbstractC2823;

/* renamed from: ᵔᵢ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceC4428 extends DialogC1270 implements DialogInterface, InterfaceC4422 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public LayoutInflaterFactory2C4430 f16480;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C4435 f16481;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4408 f16482;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v2, types: [ᵔᵢ.ʾˋ] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogInterfaceC4428(android.view.ContextThemeWrapper r5, int r6) {
        /*
            r4 = this;
            int r6 = m8943(r5, r6)
            r0 = 1
            r1 = 2130969078(0x7f0401f6, float:1.7546828E38)
            if (r6 != 0) goto L19
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L1a
        L19:
            r2 = r6
        L1a:
            r4.<init>(r5, r2)
            ᵔᵢ.ʾˋ r2 = new ᵔᵢ.ʾˋ
            r2.<init>()
            r4.f16482 = r2
            ᵔᵢ.ᵔʾ r2 = r4.m8944()
            if (r6 != 0) goto L38
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L38:
            r5 = r2
            ᵔᵢ.ᵢˏ r5 = (p363.LayoutInflaterFactory2C4430) r5
            r5.f16509 = r6
            r2.mo8937()
            ᵔᵢ.ﾞᴵ r5 = new ᵔᵢ.ﾞᴵ
            android.content.Context r6 = r4.getContext()
            android.view.Window r0 = r4.getWindow()
            r5.<init>(r6, r4, r0)
            r4.f16481 = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.DialogInterfaceC4428.<init>(android.view.ContextThemeWrapper, int):void");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m8943(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.461, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // p036.DialogC1270, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3861();
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8944();
        layoutInflaterFactory2C4430.m8951();
        ((ViewGroup) layoutInflaterFactory2C4430.f16523.findViewById(android.R.id.content)).addView(view, layoutParams);
        layoutInflaterFactory2C4430.f16499.m8904(layoutInflaterFactory2C4430.f16530.getCallback());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        m8944().mo8942();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return AbstractC2026.m5038(this.f16482, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8944();
        layoutInflaterFactory2C4430.m8951();
        return layoutInflaterFactory2C4430.f16530.findViewById(i);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8944();
        if (layoutInflaterFactory2C4430.f16500 != null) {
            layoutInflaterFactory2C4430.m8955();
            layoutInflaterFactory2C4430.f16500.getClass();
            layoutInflaterFactory2C4430.m8964(0);
        }
    }

    @Override // p036.DialogC1270, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i;
        ListAdapter listAdapter;
        View findViewById;
        m8945(bundle);
        C4435 c4435 = this.f16481;
        c4435.f16572.setContentView(c4435.f16571);
        Context context = c4435.f16573;
        Window window = c4435.f16548;
        View findViewById2 = window.findViewById(R.id.767);
        View findViewById3 = findViewById2.findViewById(R.id.4ji);
        View findViewById4 = findViewById2.findViewById(R.id.2hs);
        View findViewById5 = findViewById2.findViewById(R.id.f8);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.nj);
        View view = c4435.f16567;
        if (view == null) {
            view = null;
        }
        boolean z = view != null;
        if (!z || !C4435.m8975(view)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.1kk);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (c4435.f16569) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (c4435.f16576 != null) {
                ((LinearLayout.LayoutParams) ((C2295) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R.id.4ji);
        View findViewById7 = viewGroup.findViewById(R.id.2hs);
        View findViewById8 = viewGroup.findViewById(R.id.f8);
        ViewGroup m8974 = C4435.m8974(findViewById6, findViewById3);
        ViewGroup m89742 = C4435.m8974(findViewById7, findViewById4);
        ViewGroup m89743 = C4435.m8974(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.4hr);
        c4435.f16574 = nestedScrollView;
        nestedScrollView.setFocusable(false);
        c4435.f16574.setNestedScrollingEnabled(false);
        TextView textView = (TextView) m89742.findViewById(android.R.id.message);
        c4435.f16544 = textView;
        if (textView != null) {
            CharSequence charSequence = c4435.f16560;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                c4435.f16574.removeView(c4435.f16544);
                if (c4435.f16576 != null) {
                    ViewGroup viewGroup2 = (ViewGroup) c4435.f16574.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(c4435.f16574);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(c4435.f16576, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    m89742.setVisibility(8);
                }
            }
        }
        Button button = (Button) m89743.findViewById(android.R.id.button1);
        c4435.f16546 = button;
        ViewOnClickListenerC0083 viewOnClickListenerC0083 = c4435.f16563;
        button.setOnClickListener(viewOnClickListenerC0083);
        if (TextUtils.isEmpty(c4435.f16553)) {
            c4435.f16546.setVisibility(8);
            i = 0;
        } else {
            c4435.f16546.setText(c4435.f16553);
            c4435.f16546.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) m89743.findViewById(android.R.id.button2);
        c4435.f16575 = button2;
        button2.setOnClickListener(viewOnClickListenerC0083);
        if (TextUtils.isEmpty(c4435.f16556)) {
            c4435.f16575.setVisibility(8);
        } else {
            c4435.f16575.setText(c4435.f16556);
            c4435.f16575.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) m89743.findViewById(android.R.id.button3);
        c4435.f16557 = button3;
        button3.setOnClickListener(viewOnClickListenerC0083);
        if (TextUtils.isEmpty(c4435.f16547)) {
            c4435.f16557.setVisibility(8);
        } else {
            c4435.f16557.setText(c4435.f16547);
            c4435.f16557.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.5rm, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button4 = c4435.f16546;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button5 = c4435.f16575;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button6 = c4435.f16557;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            m89743.setVisibility(8);
        }
        if (c4435.f16562 != null) {
            m8974.addView(c4435.f16562, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.375).setVisibility(8);
        } else {
            c4435.f16559 = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(c4435.f16554) || !c4435.f16566) {
                window.findViewById(R.id.375).setVisibility(8);
                c4435.f16559.setVisibility(8);
                m8974.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.6ak);
                c4435.f16550 = textView2;
                textView2.setText(c4435.f16554);
                Drawable drawable = c4435.f16561;
                if (drawable != null) {
                    c4435.f16559.setImageDrawable(drawable);
                } else {
                    c4435.f16550.setPadding(c4435.f16559.getPaddingLeft(), c4435.f16559.getPaddingTop(), c4435.f16559.getPaddingRight(), c4435.f16559.getPaddingBottom());
                    c4435.f16559.setVisibility(8);
                }
            }
        }
        boolean z2 = viewGroup.getVisibility() != 8;
        int i2 = (m8974 == null || m8974.getVisibility() == 8) ? 0 : 1;
        boolean z3 = m89743.getVisibility() != 8;
        if (!z3 && (findViewById = m89742.findViewById(R.id.2s5)) != null) {
            findViewById.setVisibility(0);
        }
        if (i2 != 0) {
            NestedScrollView nestedScrollView2 = c4435.f16574;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (c4435.f16560 == null && c4435.f16576 == null) ? null : m8974.findViewById(R.id.323);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = m89742.findViewById(R.id.72p);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = c4435.f16576;
        if (alertController$RecycleListView != null) {
            alertController$RecycleListView.getClass();
            if (!z3 || i2 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i2 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f38, alertController$RecycleListView.getPaddingRight(), z3 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f39);
            }
        }
        if (!z2) {
            View view2 = c4435.f16576;
            if (view2 == null) {
                view2 = c4435.f16574;
            }
            if (view2 != null) {
                int i3 = z3 ? 2 : 0;
                View findViewById11 = window.findViewById(R.id.5jf);
                View findViewById12 = window.findViewById(R.id.271);
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                AbstractC2789.m6199(view2, i2 | i3, 3);
                if (findViewById11 != null) {
                    m89742.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    m89742.removeView(findViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = c4435.f16576;
        if (alertController$RecycleListView2 == null || (listAdapter = c4435.f16552) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i4 = c4435.f16545;
        if (i4 > -1) {
            alertController$RecycleListView2.setItemChecked(i4, true);
            alertController$RecycleListView2.setSelection(i4);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f16481.f16574;
        if (nestedScrollView == null || !nestedScrollView.m124(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f16481.f16574;
        if (nestedScrollView == null || !nestedScrollView.m124(keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // p036.DialogC1270, android.app.Dialog
    public final void onStop() {
        super.onStop();
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8944();
        layoutInflaterFactory2C4430.m8955();
        C4425 c4425 = layoutInflaterFactory2C4430.f16500;
        if (c4425 != null) {
            c4425.f16466 = false;
            C2220 c2220 = c4425.f16446;
            if (c2220 != null) {
                c2220.m5209();
            }
        }
    }

    @Override // p036.DialogC1270, android.app.Dialog
    public final void setContentView(int i) {
        m3861();
        m8944().mo8935(i);
    }

    @Override // p036.DialogC1270, android.app.Dialog
    public final void setContentView(View view) {
        m3861();
        m8944().mo8936(view);
    }

    @Override // p036.DialogC1270, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3861();
        m8944().mo8938(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        m8944().mo8941(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        m8946(charSequence);
        C4435 c4435 = this.f16481;
        c4435.f16554 = charSequence;
        TextView textView = c4435.f16550;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC4427 m8944() {
        if (this.f16480 == null) {
            ExecutorC1212 executorC1212 = AbstractC4427.f16472;
            this.f16480 = new LayoutInflaterFactory2C4430(getContext(), getWindow(), this, this);
        }
        return this.f16480;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8945(Bundle bundle) {
        m8944().mo8940();
        super.onCreate(bundle);
        m8944().mo8937();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8946(CharSequence charSequence) {
        super.setTitle(charSequence);
        m8944().mo8941(charSequence);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m8947(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
