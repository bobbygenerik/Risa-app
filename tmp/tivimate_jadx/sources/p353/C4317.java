package p353;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import ar.tvplayer.tv.R;
import java.util.ArrayList;

/* renamed from: ᵔʾ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4317 extends BaseAdapter {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C4330 f16004;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f16005 = -1;

    public C4317(C4330 c4330) {
        this.f16004 = c4330;
        m8747();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        C4330 c4330 = this.f16004;
        MenuC4312 menuC4312 = c4330.f16096;
        menuC4312.m8721();
        int size = menuC4312.f15956.size();
        c4330.getClass();
        return this.f16005 < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f16004.f16100.inflate(R.layout.7am, viewGroup, false);
        }
        ((InterfaceC4304) view).mo28(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        m8747();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4329 getItem(int i) {
        C4330 c4330 = this.f16004;
        MenuC4312 menuC4312 = c4330.f16096;
        menuC4312.m8721();
        ArrayList arrayList = menuC4312.f15956;
        c4330.getClass();
        int i2 = this.f16005;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (C4329) arrayList.get(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8747() {
        MenuC4312 menuC4312 = this.f16004.f16096;
        C4329 c4329 = menuC4312.f15950;
        if (c4329 != null) {
            menuC4312.m8721();
            ArrayList arrayList = menuC4312.f15956;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((C4329) arrayList.get(i)) == c4329) {
                    this.f16005 = i;
                    return;
                }
            }
        }
        this.f16005 = -1;
    }
}
