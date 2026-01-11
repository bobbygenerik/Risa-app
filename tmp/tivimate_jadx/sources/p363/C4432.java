package p363;

import android.R;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: ᵔᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4432 extends ArrayAdapter {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C4411 f16540;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ AlertController$RecycleListView f16541;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4432(C4411 c4411, ContextThemeWrapper contextThemeWrapper, int i, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(contextThemeWrapper, i, R.id.text1, charSequenceArr);
        this.f16540 = c4411;
        this.f16541 = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        boolean[] zArr = this.f16540.f16405;
        if (zArr != null && zArr[i]) {
            this.f16541.setItemChecked(i, true);
        }
        return view2;
    }
}
