package p011;

import android.view.View;
import android.widget.AdapterView;
import androidx.preference.DropDownPreference;
import p137.C2249;
import p137.C2254;

/* renamed from: ʻᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0876 implements AdapterView.OnItemSelectedListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3726;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f3727;

    public /* synthetic */ C0876(int i, Object obj) {
        this.f3726 = i;
        this.f3727 = obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m3083(AdapterView adapterView) {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m3084(AdapterView adapterView) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        C2249 c2249;
        switch (this.f3726) {
            case 0:
                DropDownPreference dropDownPreference = (DropDownPreference) this.f3727;
                if (i >= 0) {
                    String charSequence = dropDownPreference.f1341[i].toString();
                    if (charSequence.equals(dropDownPreference.f1342)) {
                        return;
                    }
                    dropDownPreference.m845(charSequence);
                    dropDownPreference.m823(charSequence);
                    return;
                }
                return;
            default:
                if (i == -1 || (c2249 = ((C2254) this.f3727).f8832) == null) {
                    return;
                }
                c2249.setListSelectionHidden(false);
                return;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i = this.f3726;
    }
}
