package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.leanback.app.C0069;
import ar.tvplayer.tv.R;
import com.google.android.gms.internal.measurement.C0344;
import java.util.ArrayList;
import java.util.List;
import p035.AbstractC1220;
import p076.AbstractC1659;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p179.AbstractC2741;

/* renamed from: androidx.leanback.widget.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0108 extends AbstractC2727 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C0094 f908;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ArrayList f909;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final VerticalGridView f910;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C0344 f911;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final ViewOnClickListenerC0083 f912 = new ViewOnClickListenerC0083(0, this);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f913;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final InterfaceC0136 f914;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ViewOnFocusChangeListenerC0089 f915;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C0140 f916;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C0134 f917;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C0117 f918;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ViewOnKeyListenerC0103 f919;

    public C0108(ArrayList arrayList, InterfaceC0136 interfaceC0136, C0069 c0069, C0117 c0117, boolean z) {
        this.f909 = arrayList == null ? new ArrayList() : new ArrayList(arrayList);
        this.f914 = interfaceC0136;
        this.f918 = c0117;
        this.f919 = new ViewOnKeyListenerC0103(this);
        this.f915 = new ViewOnFocusChangeListenerC0089(this, c0069);
        this.f917 = new C0134(0, this);
        this.f908 = new C0094(this);
        this.f913 = z;
        if (!z) {
            this.f916 = C0140.f994;
        }
        this.f910 = z ? c0117.f931 : c0117.f944;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m606(EditText editText) {
        if (editText != 0) {
            editText.setPrivateImeOptions("escapeNorth");
            C0134 c0134 = this.f917;
            editText.setOnEditorActionListener(c0134);
            if (editText instanceof InterfaceC0109) {
                ((InterfaceC0109) editText).setImeKeyListener(c0134);
            }
            if (editText instanceof InterfaceC0107) {
                ((InterfaceC0107) editText).setOnAutofillListener(this.f908);
            }
        }
    }

    @Override // p179.AbstractC2727
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo607(int i) {
        this.f918.getClass();
        return 0;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m608(List list) {
        if (!this.f913) {
            this.f918.m620(false);
        }
        ViewOnFocusChangeListenerC0089 viewOnFocusChangeListenerC0089 = this.f915;
        C0108 c0108 = viewOnFocusChangeListenerC0089.f844;
        View view = viewOnFocusChangeListenerC0089.f845;
        if (view != null) {
            VerticalGridView verticalGridView = c0108.f910;
            if (verticalGridView.f1499) {
                AbstractC2673 m946 = verticalGridView.m946(view);
                if (m946 != null) {
                    c0108.f918.getClass();
                } else {
                    new Throwable();
                }
            }
        }
        C0140 c0140 = this.f916;
        ArrayList arrayList = this.f909;
        if (c0140 == null) {
            arrayList.clear();
            arrayList.addAll(list);
            m6118();
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(arrayList);
            arrayList.clear();
            arrayList.addAll(list);
            AbstractC2741.m6138(new C0147(this, arrayList2)).m6030(new ˉˆ.ʿ(8, this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.view.View] */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C0101 m609(TextView textView) {
        VerticalGridView verticalGridView = this.f910;
        if (!verticalGridView.f1499) {
            return null;
        }
        ViewParent parent = textView.getParent();
        TextView textView2 = textView;
        while (parent != verticalGridView && parent != null) {
            ?? r3 = (View) parent;
            parent = parent.getParent();
            textView2 = r3;
        }
        if (parent != null) {
            return (C0101) verticalGridView.m946(textView2);
        }
        return null;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        int i2;
        C0101 c0101;
        C0117 c0117 = this.f918;
        if (i == 0) {
            c0101 = c0117.m615(viewGroup);
        } else {
            c0117.getClass();
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            if (i == 0) {
                i2 = c0117.m621();
            } else {
                if (i != 1) {
                    throw new RuntimeException(AbstractC1220.m3773(i, "ViewType ", " not supported in GuidedActionsStylist"));
                }
                i2 = R.layout.7dp;
            }
            c0101 = new C0101(from.inflate(i2, viewGroup, false), viewGroup == c0117.f931);
        }
        View view = c0101.f10176;
        view.setOnKeyListener(this.f919);
        view.setOnClickListener(this.f912);
        view.setOnFocusChangeListener(this.f915);
        TextView textView = c0101.f894;
        m606(textView instanceof EditText ? (EditText) textView : null);
        TextView textView2 = c0101.f889;
        m606(textView2 instanceof EditText ? (EditText) textView2 : null);
        return c0101;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo611() {
        return this.f909.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo612(AbstractC2673 abstractC2673, int i) {
        ArrayList arrayList = this.f909;
        if (i >= arrayList.size()) {
            return;
        }
        C0101 c0101 = (C0101) abstractC2673;
        TextView textView = c0101.f894;
        TextView textView2 = c0101.f889;
        C0095 c0095 = (C0095) arrayList.get(i);
        C0117 c0117 = this.f918;
        c0117.getClass();
        c0101.f896 = c0095;
        View view = c0101.f10176;
        if (textView != null) {
            textView.setInputType(c0095.f870);
            textView.setText(c0095.f871);
            textView.setAlpha(c0095.m580() ? c0117.f940 : c0117.f942);
            textView.setFocusable(false);
            textView.setClickable(false);
            textView.setLongClickable(false);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                if (c0095.m579()) {
                    AbstractC1659.m4531(textView);
                } else {
                    AbstractC1659.m4531(textView);
                }
            } else if (i2 >= 26) {
                AbstractC1659.m4535(textView);
            }
        }
        if (textView2 != null) {
            textView2.setInputType(c0095.f872);
            textView2.setText(c0095.f873);
            textView2.setVisibility(TextUtils.isEmpty(c0095.f873) ? 8 : 0);
            textView2.setAlpha(c0095.m580() ? c0117.f929 : c0117.f932);
            textView2.setFocusable(false);
            textView2.setClickable(false);
            textView2.setLongClickable(false);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28) {
                if (c0095.f878 == 2) {
                    AbstractC1659.m4531(textView2);
                } else {
                    AbstractC1659.m4531(textView2);
                }
            } else if (i3 >= 26) {
                AbstractC1659.m4535(textView);
            }
        }
        ImageView imageView = c0101.f895;
        if (imageView != 0) {
            if (c0095.f874 != 0) {
                imageView.setVisibility(0);
                int i4 = c0095.f874 == -1 ? android.R.attr.listChoiceIndicatorMultiple : android.R.attr.listChoiceIndicatorSingle;
                Context context = imageView.getContext();
                TypedValue typedValue = new TypedValue();
                imageView.setImageDrawable(context.getTheme().resolveAttribute(i4, typedValue, true) ? context.getDrawable(typedValue.resourceId) : null);
                if (imageView instanceof Checkable) {
                    ((Checkable) imageView).setChecked(c0095.m584());
                }
            } else {
                imageView.setVisibility(8);
            }
        }
        ImageView imageView2 = c0101.f887;
        if (imageView2 != null) {
            Drawable drawable = c0095.f879;
            if (drawable != null) {
                imageView2.setImageLevel(drawable.getLevel());
                imageView2.setImageDrawable(drawable);
                imageView2.setVisibility(0);
            } else {
                imageView2.setVisibility(8);
            }
        }
        if ((c0095.f875 & 2) != 2) {
            if (textView != null) {
                int i5 = c0117.f934;
                if (i5 == 1) {
                    textView.setSingleLine(true);
                } else {
                    textView.setSingleLine(false);
                    textView.setMaxLines(i5);
                }
            }
            if (textView2 != null) {
                int i6 = c0117.f935;
                if (i6 == 1) {
                    textView2.setSingleLine(true);
                } else {
                    textView2.setSingleLine(false);
                    textView2.setMaxLines(i6);
                }
            }
        } else if (textView != null) {
            int i7 = c0117.f941;
            if (i7 == 1) {
                textView.setSingleLine(true);
            } else {
                textView.setSingleLine(false);
                textView.setMaxLines(i7);
            }
            textView.setInputType(textView.getInputType() | 131072);
            if (textView2 != null) {
                textView2.setInputType(textView2.getInputType() | 131072);
                textView2.setMaxHeight((c0117.f943 - (c0117.f930 * 2)) - (textView.getLineHeight() * (c0117.f941 * 2)));
            }
        }
        c0117.m617(c0101, false, false);
        if ((c0095.f875 & 32) == 32) {
            view.setFocusable(true);
            ((ViewGroup) view).setDescendantFocusability(131072);
        } else {
            view.setFocusable(false);
            ((ViewGroup) view).setDescendantFocusability(393216);
        }
        EditText editText = textView instanceof EditText ? (EditText) textView : null;
        if (editText != null) {
            editText.setImeOptions(5);
        }
        EditText editText2 = textView2 instanceof EditText ? (EditText) textView2 : null;
        if (editText2 != null) {
            editText2.setImeOptions(5);
        }
        c0117.m613(c0101);
    }
}
