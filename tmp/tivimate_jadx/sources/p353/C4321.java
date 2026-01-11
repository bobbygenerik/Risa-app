package p353;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* renamed from: ᵔʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4321 extends BaseAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f16021;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f16022;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final LayoutInflater f16023;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f16024 = -1;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MenuC4312 f16025;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f16026;

    public C4321(MenuC4312 menuC4312, LayoutInflater layoutInflater, boolean z, int i) {
        this.f16022 = z;
        this.f16023 = layoutInflater;
        this.f16025 = menuC4312;
        this.f16026 = i;
        m8752();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList m8734;
        boolean z = this.f16022;
        MenuC4312 menuC4312 = this.f16025;
        if (z) {
            menuC4312.m8721();
            m8734 = menuC4312.f15956;
        } else {
            m8734 = menuC4312.m8734();
        }
        return this.f16024 < 0 ? m8734.size() : m8734.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.f16023.inflate(this.f16026, viewGroup, false);
        }
        int i2 = getItem(i).f16091;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).f16091 : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f16025.mo8714() && i2 != i4) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        InterfaceC4304 interfaceC4304 = (InterfaceC4304) view;
        if (this.f16021) {
            listMenuItemView.setForceShowIcon(true);
        }
        interfaceC4304.mo28(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        m8752();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C4329 getItem(int i) {
        ArrayList m8734;
        boolean z = this.f16022;
        MenuC4312 menuC4312 = this.f16025;
        if (z) {
            menuC4312.m8721();
            m8734 = menuC4312.f15956;
        } else {
            m8734 = menuC4312.m8734();
        }
        int i2 = this.f16024;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (C4329) m8734.get(i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8752() {
        MenuC4312 menuC4312 = this.f16025;
        C4329 c4329 = menuC4312.f15950;
        if (c4329 != null) {
            menuC4312.m8721();
            ArrayList arrayList = menuC4312.f15956;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((C4329) arrayList.get(i)) == c4329) {
                    this.f16024 = i;
                    return;
                }
            }
        }
        this.f16024 = -1;
    }
}
