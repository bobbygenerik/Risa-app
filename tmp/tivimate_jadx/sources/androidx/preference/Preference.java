package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.RunnableC0142;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import ar.tvplayer.tv.R;
import ar.tvplayer.tv.base.ui.OnOffPreference;
import java.io.Serializable;
import java.util.ArrayList;
import p011.AbstractC0864;
import p011.AbstractC0869;
import p011.C0850;
import p011.C0867;
import p011.InterfaceC0872;
import p011.ViewOnCreateContextMenuListenerC0861;
import p137.AbstractC2305;
import p143.AbstractC2392;
import p152.AbstractC2444;
import ʻʿ.ˈ;
import ʼ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f1346;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final boolean f1347;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f1348;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public ᵎﹶ f1349;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f1350;

    /* renamed from: ʿ, reason: contains not printable characters */
    public boolean f1351;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final boolean f1352;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public String f1353;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final String f1354;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public C0867 f1355;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f1356;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final Object f1357;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f1358;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f1359;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ˈ f1360;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f1361;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public int f1362;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f1363;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public boolean f1364;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public ViewOnCreateContextMenuListenerC0861 f1365;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public Bundle f1366;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f1367;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final int f1368;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public CharSequence f1369;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ⁱי f1370;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public InterfaceC0872 f1371;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final boolean f1372;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final boolean f1373;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final boolean f1374;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C0850 f1375;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f1376;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f1377;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final ViewOnClickListenerC0083 f1378;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f1379;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final boolean f1380;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public CharSequence f1381;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public Drawable f1382;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public Intent f1383;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final String f1384;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public PreferenceGroup f1385;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public ArrayList f1386;

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, AbstractC2392.m5495(context, R.attr.2r9, android.R.attr.preferenceStyle), 0);
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1359 = Integer.MAX_VALUE;
        this.f1363 = true;
        this.f1361 = true;
        this.f1367 = true;
        this.f1376 = true;
        this.f1358 = true;
        this.f1351 = true;
        this.f1352 = true;
        this.f1380 = true;
        this.f1372 = true;
        this.f1347 = true;
        this.f1362 = R.layout.4h4;
        this.f1378 = new ViewOnClickListenerC0083(3, this);
        this.f1350 = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3708, i, i2);
        this.f1379 = obtainStyledAttributes.getResourceId(23, obtainStyledAttributes.getResourceId(0, 0));
        String string = obtainStyledAttributes.getString(26);
        this.f1353 = string == null ? obtainStyledAttributes.getString(6) : string;
        CharSequence text = obtainStyledAttributes.getText(34);
        this.f1381 = text == null ? obtainStyledAttributes.getText(4) : text;
        CharSequence text2 = obtainStyledAttributes.getText(33);
        this.f1369 = text2 == null ? obtainStyledAttributes.getText(7) : text2;
        this.f1359 = obtainStyledAttributes.getInt(28, obtainStyledAttributes.getInt(8, Integer.MAX_VALUE));
        String string2 = obtainStyledAttributes.getString(22);
        this.f1354 = string2 == null ? obtainStyledAttributes.getString(13) : string2;
        this.f1362 = obtainStyledAttributes.getResourceId(27, obtainStyledAttributes.getResourceId(3, R.layout.4h4));
        this.f1368 = obtainStyledAttributes.getResourceId(35, obtainStyledAttributes.getResourceId(9, 0));
        this.f1363 = obtainStyledAttributes.getBoolean(21, obtainStyledAttributes.getBoolean(2, true));
        this.f1361 = obtainStyledAttributes.getBoolean(30, obtainStyledAttributes.getBoolean(5, true));
        this.f1367 = obtainStyledAttributes.getBoolean(29, obtainStyledAttributes.getBoolean(1, true));
        String string3 = obtainStyledAttributes.getString(19);
        this.f1384 = string3 == null ? obtainStyledAttributes.getString(10) : string3;
        this.f1352 = obtainStyledAttributes.getBoolean(16, obtainStyledAttributes.getBoolean(16, this.f1361));
        this.f1380 = obtainStyledAttributes.getBoolean(17, obtainStyledAttributes.getBoolean(17, this.f1361));
        if (obtainStyledAttributes.hasValue(18)) {
            this.f1357 = mo820(obtainStyledAttributes, 18);
        } else if (obtainStyledAttributes.hasValue(11)) {
            this.f1357 = mo820(obtainStyledAttributes, 11);
        }
        this.f1347 = obtainStyledAttributes.getBoolean(31, obtainStyledAttributes.getBoolean(12, true));
        boolean hasValue = obtainStyledAttributes.hasValue(32);
        this.f1373 = hasValue;
        if (hasValue) {
            this.f1372 = obtainStyledAttributes.getBoolean(32, obtainStyledAttributes.getBoolean(14, true));
        }
        this.f1364 = obtainStyledAttributes.getBoolean(24, obtainStyledAttributes.getBoolean(15, false));
        this.f1351 = obtainStyledAttributes.getBoolean(25, obtainStyledAttributes.getBoolean(25, true));
        this.f1374 = obtainStyledAttributes.getBoolean(20, obtainStyledAttributes.getBoolean(20, false));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m827(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                m827(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i = this.f1359;
        int i2 = preference2.f1359;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.f1381;
        CharSequence charSequence2 = preference2.f1381;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.f1381.toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.f1381;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence mo825 = mo825();
        if (!TextUtils.isEmpty(mo825)) {
            sb.append(mo825);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m828(String str) {
        if (m841() && !TextUtils.equals(str, m847(null))) {
            ᵎﹶ m842 = m842();
            if (m842 != null) {
                m842.ʽʽ(this.f1353, str);
                return;
            }
            SharedPreferences.Editor m3048 = this.f1375.m3048();
            m3048.putString(this.f1353, str);
            if (this.f1375.f3640) {
                return;
            }
            m3048.apply();
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void m829(String str) {
        this.f1353 = str;
        if (this.f1348 && TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(this.f1353)) {
                throw new IllegalStateException("Preference does not have a key assigned.");
            }
            this.f1348 = true;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean mo830() {
        return this.f1363 && this.f1376 && this.f1358;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void mo831() {
        m837();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo832(Bundle bundle) {
        if (TextUtils.isEmpty(this.f1353)) {
            return;
        }
        this.f1346 = false;
        Parcelable mo818 = mo818();
        if (!this.f1346) {
            throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
        }
        if (mo818 != null) {
            bundle.putParcelable(this.f1353, mo818);
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m833(boolean z) {
        if (this.f1351 != z) {
            this.f1351 = z;
            C0867 c0867 = this.f1355;
            if (c0867 != null) {
                Handler handler = c0867.f3695;
                RunnableC0142 runnableC0142 = c0867.f3691;
                handler.removeCallbacks(runnableC0142);
                handler.post(runnableC0142);
            }
        }
    }

    /* renamed from: ʽﹳ */
    public void mo811(View view) {
        Intent intent;
        AbstractC0864 abstractC0864;
        if (mo830() && this.f1361) {
            mo814();
            ⁱי r3 = this.f1370;
            if (r3 != null) {
                ((PreferenceGroup) r3.ᴵˊ).f1387 = Integer.MAX_VALUE;
                C0867 c0867 = (C0867) r3.ʽʽ;
                Handler handler = c0867.f3695;
                RunnableC0142 runnableC0142 = c0867.f3691;
                handler.removeCallbacks(runnableC0142);
                handler.post(runnableC0142);
                return;
            }
            C0850 c0850 = this.f1375;
            if ((c0850 == null || (abstractC0864 = c0850.f3642) == null || !abstractC0864.m3065(this)) && (intent = this.f1383) != null) {
                this.f1350.startActivity(intent);
            }
        }
    }

    /* renamed from: ʾˋ */
    public void mo822(CharSequence charSequence) {
        if (this.f1371 != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        }
        if (TextUtils.equals(this.f1369, charSequence)) {
            return;
        }
        this.f1369 = charSequence;
        mo815();
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m834(Drawable drawable) {
        if (this.f1382 != drawable) {
            this.f1382 = drawable;
            this.f1379 = 0;
            mo815();
        }
    }

    /* renamed from: ˆʾ */
    public void mo815() {
        int indexOf;
        C0867 c0867 = this.f1355;
        if (c0867 == null || (indexOf = c0867.f3696.indexOf(this)) == -1) {
            return;
        }
        c0867.f10419.m6057(indexOf, 1, this);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Bundle m835() {
        if (this.f1366 == null) {
            this.f1366 = new Bundle();
        }
        return this.f1366;
    }

    /* renamed from: ˈٴ */
    public boolean mo816() {
        return !mo830();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m836(C0850 c0850) {
        this.f1375 = c0850;
        if (!this.f1377) {
            this.f1356 = c0850.m3046();
        }
        ᵎﹶ m842 = m842();
        Object obj = this.f1357;
        if (m842 != null) {
            mo817(obj);
            return;
        }
        if (m841()) {
            if (((this.f1375 == null || m842() != null) ? null : this.f1375.m3047()).contains(this.f1353)) {
                mo817(null);
                return;
            }
        }
        if (obj != null) {
            mo817(obj);
        }
    }

    /* renamed from: ˉˆ */
    public void mo814() {
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m837() {
        ArrayList arrayList;
        PreferenceScreen preferenceScreen;
        String str = this.f1384;
        if (str != null) {
            C0850 c0850 = this.f1375;
            Preference preference = null;
            if (c0850 != null && (preferenceScreen = c0850.f3641) != null) {
                preference = preferenceScreen.m848(str);
            }
            if (preference == null || (arrayList = preference.f1386) == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    /* renamed from: ˏי */
    public void mo817(Object obj) {
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long mo838() {
        return this.f1356;
    }

    /* renamed from: יـ */
    public Parcelable mo818() {
        this.f1346 = true;
        return AbsSavedState.EMPTY_STATE;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void mo839(boolean z) {
        ArrayList arrayList = this.f1386;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Preference preference = (Preference) arrayList.get(i);
            if (preference.f1376 == z) {
                preference.f1376 = !z;
                preference.mo839(preference.mo816());
                preference.mo815();
            }
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m840(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f1381)) {
            return;
        }
        this.f1381 = charSequence;
        mo815();
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean m841() {
        return (this.f1375 == null || !this.f1367 || TextUtils.isEmpty(this.f1353)) ? false : true;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ᵎﹶ m842() {
        ᵎﹶ r0 = this.f1349;
        if (r0 != null) {
            return r0;
        }
        C0850 c0850 = this.f1375;
        if (c0850 != null) {
            c0850.getClass();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /* renamed from: ᵔʾ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo813(p011.C0856 r9) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.mo813(ʻᐧ.ʾˋ):void");
    }

    /* renamed from: ᵔᵢ */
    public CharSequence mo825() {
        InterfaceC0872 interfaceC0872 = this.f1371;
        return interfaceC0872 != null ? interfaceC0872.m3081(this) : this.f1369;
    }

    /* renamed from: ᵔﹳ */
    public Object mo820(TypedArray typedArray, int i) {
        return null;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m843(int i) {
        if (i != this.f1359) {
            this.f1359 = i;
            C0867 c0867 = this.f1355;
            if (c0867 != null) {
                Handler handler = c0867.f3695;
                RunnableC0142 runnableC0142 = c0867.f3691;
                handler.removeCallbacks(runnableC0142);
                handler.post(runnableC0142);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo844(Bundle bundle) {
        Parcelable parcelable;
        if (TextUtils.isEmpty(this.f1353) || (parcelable = bundle.getParcelable(this.f1353)) == null) {
            return;
        }
        this.f1346 = false;
        mo821(parcelable);
        if (!this.f1346) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m845(Serializable serializable) {
        ˈ r0 = this.f1360;
        if (r0 != null) {
            OnOffPreference onOffPreference = (OnOffPreference) r0.ᴵˊ;
            onOffPreference.m840(onOffPreference.f1350.getString(AbstractC2444.m5562(serializable, Boolean.TRUE) ? R.string.on : R.string.off));
        }
    }

    /* renamed from: ﹳᐧ */
    public void mo821(Parcelable parcelable) {
        this.f1346 = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void mo846() {
        PreferenceScreen preferenceScreen;
        String str = this.f1384;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        C0850 c0850 = this.f1375;
        Preference preference = null;
        if (c0850 != null && (preferenceScreen = c0850.f3641) != null) {
            preference = preferenceScreen.m848(str);
        }
        if (preference == null) {
            StringBuilder m5370 = AbstractC2305.m5370("Dependency \"", str, "\" not found for preference \"");
            m5370.append(this.f1353);
            m5370.append("\" (title: \"");
            m5370.append((Object) this.f1381);
            m5370.append("\"");
            throw new IllegalStateException(m5370.toString());
        }
        if (preference.f1386 == null) {
            preference.f1386 = new ArrayList();
        }
        preference.f1386.add(this);
        boolean mo816 = preference.mo816();
        if (this.f1376 == mo816) {
            this.f1376 = !mo816;
            mo839(mo816());
            mo815();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m847(String str) {
        if (!m841()) {
            return str;
        }
        ᵎﹶ m842 = m842();
        return m842 != null ? m842.ʻٴ(this.f1353, str) : this.f1375.m3047().getString(this.f1353, str);
    }
}
