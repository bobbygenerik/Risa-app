package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import ar.tvplayer.tv.R;
import p011.C0856;
import p011.C0876;

/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final C0876 f1334;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public Spinner f1335;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final ArrayAdapter f1336;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.2r3);
        this.f1334 = new C0876(0, this);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item);
        this.f1336 = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.f1338;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                arrayAdapter.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo815() {
        super.mo815();
        ArrayAdapter arrayAdapter = this.f1336;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    /* renamed from: ˉˆ */
    public final void mo814() {
        this.f1335.performClick();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔʾ */
    public final void mo813(C0856 c0856) {
        int i;
        CharSequence[] charSequenceArr;
        Spinner spinner = (Spinner) c0856.f10176.findViewById(R.id.4ld);
        this.f1335 = spinner;
        spinner.setAdapter((SpinnerAdapter) this.f1336);
        this.f1335.setOnItemSelectedListener(this.f1334);
        Spinner spinner2 = this.f1335;
        String str = this.f1342;
        if (str != null && (charSequenceArr = this.f1341) != null) {
            i = charSequenceArr.length - 1;
            while (i >= 0) {
                if (TextUtils.equals(charSequenceArr[i].toString(), str)) {
                    break;
                } else {
                    i--;
                }
            }
        }
        i = -1;
        spinner2.setSelection(i);
        super.mo813(c0856);
    }
}
