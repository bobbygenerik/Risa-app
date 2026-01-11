package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import androidx.leanback.widget.RunnableC0142;
import java.util.ArrayList;
import java.util.Collections;
import p011.AbstractC0869;
import p011.C0850;
import p011.C0855;
import p011.C0867;
import p255.C3368;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public int f1387;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final Handler f1388;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public int f1389;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final RunnableC0142 f1390;

    /* renamed from: ˑ, reason: contains not printable characters */
    public boolean f1391;

    /* renamed from: י, reason: contains not printable characters */
    public boolean f1392;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final C3368 f1393;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final ArrayList f1394;

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, 0);
        this.f1393 = new C3368(0);
        this.f1388 = new Handler(Looper.getMainLooper());
        this.f1392 = true;
        this.f1389 = 0;
        this.f1391 = false;
        this.f1387 = Integer.MAX_VALUE;
        this.f1390 = new RunnableC0142(6, this);
        this.f1394 = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3701, i, 0);
        this.f1392 = obtainStyledAttributes.getBoolean(2, obtainStyledAttributes.getBoolean(2, true));
        if (obtainStyledAttributes.hasValue(1)) {
            int i3 = obtainStyledAttributes.getInt(1, obtainStyledAttributes.getInt(1, Integer.MAX_VALUE));
            if (i3 != Integer.MAX_VALUE && TextUtils.isEmpty(this.f1353)) {
                getClass().getSimpleName().concat(" should have a key defined if it contains an expandable preference");
            }
            this.f1387 = i3;
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʼᐧ */
    public final void mo831() {
        m837();
        this.f1391 = false;
        int size = this.f1394.size();
        for (int i = 0; i < size; i++) {
            m852(i).mo831();
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʽ */
    public final void mo832(Bundle bundle) {
        super.mo832(bundle);
        int size = this.f1394.size();
        for (int i = 0; i < size; i++) {
            m852(i).mo832(bundle);
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Preference m848(CharSequence charSequence) {
        Preference m848;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(this.f1353, charSequence)) {
            return this;
        }
        int size = this.f1394.size();
        for (int i = 0; i < size; i++) {
            Preference m852 = m852(i);
            if (TextUtils.equals(m852.f1353, charSequence)) {
                return m852;
            }
            if ((m852 instanceof PreferenceGroup) && (m848 = ((PreferenceGroup) m852).m848(charSequence)) != null) {
                return m848;
            }
        }
        return null;
    }

    @Override // androidx.preference.Preference
    /* renamed from: יـ */
    public final Parcelable mo818() {
        super.mo818();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        return new C0855(this.f1387);
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m849() {
        synchronized (this) {
            try {
                ArrayList arrayList = this.f1394;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    m851((Preference) arrayList.get(0));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C0867 c0867 = this.f1355;
        if (c0867 != null) {
            Handler handler = c0867.f3695;
            RunnableC0142 runnableC0142 = c0867.f3691;
            handler.removeCallbacks(runnableC0142);
            handler.post(runnableC0142);
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m850(Preference preference) {
        long m3046;
        if (this.f1394.contains(preference)) {
            return;
        }
        if (preference.f1353 != null) {
            PreferenceGroup preferenceGroup = this;
            while (true) {
                PreferenceGroup preferenceGroup2 = preferenceGroup.f1385;
                if (preferenceGroup2 == null) {
                    break;
                } else {
                    preferenceGroup = preferenceGroup2;
                }
            }
            String str = preference.f1353;
            if (preferenceGroup.m848(str) != null) {
                String str2 = "Found duplicated key: \"" + str + "\". This can cause unintended behaviour, please use unique keys for every preference.";
            }
        }
        if (preference.f1359 == Integer.MAX_VALUE) {
            if (this.f1392) {
                int i = this.f1389;
                this.f1389 = i + 1;
                preference.m843(i);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).f1392 = this.f1392;
            }
        }
        int binarySearch = Collections.binarySearch(this.f1394, preference);
        if (binarySearch < 0) {
            binarySearch = (binarySearch * (-1)) - 1;
        }
        boolean mo816 = mo816();
        if (preference.f1358 == mo816) {
            preference.f1358 = !mo816;
            preference.mo839(preference.mo816());
            preference.mo815();
        }
        synchronized (this) {
            this.f1394.add(binarySearch, preference);
        }
        C0850 c0850 = this.f1375;
        String str3 = preference.f1353;
        if (str3 == null || !this.f1393.containsKey(str3)) {
            m3046 = c0850.m3046();
        } else {
            m3046 = ((Long) this.f1393.get(str3)).longValue();
            this.f1393.remove(str3);
        }
        preference.f1356 = m3046;
        preference.f1377 = true;
        try {
            preference.m836(c0850);
            preference.f1377 = false;
            if (preference.f1385 != null) {
                throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
            }
            preference.f1385 = this;
            if (this.f1391) {
                preference.mo846();
            }
            C0867 c0867 = this.f1355;
            if (c0867 != null) {
                Handler handler = c0867.f3695;
                RunnableC0142 runnableC0142 = c0867.f3691;
                handler.removeCallbacks(runnableC0142);
                handler.post(runnableC0142);
            }
        } catch (Throwable th) {
            preference.f1377 = false;
            throw th;
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ٴﹶ */
    public final void mo839(boolean z) {
        super.mo839(z);
        int size = this.f1394.size();
        for (int i = 0; i < size; i++) {
            Preference m852 = m852(i);
            if (m852.f1358 == z) {
                m852.f1358 = !z;
                m852.mo839(m852.mo816());
                m852.mo815();
            }
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final boolean m851(Preference preference) {
        boolean remove;
        synchronized (this) {
            try {
                preference.m837();
                if (preference.f1385 == this) {
                    preference.f1385 = null;
                }
                remove = this.f1394.remove(preference);
                if (remove) {
                    String str = preference.f1353;
                    if (str != null) {
                        this.f1393.put(str, Long.valueOf(preference.mo838()));
                        this.f1388.removeCallbacks(this.f1390);
                        this.f1388.post(this.f1390);
                    }
                    if (this.f1391) {
                        preference.mo831();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return remove;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Preference m852(int i) {
        return (Preference) this.f1394.get(i);
    }

    @Override // androidx.preference.Preference
    /* renamed from: ⁱˊ */
    public final void mo844(Bundle bundle) {
        super.mo844(bundle);
        int size = this.f1394.size();
        for (int i = 0; i < size; i++) {
            m852(i).mo844(bundle);
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﹳᐧ */
    public final void mo821(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0855.class)) {
            super.mo821(parcelable);
            return;
        }
        C0855 c0855 = (C0855) parcelable;
        this.f1387 = c0855.f3657;
        super.mo821(c0855.getSuperState());
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﾞʻ */
    public final void mo846() {
        super.mo846();
        this.f1391 = true;
        int size = this.f1394.size();
        for (int i = 0; i < size; i++) {
            m852(i).mo846();
        }
    }
}
