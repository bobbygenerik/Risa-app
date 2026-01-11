package p011;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.RunnableC0142;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p186.AbstractC2823;
import ᴵˋ.ˊʻ;
import ﹶﾞ.ⁱי;

/* renamed from: ʻᐧ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0867 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final PreferenceGroup f3692;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public ArrayList f3693;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ArrayList f3694;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public ArrayList f3696;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final RunnableC0142 f3691 = new RunnableC0142(7, this);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Handler f3695 = new Handler(Looper.getMainLooper());

    public C0867(PreferenceGroup preferenceGroup) {
        this.f3692 = preferenceGroup;
        preferenceGroup.f1355 = this;
        this.f3693 = new ArrayList();
        this.f3696 = new ArrayList();
        this.f3694 = new ArrayList();
        if (preferenceGroup instanceof PreferenceScreen) {
            m6123(((PreferenceScreen) preferenceGroup).f1395);
        } else {
            m6123(true);
        }
        m3080();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final Preference m3076(int i) {
        if (i < 0 || i >= this.f3696.size()) {
            return null;
        }
        return (Preference) this.f3696.get(i);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ʽ */
    public final int mo607(int i) {
        C0849 c0849 = new C0849(m3076(i));
        ArrayList arrayList = this.f3694;
        int indexOf = arrayList.indexOf(c0849);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = arrayList.size();
        arrayList.add(c0849);
        return size;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m3077(ArrayList arrayList, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.f1394);
        }
        int size = preferenceGroup.f1394.size();
        for (int i = 0; i < size; i++) {
            Preference m852 = preferenceGroup.m852(i);
            arrayList.add(m852);
            C0849 c0849 = new C0849(m852);
            if (!this.f3694.contains(c0849)) {
                this.f3694.add(c0849);
            }
            if (m852 instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) m852;
                if (!(preferenceGroup2 instanceof PreferenceScreen)) {
                    m3077(arrayList, preferenceGroup2);
                }
            }
            m852.f1355 = this;
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [ʻᐧ.ˑﹳ, java.lang.Object, androidx.preference.Preference] */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final ArrayList m3078(PreferenceGroup preferenceGroup) {
        char c;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = preferenceGroup.f1394.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Preference m852 = preferenceGroup.m852(i2);
            if (m852.f1351) {
                int i3 = preferenceGroup.f1387;
                if (i3 == Integer.MAX_VALUE || i < i3) {
                    arrayList.add(m852);
                } else {
                    arrayList2.add(m852);
                }
                if (m852 instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) m852;
                    if (preferenceGroup2 instanceof PreferenceScreen) {
                        continue;
                    } else {
                        if (preferenceGroup.f1387 != Integer.MAX_VALUE && preferenceGroup2.f1387 != Integer.MAX_VALUE) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        ArrayList m3078 = m3078(preferenceGroup2);
                        int size2 = m3078.size();
                        int i4 = 0;
                        while (i4 < size2) {
                            Object obj = m3078.get(i4);
                            i4++;
                            Preference preference = (Preference) obj;
                            int i5 = preferenceGroup.f1387;
                            if (i5 == Integer.MAX_VALUE || i < i5) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i++;
                        }
                    }
                } else {
                    i++;
                }
            }
        }
        int i6 = preferenceGroup.f1387;
        if (i6 != Integer.MAX_VALUE && i > i6) {
            Context context = preferenceGroup.f1350;
            long j = preferenceGroup.f1356;
            CharSequence charSequence = null;
            ?? preference2 = new Preference(context, null);
            preference2.f1362 = R.layout.6rk;
            Context context2 = preference2.f1350;
            preference2.m834(ˊʻ.ﹳᐧ(context2, R.drawable.4o7));
            preference2.f1379 = R.drawable.4o7;
            preference2.m840(context2.getString(R.string.2sc));
            preference2.m843(999);
            ArrayList arrayList3 = new ArrayList();
            int size3 = arrayList2.size();
            int i7 = 0;
            while (i7 < size3) {
                Object obj2 = arrayList2.get(i7);
                i7++;
                Preference preference3 = (Preference) obj2;
                CharSequence charSequence2 = preference3.f1381;
                boolean z = preference3 instanceof PreferenceGroup;
                if (!z || TextUtils.isEmpty(charSequence2)) {
                    c = 0;
                } else {
                    c = 0;
                    arrayList3.add((PreferenceGroup) preference3);
                }
                if (arrayList3.contains(preference3.f1385)) {
                    if (z) {
                        arrayList3.add((PreferenceGroup) preference3);
                    }
                } else if (!TextUtils.isEmpty(charSequence2)) {
                    if (charSequence == null) {
                        charSequence = charSequence2;
                    } else {
                        Object[] objArr = new Object[2];
                        objArr[c] = charSequence;
                        objArr[1] = charSequence2;
                        charSequence = context2.getString(R.string.4f8, objArr);
                    }
                }
            }
            preference2.mo822(charSequence);
            preference2.f3687 = j + 1000000;
            preference2.f1370 = new ⁱי(this, 3, preferenceGroup);
            arrayList.add(preference2);
        }
        return arrayList;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        C0849 c0849 = (C0849) this.f3694.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, AbstractC0869.f3711);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = ˊʻ.ﹳᐧ(viewGroup.getContext(), android.R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(c0849.f3635, viewGroup, false);
        if (inflate.getBackground() == null) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            inflate.setBackground(drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(android.R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = c0849.f3634;
            if (i2 != 0) {
                from.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new C0856(inflate);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m3079(String str) {
        int size = this.f3696.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(str, ((Preference) this.f3696.get(i)).f1353)) {
                return i;
            }
        }
        return -1;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ⁱˊ */
    public final long mo2393(int i) {
        if (this.f10418) {
            return m3076(i).mo838();
        }
        return -1L;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        return this.f3696.size();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m3080() {
        ArrayList arrayList = this.f3693;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Preference) obj).f1355 = null;
        }
        ArrayList arrayList2 = new ArrayList(this.f3693.size());
        this.f3693 = arrayList2;
        PreferenceGroup preferenceGroup = this.f3692;
        m3077(arrayList2, preferenceGroup);
        this.f3696 = m3078(preferenceGroup);
        m6118();
        ArrayList arrayList3 = this.f3693;
        int size2 = arrayList3.size();
        while (i < size2) {
            Object obj2 = arrayList3.get(i);
            i++;
            ((Preference) obj2).getClass();
        }
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public final void mo612(AbstractC2673 abstractC2673, int i) {
        C0856 c0856 = (C0856) abstractC2673;
        Preference m3076 = m3076(i);
        ColorStateList colorStateList = c0856.f3659;
        View view = c0856.f10176;
        Drawable background = view.getBackground();
        Drawable drawable = c0856.f3662;
        if (background != drawable) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            view.setBackground(drawable);
        }
        TextView textView = (TextView) c0856.m3054(android.R.id.title);
        if (textView != null && colorStateList != null && !textView.getTextColors().equals(colorStateList)) {
            textView.setTextColor(colorStateList);
        }
        m3076.mo813(c0856);
    }
}
