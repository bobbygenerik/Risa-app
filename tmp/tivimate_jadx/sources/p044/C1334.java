package p044;

import android.view.View;
import android.widget.AdapterView;
import p137.C2254;
import p137.C2260;
import p137.C2290;

/* renamed from: ʽˊ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1334 implements AdapterView.OnItemClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f5128;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f5129;

    public /* synthetic */ C1334(int i, Object obj) {
        this.f5128 = i;
        this.f5129 = obj;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        CharSequence convertSelectionToString;
        switch (this.f5128) {
            case 0:
                C1321 c1321 = (C1321) this.f5129;
                C2254 c2254 = c1321.f5068;
                convertSelectionToString = c1321.convertSelectionToString(i < 0 ? !c2254.f8835.isShowing() ? null : c2254.f8832.getSelectedItem() : c1321.getAdapter().getItem(i));
                c1321.setText(convertSelectionToString, false);
                AdapterView.OnItemClickListener onItemClickListener = c1321.getOnItemClickListener();
                if (onItemClickListener != null) {
                    if (view == null || i < 0) {
                        view = !c2254.f8835.isShowing() ? null : c2254.f8832.getSelectedView();
                        i = !c2254.f8835.isShowing() ? -1 : c2254.f8832.getSelectedItemPosition();
                        j = !c2254.f8835.isShowing() ? Long.MIN_VALUE : c2254.f8832.getSelectedItemId();
                    }
                    onItemClickListener.onItemClick(c2254.f8832, view, i, j);
                }
                c2254.dismiss();
                return;
            default:
                C2260 c2260 = (C2260) this.f5129;
                C2290 c2290 = c2260.f8877;
                c2290.setSelection(i);
                if (c2290.getOnItemClickListener() != null) {
                    c2290.performItemClick(view, i, c2260.f8878.getItemId(i));
                }
                c2260.dismiss();
                return;
        }
    }
}
