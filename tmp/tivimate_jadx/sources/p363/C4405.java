package p363;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: ᵔᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4405 implements AdapterView.OnItemClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C4411 f16385;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ AlertController$RecycleListView f16386;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4435 f16387;

    public C4405(C4411 c4411, AlertController$RecycleListView alertController$RecycleListView, C4435 c4435) {
        this.f16385 = c4411;
        this.f16386 = alertController$RecycleListView;
        this.f16387 = c4435;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C4411 c4411 = this.f16385;
        boolean[] zArr = c4411.f16405;
        AlertController$RecycleListView alertController$RecycleListView = this.f16386;
        if (zArr != null) {
            zArr[i] = alertController$RecycleListView.isItemChecked(i);
        }
        c4411.f16411.onClick(this.f16387.f16572, i, alertController$RecycleListView.isItemChecked(i));
    }
}
