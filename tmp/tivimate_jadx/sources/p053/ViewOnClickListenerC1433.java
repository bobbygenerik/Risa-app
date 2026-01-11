package p053;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.TextView;
import androidx.preference.ListPreference;
import androidx.preference.MultiSelectListPreference;
import ar.tvplayer.tv.R;
import java.util.HashSet;
import p179.AbstractC2673;
import p179.AbstractC2727;

/* renamed from: ʽᵔ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1433 extends AbstractC2673 implements View.OnClickListener {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final TextView f5600;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final AbstractC2727 f5601;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Checkable f5602;

    public ViewOnClickListenerC1433(View view, C1432 c1432) {
        super(view);
        this.f5602 = (Checkable) view.findViewById(R.id.3k2);
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.2h0);
        this.f5600 = (TextView) view.findViewById(android.R.id.title);
        viewGroup.setOnClickListener(this);
        this.f5601 = c1432;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C1432 c1432 = (C1432) this.f5601;
        switch (c1432.f5595) {
            case 0:
                C1434 c1434 = (C1434) c1432.f5597;
                HashSet hashSet = (HashSet) c1432.f5598;
                int m6017 = m6017();
                if (m6017 == -1) {
                    return;
                }
                String charSequence = c1432.f5599[m6017].toString();
                if (hashSet.contains(charSequence)) {
                    hashSet.remove(charSequence);
                } else {
                    hashSet.add(charSequence);
                }
                MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) c1434.m4204();
                multiSelectListPreference.m845(new HashSet(hashSet));
                multiSelectListPreference.m826(new HashSet(hashSet));
                c1434.f5608 = hashSet;
                c1432.m6118();
                return;
            default:
                C1434 c14342 = (C1434) c1432.f5597;
                CharSequence[] charSequenceArr = c1432.f5599;
                int m60172 = m6017();
                if (m60172 == -1) {
                    return;
                }
                CharSequence charSequence2 = charSequenceArr[m60172];
                ListPreference listPreference = (ListPreference) c14342.m4204();
                if (m60172 >= 0) {
                    String charSequence3 = charSequenceArr[m60172].toString();
                    listPreference.m845(charSequence3);
                    listPreference.m823(charSequence3);
                    c1432.f5598 = charSequence2;
                }
                c14342.f11917.m6673();
                c1432.m6118();
                return;
        }
    }
}
